myDF <- read.csv("/class/datamine/data/airbnb/united-states/ca/los-angeles/2019-07-08/visualisations/neighbourhoods.csv")
tail(sort(tapply(myDF$number_of_reviews,myDF$host_id,sum)))
#The id 21013529 has received the largest number number of views.
tail(sort(tapply(myDF$number_of_reviews,myDF$neighbourhood,sum)))
#Venice is the neighbourhood that has received the largest number of review.
myDF <- read.csv("/class/datamine/data/flights/2019.csv")
myDF$myflightpath<-paste(myDF$ORIGIN,myDF$DEST)
tail(sort(tapply(myDF$DEP_DELAY,myDF$myflightpath,mean)))
#There is the longest averge departure delay between VPS to SRQ.
myDF <- read.delim("/class/datamine/data/election/itcont2020.txt",sep="|")
myDF$location <- paste(myDF$CITY,myDF$STATE)
donation <- tapply(myDF$TRANSACTION_AMT,myDF$location,sum)
#The variable donation is saved the total donation amount.
tail(sort(tapply(myDF$TRANSCATION_AMT,myDF$CMTE_ID,sum)))
#We use tapply to sum up the transaction amount for each committee ID.
#C00695585 C00000935 C00003418 C00618389 C00697441 C00010603
#19137654 23379977 37197362 16824028 30287380 37197362 

