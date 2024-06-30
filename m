Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D37F1E864
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719716063; cv=none; b=THseyN216gfbuFkGpA1lM64ZDcj0rT3tii3jQuBfGzJas3teDI9gTLknrQbs7x3pTw2pu5NAbapdaKVCIaU7ksUiA0TvL7kH1VQZcurpUMMlWOMZ85jysVT+xlH7WuJTHum3k4PZGG685fEVwgAMPW0KWtMmhKGi3TasLh7rcSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719716063; c=relaxed/simple;
	bh=f7xZiHwvEcUNXb3gMjh5zB4qZsdfluSZmrigXR/76wM=;
	h=To:Subject:From:Message-Id:Date; b=agjB3Fd+WpZ984F8vppMzPDa+kdggXuFC6tclSSOOYKcTMAKwDCPZXiTGm1N+sUo3tCSD2u49w4ntSbOFGJB1EGWOFAxQEKj6YNLBqAxNjpVlhewab5EHSJUbdngmZlvGaRhTzXCwG0KyFFrwuGutRO+JlNs1B9ujLpQgNXzxE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mW1HP6a1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mW1HP6a1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC770C4AF09
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719716063;
	bh=f7xZiHwvEcUNXb3gMjh5zB4qZsdfluSZmrigXR/76wM=;
	h=To:Subject:From:Date:From;
	b=mW1HP6a1n6vrbi/rJ1+wK4SfpsjHossg84lPx4I3d7IkGhh+twEZYJN5DR4kunKA2
	 h2gOOxtj/PHyCnOcktVJgYa4u9Cx0AxOg/INKjjEevd9BYVCZLPzRugDOT9zN3/niJ
	 jRiSQt5Q2uR8MJ/6DSgZ78OGk2ot4NyOEktUxQq3Rneya2OWiEd+IdMIIU3WyW79LV
	 Kt7k3Muu8GyMuhEcN4XVw2iKM6kzWdOawm2JHYHmokbG5IphBcYP1b7i8fnW9UznGF
	 erySSj4vdJr9v9TxeIU7Qo9z3zoSUCAx6UoyIK+RFp4G7skU7zAQAyYg8qzUNXpDGy
	 uRH/OxPe35vhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4983C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 02:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171971606282.14840.15050910049264269056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7153d424e01fbd89e54551d86b46b6988abc2947fc988eb900c5b6d99aa4b24
Date: Sun, 30 Jun 2024 02:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719716062
