public class TestData {    

	/** 
	 * Returns a JSON string for a test / sample import
	 **/
	public static String asJSON()
	{
		// Contestants for each race (overlooking the same qualifications time per race!)
		String contestants = 
			'"contestants" : [' +
				'{' +
					'"driverId" : "44",' +
					'"championshipPoints" : 44,' +
					'"dnf" : false,' +
					'"qualification1LapTime" : 123,' + 
					'"qualification2LapTime" : 124,' + 
					'"qualification3LapTime" : 125' + 
				'},' +
				'{' +
					'"driverId" : "100",' +
					'"championshipPoints" : 12,' +
					'"dnf" : false,' +
					'"qualification1LapTime" : 126,' + 
					'"qualification2LapTime" : 127,' + 
					'"qualification3LapTime" : 126' + 
				'},' +
				'{' +
					'"driverId" : "14",' +
					'"championshipPoints" : 52,' +
					'"dnf" : false,' +
					'"qualification1LapTime" : 121,' + 
					'"qualification2LapTime" : 122,' + 
					'"qualification3LapTime" : 125' + 
				'},' +
				'{' +
					'"driverId" : "22",' +
					'"championshipPoints" : 32,' +
					'"dnf" : false,' +
					'"qualification1LapTime" : 124,' + 
					'"qualification2LapTime" : 125,' + 
					'"qualification3LapTime" : 127' + 
				'},' +
				'{' +
					'"driverId" : "19",' +
					'"championshipPoints" : 2,' +
					'"dnf" : false,' +
					'"qualification1LapTime" : 124,' + 
					'"qualification2LapTime" : 125,' + 
					'"qualification3LapTime" : 127' + 
				'},' +
				'{' +
					'"driverId" : "7",' +
					'"championshipPoints" : 6,' +
					'"dnf" : false,' +
					'"qualification1LapTime" : 124,' + 
					'"qualification2LapTime" : 125,' + 
					'"qualification3LapTime" : 127' + 
				'},' +
				'{' +
					'"driverId" : "11",' +
					'"championshipPoints" : 23,' +
					'"dnf" : false,' +
					'"qualification1LapTime" : 124,' + 
					'"qualification2LapTime" : 125,' + 
					'"qualification3LapTime" : 127' + 
				'},' +
				'{' +
					'"driverId" : "4",' +
					'"championshipPoints" : 52,' +
					'"dnf" : false,' +
					'"qualification1LapTime" : 124,' + 
					'"qualification2LapTime" : 125,' + 
					'"qualification3LapTime" : 127' + 
				'}' +
			']';

		// Latest test data		
		return
			'{' +
				'"drivers" : [ ' +
					'{' +
						'"name" : "Lewis Hamilton",' + 
						'"nationality" : "British",' + 
						'"driverId" : "44",' + 
						'"twitterHandle" : "lewistwitter",' +
						'"fiaSuperLicense" : true' + 
					'},' +
					'{' +
						'"name" : "Rubens Barrichello",' + 
						'"nationality" : "Brazilian",' + 
						'"driverId" : "100",' + 
						'"twitterHandle" : "rubarrichello",' +
						'"fiaSuperLicense" : true' + 
					'},' +
					'{' +
						'"name" : "Fernando Alonso",' + 
						'"nationality" : "Spanish",' + 
						'"driverId" : "14",' + 
						'"twitterHandle" : "alo_oficial",' +
						'"fiaSuperLicense" : true' + 
					'},' +
					'{' +
						'"name" : "Jenson Button",' + 
						'"nationality" : "British",' + 
						'"driverId" : "22",' + 
						'"twitterHandle" : "JensonButton",' +
						'"fiaSuperLicense" : true' + 
					'},' +
					'{' +
						'"name" : "Felipe Massa",' + 
						'"nationality" : "Brazilian",' + 
						'"driverId" : "19",' + 
						'"twitterHandle" : "Felipe1Massa",' +
						'"fiaSuperLicense" : true' + 
					'},' +
					'{' +
						'"name" : "Kimi Räikkönen",' + 
						'"nationality" : "Finnish",' + 
						'"driverId" : "7",' + 
						'"twitterHandle" : "Kimi_Raikkonen",' +
						'"fiaSuperLicense" : true' + 
					'},' +
					'{' +
						'"name" : "Sergio Pérez",' + 
						'"nationality" : "Mexican",' + 
						'"driverId" : "11",' + 
						'"twitterHandle" : "schecoperez",' +
						'"fiaSuperLicense" : true' + 
					'},' +
					'{' +
						'"name" : "Max Chilton",' + 
						'"nationality" : "British",' + 
						'"driverId" : "4",' + 
						'"twitterHandle" : "MaxChilton",' +
						'"fiaSuperLicense" : true' + 
					'}' +
				'],' +
				'"seasons" : [ ' +
					'{' +
						'"year" : "2014",' +
						'"races" : [' +
							'{' +
								'"round" : 1,' +
								'"name" : "Spain",' +
								contestants + 
							'},' +
							'{' +
								'"round" : 2,' +
								'"name" : "Spa",' +
								contestants + 
							'},' +
							'{' +
								'"round" : 3,' +
								'"name" : "Silerstone",' +
								contestants + 
							'},' +
							'{' +
								'"round" : 4,' +
								'"name" : "Singapore",' +
								contestants + 
							'},' +
							'{' +
								'"round" : 5,' +
								'"name" : "Sochi",' +
								contestants + 
							'},' +
							'{' +
								'"round" : 6,' +
								'"name" : "Austin",' +
								contestants + 
							'},' +
							'{' +
								'"round" : 7,' +
								'"name" : "Budapest",' +
								contestants + 
							'},' +
							'{' +
								'"round" : 8,' +
								'"name" : "Monza",' +
								contestants + 
							'},' +
							'{' +
								'"round" : 9,' +
								'"name" : "Suzuka",' +
								contestants + 
							'},' +
							'{' +
								'"round" : 10,' +
								'"name" : "Shanghai",' +
								contestants + 
							'}' +
						']' + 
					'}' +
				']' +
			'}';
	}

