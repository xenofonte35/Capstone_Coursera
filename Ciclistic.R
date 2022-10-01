library(tidyverse)
library(lubridate)  
library(ggplot2)
library(readr)
library(data.table)
# 1. Document description
# 2. Combine datasets 
X202004_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202004-divvy-tripdata.csv")
April_2020<-X202004_divvy_tripdata
X202005_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202005-divvy-tripdata.csv")
May_2020<-X202005_divvy_tripdata
X202006_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202006-divvy-tripdata.csv")
June_2020<-X202006_divvy_tripdata
X202007_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202007-divvy-tripdata.csv")
July_2020<-X202007_divvy_tripdata
X202008_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202008-divvy-tripdata.csv")
Aug_2020<-X202008_divvy_tripdata
X202009_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202009-divvy-tripdata.csv")
Sep_2020<-X202009_divvy_tripdata
X202010_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202010-divvy-tripdata.csv")
Oct_2020<-X202010_divvy_tripdata
X202011_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202011-divvy-tripdata.csv")
Nov_2020<-X202011_divvy_tripdata
X202012_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202012-divvy-tripdata.csv")
Dec_2020<-X202012_divvy_tripdata
X202101_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202101-divvy-tripdata.csv")
Jan_2021<-X202101_divvy_tripdata
X202102_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202102-divvy-tripdata.csv")
Feb_2021<-X202102_divvy_tripdata
X202103_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202103-divvy-tripdata.csv")
March_2021<-X202103_divvy_tripdata
X202104_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202104-divvy-tripdata.csv")
April_2021<-X202104_divvy_tripdata
X202105_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202105-divvy-tripdata.csv")
May_2021<-X202105_divvy_tripdata
X202106_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202106-divvy-tripdata.csv")
June_2021<-X202106_divvy_tripdata 
X202107_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202107-divvy-tripdata.csv")
July_2021<-X202107_divvy_tripdata
X202108_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202108-divvy-tripdata.csv")
Aug_2021<-X202108_divvy_tripdata
X202109_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202109-divvy-tripdata.csv")
Sep_2021<-X202109_divvy_tripdata
X202110_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202110-divvy-tripdata.csv")
Oct_2021<-X202110_divvy_tripdata
X202111_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202111-divvy-tripdata.csv")
Nov_2021<-X202111_divvy_tripdata
X202112_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202112-divvy-tripdata.csv")
Dec_2021<-X202112_divvy_tripdata
X202201_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202201-divvy-tripdata.csv") <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202201-divvy-tripdata.csv")
Jan_2022<-X202201_divvy_tripdata
X202202_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202202-divvy-tripdata.csv")
Feb_2022<-X202202_divvy_tripdata
X202203_divvy_tripdata <- read_csv("Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle/202203-divvy-tripdata.csv")
March_2022<-X202203_divvy_tripdata
#Check structure of data
names(April_2020)
names(May_2020)
str(April_2020)
str(May_2020)
#change string types
April_2020 <- mutate(
  April_2020, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
May_2020 <- mutate(
  May_2020, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
June_2020 <- mutate(
  June_2020, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
July_2020 <- mutate(
  July_2020, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Aug_2020 <- mutate(
  Aug_2020, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Sep_2020 <- mutate(
  Sep_2020, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Oct_2020 <- mutate(
  Oct_2020, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Nov_2020 <- mutate(
  Nov_2020, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Dec_2020 <- mutate(
  Dec_2020, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Jan_2021 <- mutate(
  Jan_2021, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Feb_2021 <- mutate(
  Feb_2021, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
April_2021 <- mutate(
  April_2021, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
May_2021 <- mutate(
  May_2021, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
June_2021 <- mutate(
  June_2021, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
July_2021 <- mutate(
  July_2021, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Aug_2021 <- mutate(
  Aug_2021, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Sep_2021 <- mutate(
  Sep_2021, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Oct_2021 <- mutate(
  Oct_2021, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Nov_2021 <- mutate(
  Nov_2021, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Dec_2021 <- mutate(
  Dec_2021, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Jan_2022 <- mutate(
  Jan_2022, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
Feb_2022 <- mutate(
  Feb_2022, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
March_2022 <- mutate(
  March_2022, 
  start_station_id = as.character(start_station_id),
  end_station_id = as.character(end_station_id)
)
# 2.4 Merge datasets
all_trips <- bind_rows(
  April_2020,May_2020,June_2020,July_2020,Aug_2020,Sep_2020,Oct_2020,Nov_2020,
  Dec_2020,Jan_2021,Feb_2021,April_2021,May_2021,June_2021,July_2021,Aug_2021,
  Sep_2021,Oct_2021,Nov_2021,Dec_2021,Jan_2022,Feb_2022,March_2022)
# 3 Prepare dataset
# 3.1 Change date string types 
all_trips$started_at <- as.POSIXct(
  all_trips$started_at, 
  format = "%Y-%m-%d %H:%M:%S"
)
#Change ended_at string type
all_trips$ended_at <- as.POSIXct(
  all_trips$ended_at, 
  format = "%Y-%m-%d %H:%M:%S"
)
# Order by date 
all_trips <- all_trips %>%
  arrange(started_at)
# 3.2 Calculate ride length
#Ride length as a number string type will not only be useful for future analysis 
#but will also help to identify if there are any invalid data points,
#i.e. ride lengths which are less than 0
# Calculate time difference in seconds 
all_trips$ride_length <- difftime(
  all_trips$ended_at, 
  all_trips$started_at,
  units = "secs"
) 
#Change string type to numeric
all_trips$ride_length <- as.numeric(
  as.character(all_trips$ride_length)
)
# 3.3 Summarise by date variables
# Separate columns for year, month, day of week etc. will be useful for future analysis.
#Year
all_trips$year <- format(
  all_trips$started_at, 
  "%Y"
)
# Month
all_trips$month <- format(
  all_trips$started_at, 
  "%m"
)
# Week
all_trips$week <- format(
  all_trips$started_at,
  "%W"
)
# Day
all_trips$day <- format(
  all_trips$started_at, 
  "%d"
)
# day of the week
all_trips$day_of_week <- format(
  all_trips$started_at, 
  "%A"
)
# Date, YYYY-MM-DD
all_trips$YMD <- format(
  all_trips$started_at, 
  "%Y-%m-%d"
)
# Time of Day, HH:MM:SS
all_trips$ToD <- format(
  all_trips$started_at, 
  "%H:%M:%S"
)
#4. Clean dataset 
#As identified in section 3.2 there were a few invalid data points with ride lengths less than 0. 
#These data points should be deleted from the cleaned dataset. 
# Remove ride lengths < 0
all_trips_cleaned <- all_trips %>%
  filter(!(ride_length < 0))
# 4.2 Remove incomplete rows 
#There were a few instances where there were no recorded station names. 
#These incomplete rows of data should be removed.
# Remove start_station_name and end_station_name blank results 
all_trips_cleaned <- all_trips_cleaned %>%
  filter(
    !(is.na(start_station_name) |
        start_station_name == "")
  ) %>% 
  filter(
    !(is.na(end_station_name) |
        end_station_name == "")
  )
# 4.3 Remove tests
#On further inspection of the all_trips_cleaned dataset within 
#the R console, there were a few station names that are fully 
#capitalized text strings instead of adhering to the starting 
#capital letter followed by all lowercase letters string type. 
#In addition, it appeared that the capitalized 
#station names include the word 'TEST' within their string. 
#This observation that test rides have been coded as all 
#capital letters as their station_name was explored using 
#the following code:

# Create a data frame to check if capitalized station names are test ride
capitalized_station_name_check <- all_trips_cleaned %>%
  
  filter(
    str_detect(start_station_name, "[:upper:]")
    & !str_detect(start_station_name,"[:lower:]")
  ) %>%
  
  group_by(
    start_station_name
  ) %>%
  
  count(
    start_station_name
  )
#through further exploration of the identified capitalized station name row outputs using the R console, it appeared that the capitalized station name results were for test and maintenance purposes. 
#These results should be removed from the all_trips_cleaned dataset.

# Remove capitalized station name results from the cleaned dataset 
all_trips_cleaned <- all_trips_cleaned %>%
  filter(
    !(str_detect(start_station_name, "[:upper:]")
      & !str_detect(start_station_name, "[:lower:]"))
  )
# 4.4 Remove duplicates 
#The ride_id column is unique to each ride. This column should be reviewed to see
#if there are any duplicates to delete

#Create a data frame to check that there are no duplicates
ride_id_check <- all_trips_cleaned %>%
  count(ride_id) %>%
  filter(n > 1)
#he above code returned no results, 
#no duplicates are recorded in the cleaned dataset.
#5.Understand dataset
# 5.1 Check rideable type 
unique(all_trips_cleaned$rideable_type)

#the above line of code returned three bike types used in the cleaned dataset. The following code was ran to review 
#if a bike type was added to the dataset at a later date.
#Create a data frame to see when a unique bike type was added to the dataset
rideable_type_check <-all_trips_cleaned %>%
  
  mutate(
    year = year(started_at), 
    month = month(started_at)
  ) %>%
  
  group_by(
    month, 
    year
  ) %>%
  
  select(
    rideable_type, 
    month, 
    year
  ) %>%
  
  count(
    rideable_type
  )
#The rideable type check output within the R console showed that "classic_bikes" were added to the dataset from December 2020 onwards. 
#This should be noted for future analysis purposes.
#Firstly, a data frame which lists the unique station names
#should be created.

# Create a data frame which lists the unique station names 
station_name_check <- all_trips_cleaned %>%
  group_by(start_station_name) %>%
  count(start_station_name) 
#Following this, data frames which list the unique 
#station names used each month should be created.

#April 2020 data frame which lists the unique station names used that month
April_2020_filter <- all_trips_cleaned %>%
  filter(
    month == "04"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
May_2020_filter <- all_trips_cleaned %>%
  filter(
    month == "05"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
June_2020_filter <- all_trips_cleaned %>%
  filter(
    month == "06"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
July_2020_filter <- all_trips_cleaned %>%
  filter(
    month == "07"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Aug_2020_filter <- all_trips_cleaned %>%
  filter(
    month == "08"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Sep_2020_filter <- all_trips_cleaned %>%
  filter(
    month == "09"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Oct_2020_filter <- all_trips_cleaned %>%
  filter(
    month == "10"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Nov_2020_filter <- all_trips_cleaned %>%
  filter(
    month == "11"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Dec_2020_filter <- all_trips_cleaned %>%
  filter(
    month == "12"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Jan_2021_filter <- all_trips_cleaned %>%
  filter(
    month == "01"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Feb_2021_filter <- all_trips_cleaned %>%
  filter(
    month == "02"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
March_2021_filter <- all_trips_cleaned %>%
  filter(
    month == "03"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
April_2021_filter <- all_trips_cleaned %>%
  filter(
    month == "04"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
May_2021_filter <- all_trips_cleaned %>%
  filter(
    month == "05"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
June_2021_filter <- all_trips_cleaned %>%
  filter(
    month == "06"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
July_2021_filter <- all_trips_cleaned %>%
  filter(
    month == "07"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Aug_2021_filter <- all_trips_cleaned %>%
  filter(
    month == "08"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Sep_2021_filter <- all_trips_cleaned %>%
  filter(
    month == "09"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Oct_2021_filter <- all_trips_cleaned %>%
  filter(
    month == "10"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Nov_2021_filter <- all_trips_cleaned %>%
  filter(
    month == "11"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Dec_2021_filter <- all_trips_cleaned %>%
  filter(
    month == "12"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Jan_2022_filter <- all_trips_cleaned %>%
  filter(
    month == "01"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
Feb_2022_filter <- all_trips_cleaned %>%
  filter(
    month == "02"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
March_2022_filter <- all_trips_cleaned %>%
  filter(
    month == "03"
  ) %>%
  group_by(
    start_station_name
  ) %>%
  count(
    start_station_name
  )
#Each unique station name can be tested against the monthly filter data frames to assess 
#which unique station was used in a particular month.

# Create columns for each month in the station name check data frame to check if the station name appears in the individual 
# month filter data frames created earlier
station_name_check$April_2020 <- as.integer(station_name_check$start_station_name
                                          %in% April_2020_filter$start_station_name)
station_name_check$May_2020 <- as.integer(station_name_check$start_station_name
                                            %in% May_2020_filter$start_station_name)
station_name_check$June_2020 <- as.integer(station_name_check$start_station_name
                                            %in% June_2020_filter$start_station_name)
station_name_check$July_2020 <- as.integer(station_name_check$start_station_name
                                            %in% July_2020_filter$start_station_name)
station_name_check$Aug_2020 <- as.integer(station_name_check$start_station_name
                                            %in% Aug_2020_filter$start_station_name)
station_name_check$Sep_2020 <- as.integer(station_name_check$start_station_name
                                            %in% Sep_2020_filter$start_station_name)
station_name_check$Oct_2020 <- as.integer(station_name_check$start_station_name
                                            %in% Oct_2020_filter$start_station_name)
station_name_check$Nov_2020 <- as.integer(station_name_check$start_station_name
                                            %in% Nov_2020_filter$start_station_name)
station_name_check$Dec_2020 <- as.integer(station_name_check$start_station_name
                                            %in% Dec_2020_filter$start_station_name)
station_name_check$Jan_2021 <- as.integer(station_name_check$start_station_name
                                            %in% Jan_2021_filter$start_station_name)
station_name_check$Feb_2021 <- as.integer(station_name_check$start_station_name
                                            %in% Feb_2021_filter$start_station_name)
station_name_check$March <- as.integer(station_name_check$start_station_name
                                            %in% March_2021_filter$start_station_name)
station_name_check$April_2021 <- as.integer(station_name_check$start_station_name
                                            %in% April_2021_filter$start_station_name)
station_name_check$May_2021 <- as.integer(station_name_check$start_station_name
                                            %in% May_2021_filter$start_station_name)
station_name_check$June_2021 <- as.integer(station_name_check$start_station_name
                                            %in% June_2021_filter$start_station_name)
station_name_check$July_2021 <- as.integer(station_name_check$start_station_name
                                            %in% July_2021_filter$start_station_name)
station_name_check$Aug_2021 <- as.integer(station_name_check$start_station_name
                                            %in% Aug_2021_filter$start_station_name)
station_name_check$Sep_2021 <- as.integer(station_name_check$start_station_name
                                            %in% Sep_2021_filter$start_station_name)
station_name_check$Oct_2021 <- as.integer(station_name_check$start_station_name
                                            %in% Oct_2021_filter$start_station_name)
station_name_check$Nov_2021 <- as.integer(station_name_check$start_station_name
                                            %in% Nov_2021_filter$start_station_name)
station_name_check$Dec_2021 <- as.integer(station_name_check$start_station_name
                                            %in% Dec_2021_filter$start_station_name)
station_name_check$Jan_2022 <- as.integer(station_name_check$start_station_name
                                            %in% Jan_2022_filter$start_station_name)
station_name_check$Feb_2022 <- as.integer(station_name_check$start_station_name
                                            %in% Feb_2022_filter$start_station_name)
station_name_check$March_2022 <- as.integer(station_name_check$start_station_name
                                            %in% March_2022_filter$start_station_name)
#Add sum column
station_name_check$count <- rowSums(station_name_check[,3:19])

#f we filter the station_name_check data frame by count < 12 it highlights that there are a few stations which have been added and/or removed from Cyclistic's portfolio between August 2020 and July 2021 as well as help identify which stations were not used in a particular month. 

#The following two data frames were then created to review which stations
#were most likely added (check_A) or removed (check_B) from 
#Cyclistic's portfolio during the analysis period. 
#Two months were used in each filter in order to avoid any 
#anomalies whereby a station was simply not used for the month 
#instead of the station being completely removed or added to 
#Cyclistic's portfolio.

#Check A
station_name_check_A <- station_name_check %>%
  filter(
    Aug_2020<1 & Sep_2020<1
  )
#Check B
station_name_check_B <- station_name_check %>%
  filter(
    July_2021<1 & June_2021<1
  )
#The returned data frames showed that there are a few stations which have been added or removed from Cyclistic's portfolio. For example, station_name_test_A showed that Avenue L & 114th St was only 
#used 5 times and used from the month of July 2021 onwards. 
#For future analysis purposes, it should be noted that there 
#are a few stations which have most likely been added or 
#removed from Cyclistic's portfolio during the analysis period.
#6. Save the dataset
# 6.1 Save the cleaned dataset
#The cleaned dataset should be saved as a csv.

fwrite(all_trips_cleaned, "~/GG.CSV")
  #"iCloud Drive:Library/Mobile Documents/com~apple~CloudDocs/R/Portafolio_coursera_sep22/Bicicle", 
  #col.names = TRUE,
  #row.names = FALSE
#)









