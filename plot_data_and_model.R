#Script to plot data and model

library(ggplot2)
growth_data <- read.csv("experiment.csv")

logistic_fun <- function(t) {
  
  N <- (N0*K*exp(r*t))/(K-N0+N0*exp(r*t))
  
  return(N)
  
}

N0 <- exp(6.889e+00) #initial size of population intercept from the 1st dataset
  
r <- 1.002e-02 #growth rate t from first dataset
  
K <-  6.00e+10 #carrying capacity intercept for 2nd dataset

ggplot(aes(t,N), data = growth_data) +
  
  geom_function(fun=logistic_fun, colour="red") +
  
  geom_point()

  scale_y_continuous(trans='log10')


