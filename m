Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3391BC58
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751177994; cv=none; b=iTl1QfReXunAKlucY0S+ivbpN/0PdKH8D73vwnkbZvoT6JFmVJyAdNHHWPsJKmVrLgg4zhA52mpw3IvW/2m19hQMnV+OBjnAyAobjWUPj9J5aJwIZPTnopF9ynBvH7qGpE3btYEe//6BsVD31oXMzH0SS5+gbVjdCKcq5nv2RQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751177994; c=relaxed/simple;
	bh=EjoRBiNWM8JIRIsIEpwocr+LiSFazhzIddxEWu8Vw9M=;
	h=To:Subject:From:Message-Id:Date; b=dbIwJPDhgafG7pRQYZ1b3UnNDDekhKEWS/aTEKRZjWH+wcbKRmAF13bnyLAbOX4xu8Wzy5w/wRKw7lxsaarSxP9RnIOx4/A/dJJmBCKS5LqEDLFx8CueceIqqHRW79fljt5YQaoAW0Gd0/3pe772zDIfA1yWSs4hfqmHvpqP/D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUuniQC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUuniQC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3261C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751177993;
	bh=EjoRBiNWM8JIRIsIEpwocr+LiSFazhzIddxEWu8Vw9M=;
	h=To:Subject:From:Date:From;
	b=PUuniQC4njCzs8GdFoxPZ8YwOy7yO+q9L4ekJ3d4CXalxQxt0nd49lAcUP4wWNj4k
	 SncjVJqiSg3LEO7pi2bVJPcZUnvD/gnRSKJByfzelxAFyGjAWSO/iNFNIujRK2Tni2
	 F1crdb69jg9jkA168X9APVu/GFWegx9i1+uDpIzeQzkCjCyZ6uGp1+FC/iELOgMlrS
	 osnaFgvjDkOJkKC5IlRqDyqTWn6JLK00aZLfRyKOYcW6Hh5QKLJ+BD/modBJq0dyxQ
	 2b877NWR3Wr8YJjdziUkybgCYsIoO4nAxVcnYi59TRSlq5smlyzvVD2v4VAPXuFWgu
	 D7+2W/zpjIeCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ADBC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175117799357.8728.16532496928923014833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a445459e021ff4fcb3078994580e12eaae1c33353952def60cf4adcefcf3ac6
Date: Sun, 29 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751177993
