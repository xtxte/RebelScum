float rad;    //radius of circle
float crad;   //distance to orbit
PVector vCent, vMouse;
float angle1; 
final float half=0.5;
int step;
float stepAngle;
final float twelve=12;
float cxubx;
float cyubx;
float ccx;

   void setup() {
  fullScreen();
  fill(255);
  rad=50;
  crad=rad*5;
  vCent= new PVector(0, -height*half); //Straight upwards
  ccx=half*width;
   }

 void draw() { 
  background(0); 
  translate(width/2, height/2);
  vMouse= new PVector(mouseX-width/2, mouseY-height/2);
  fill(#FFB803);
  ellipse(mouseX-half*width, mouseY-half*height, rad, rad);
  angle1=(mouseX<=ccx) ? 360-degrees(PVector.angleBetween(vCent, vMouse)) : degrees(PVector.angleBetween(vCent, vMouse));

  step=int(map(angle1, 0, 360, 0, twelve)); //dividing 360 degrees into 12 steps

  if (step==12) { 
    step=0;
  }
  stepAngle=((step / twelve) * TWO_PI);

  cxubx=crad*cos(stepAngle-HALF_PI);
  cyubx=crad*sin(stepAngle-HALF_PI);
  fill(#2303FF);
  ellipse(cxubx, cyubx, rad, rad);

  fill(255);
  textSize(34);
  text("mouseangle;"+angle1, 100, 100);
  text("step:"+step, 100, 150);
  text("stepangle:"+degrees(stepAngle), 100, 200);
}