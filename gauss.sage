class GaussianRational:
    """
    Added def__mul__(self, right):
    
    and
    
    def length(self):
    
    
    Example:
    sage: GaussianRational(2, 2).length()
          2.82842712474619
    
    sage: GaussianRational(2, 2) * GaussianRational(1, 2)
          -2 + 6*i
    
    """
    def __init__(self, x, y):
        self.x = QQ(x)
        self.y = QQ(y)
    def __repr__(self):
        return "%s + %s*i"%(self.x,self.y)
    def __add__(self, right):
        """Add together two numbers. (add a docstring)"""
        return GaussianRational(self.x+right.x, self.y+right.y)
    def __sub__(self, right):
        return GaussianRational(self.x-right.x, self.y-right.y)
    def __mul__(self, right):
        return GaussianRational(self.x*right.x - self.y*right.y, right.x*self.y + self.x*right.y)
    def __crazy__(self, crazy):
        return 'Im crazy'
    def length(self):
        return ((self.x**2 + self.y**2)**0.5)