Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60FC19E97A
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757666393; cv=none; b=AF393EeQqLzpMSva/l/w+hr8OH/fk4u4cnP5k9PrCDDMpwTkZO7KX9mzl1uPFZ21shNAlIOpqVn8ZbWHWr+wJNtFvkw78R4QlS+0JGjbasXI2j14ZXWwwVFcQiudNI9/MYu9MioYdergh2JpqzHDJ/sSDIp0kS8x6nTpbQuXv9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757666393; c=relaxed/simple;
	bh=epi9CmdfUyZctcYyQfcEpYv0IeZntLXsJnPm7ApXe3M=;
	h=To:Subject:From:Message-Id:Date; b=RwxariXPvLMHaYvtikrJAoWHWh/v+5Ozi0g9FKMz9lCdguEfXjoE0q3eq7llN0+ZZe9odsU8Lw7arADNd3sC3cun91+ZDTbLHA40ps+hzTh7TU9PjAkG89cOc2pZVGmfiJ/HBorD2ged1fFWeVNO8yAaejk4ZrYjStc2zIuHE9w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=paJPKEW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="paJPKEW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D6EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757666393;
	bh=epi9CmdfUyZctcYyQfcEpYv0IeZntLXsJnPm7ApXe3M=;
	h=To:Subject:From:Date:From;
	b=paJPKEW9lvHqcLb0LSUYid36A1DqDY2iHEA3Z93qy1VMfinXrnAWo0wn4WQYkFw4b
	 nZf6CMGOqjCFhzwv5RjF3HRqzdxA0SC5CCuD6K7zV1GEsA8DVLEsA/yBdYP3vPgrOK
	 VAMy3U0a8ZcFQFSpyqllzy5fvVMnUfYixCa+etqltPZAzUR+8RQVrmQj9MVHAbpK5m
	 Ib97z3ia415K9YlW3wyx3AgmAZHk9dndUeREVWKJruTXQSln1mrDKLATjvo+fW6d/+
	 RV3LBhaGAN0hQHNB757dekyW4zIZMr2TqcCnqGo2mq//tLOSub/sLfUHK5KrCvNh/W
	 uKA1J98e4PDog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9319BCA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766639358.27973.15618177742480441241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aafbd6eaebf1476211faec516696f667a9d301b78ed948fdca2c25a4fcbf6ccb
Date: Fri, 12 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757666393