	public static void resetTestSeason()
	{
		// Clear application data and empty recycle bin
		List<Season__c> seasons = [select id from Season__c];
		delete seasons;
		if(seasons.size()>0)
			Database.emptyRecycleBin(seasons);
		List<Driver__c> drivers = [select id from Driver__c];
		delete drivers;
		if(drivers.size()>0)
			Database.emptyRecycleBin(drivers);
		// Create a Test Season
		SeasonService.createTestSeason();
	}

	public static void purgeVolumeData(Boolean emptyRecycleBin)
	{
		if(emptyRecycleBin)
			Database.emptyRecycleBin([select id from RaceData__c LIMIT 10000 ALL ROWS]);
		else
			delete [select id from RaceData__c LIMIT 10000];
	}

	public static void createVolumeData(Integer season, String race, Integer maxLaps, Integer numberOfSectors)
	{
		// List of Drivers
		List<String> driverIds = new List<String>();
		for(Driver__c driver : [select DriverId__c from Driver__c])
			driverIds.add(driver.DriverId__c);

		// Create Race Data
		List<RaceData__c> raceData = new List<RaceData__c>();
		for(Integer lapIdx = 1; lapIdx<=maxLaps; lapIdx++)
		{
			for(Integer driverIdx = 0;driverIdx<driverIds.size(); driverIdx++)
			{
				if(lapIdx == 20 || lapIdx == 38)
					raceData.add(
						new RaceData__c(
							Type__c = 'Pitstop Time',
							Value__c = 20 * Math.random(),
							Lap__c = lapIdx,
							Sector__c = 0,
							Year__c = season,
							RaceName__c = race,
							DriverId__c = driverIds[driverIdx]));						
				for(Integer sectorIdx = 1; sectorIdx<=numberOfSectors; sectorIdx++)
				{
					raceData.add(
						new RaceData__c(
							Type__c = 'Sector Time',
							Value__c = 20 * Math.random(),
							Lap__c = lapIdx,
							Sector__c = sectorIdx,
							Year__c = season,
							RaceName__c = race,
							DriverId__c = driverIds[driverIdx]));
					raceData.add(
						new RaceData__c(
							Type__c = 'Fuel Level',
							Value__c = (maxLaps - lapIdx) * 10,
							Lap__c = lapIdx,
							Sector__c = sectorIdx,
							Year__c = season,
							RaceName__c = race,
							DriverId__c = driverIds[driverIdx]));
					raceData.add(
						new RaceData__c(
							Type__c = 'Oil Presure',
							Value__c = 100 * Math.random(),
							Lap__c = lapIdx,
							Sector__c = sectorIdx,
							Year__c = season,
							RaceName__c = race,
							DriverId__c = driverIds[driverIdx]));
					raceData.add(
						new RaceData__c(
							Type__c = 'Engine Temperature',
							Value__c = 100 * Math.random(),
							Lap__c = lapIdx,
							Sector__c = sectorIdx,
							Year__c = season,
							RaceName__c = race,
							DriverId__c = driverIds[driverIdx]));
					raceData.add(
						new RaceData__c(
							Type__c = 'Tyre Temperature',
							Value__c = 100 * Math.random(),
							Lap__c = lapIdx,
							Sector__c = sectorIdx,
							Year__c = season,
							RaceName__c = race,
							DriverId__c = driverIds[driverIdx]));
					raceData.add(
						new RaceData__c(
							Type__c = 'Track Temperature',
							Value__c = 100 * Math.random(),
							Lap__c = lapIdx,
							Sector__c = sectorIdx,
							Year__c = season,
							RaceName__c = race,
							DriverId__c = driverIds[driverIdx]));
				}
			}
		}
		insert raceData;
	}

	public static void createVolumeDataForViewStateTest()
	{
		// Create a big race!
		List<Driver__c> drivers = new List<Driver__c>();
		for(Integer driverIdx = 0; driverIdx < 50; driverIdx++)
			drivers.add(
				new Driver__c(
					Name = 'Driver #' + driverIdx, 
					DriverId__c = '#' + driverIdx,
					TwitterHandle__c = 'twitter' + driverIdx));

		// Create records
		fflib_ISObjectUnitOfWork uow = Application.UnitOfWork.newInstance();
		Season__c season = new Season__c(Name = 'Volume Test', Year__c = '2015');
		Race__c race = new Race__c(Name = 'Volume Race');
		uow.registerNew(season);
		uow.registerNew(race, Race__c.Season__c, season);
		for(Driver__c driver : drivers)
		{
			uow.registerNew(driver);
			Contestant__c contestant = new Contestant__c();
			uow.registerNew(contestant, Contestant__c.Race__c, race);
			uow.registerRelationship(contestant, Contestant__c.Driver__c, driver);
		}
		uow.commitWork();
	}	
}