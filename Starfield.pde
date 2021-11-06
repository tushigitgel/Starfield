class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle()
  {
    myX = myY = 400;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*50), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void move()
  {
    myX = myX + Math.cos(myAngle)* mySpeed;
    myY = myY + Math.sin(myAngle)* mySpeed;
    if(myX > 810){
      myX = 400;
    }
    if(myX < -10){
      myX = 400;
    }
    if(myY > 810){
      myY = 400;
    }
    if(myY < -10){
      myY = 400;
    }
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5);
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = myY = 400;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*5;
    myColor = color((int)(Math.random()*50), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void move()
  {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
    if(myX > 790){
      myX = 400;
    }
    if(myX < 10){
      myX = 400;
    }
    if(myY > 790){
      myY = 400;
    }
    if(myY < 10){
      myY = 400;
    }
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 50, 50);
  }
}


Particle [] p = new Particle[1500];

void setup(){
   size (800,800);
   noStroke();
   for(int i = 0; i < p.length; i++){
      p[i] = new Particle(); 
      p[0] = new OddballParticle();
   }
}
void draw(){
  background(0);
  for(int i = 0; i < p.length; i++){
    p[i].show();
    p[i].move();
  }
}


