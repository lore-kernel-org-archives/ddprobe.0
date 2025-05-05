Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CBB1A316A
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746445194; cv=none; b=PLXI8qWkwsi18A2D4L0JP5D48tdWO/bDSUlHRLEv6aMeupPp9901da6ViuZXotw4a13iEviXx1VRKxPZ0es0REzRaIC70euW6Cj1L2/Z4+t+2ehGdCmL7gn7+94oNudgGQO2ha7sNLPj630K83LWGqMcPhRLxaybIL8x9EKjfPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746445194; c=relaxed/simple;
	bh=e4DHkDltAyb/jvRG4f/5LW4SWrVNHBn/b2iDNuDuXQ4=;
	h=To:Subject:From:Message-Id:Date; b=PPcaWzQejs/3aCCuYZUmvu4kAmmTN1N1nPiVGADVidDgVDypI0oeyygkZrYqXodYn3inQQC3acU6SHAigd4XD4BYkeeKre5bJ4RAierFtg9T6l8beEZVGDf+aAiaH4g/lxPvMhpVPyZoJHbK0j9C2VfoZSIWmWvUyqi8kfcI7xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPImL4Hb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPImL4Hb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDA5C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746445193;
	bh=e4DHkDltAyb/jvRG4f/5LW4SWrVNHBn/b2iDNuDuXQ4=;
	h=To:Subject:From:Date:From;
	b=qPImL4HbisbFnTwiwMEc9isdATEU14mFG4RYXJE0UC742oMUTDKi4tHx39eZtb2Z3
	 hwHJ2Pwl6+84dZY/FQ+9G/azUBYpsB/DrwKRMPNCPk4FbnZno70QW28Mr/3w41/p0E
	 jbKnou9B6s6Z79wwu6xLadvjfC5epnGua2MqSnVeC40ZtasiLvnAvi1x9ijndP2i5J
	 pJ9U95/MRXrl/KTL+vk2/Q07L6FO3Q1DY5XevKRezgQ3IpmG0lN/IHtfVnqE6W6PEV
	 EL02WBXku2X6iifxR/n941b3d8IrA1YZv2qO6x7EuZIGI/ya4JDJWr84VUa6DRHvfK
	 qOaxlUFuXsQ3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1A1C3ABB6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174644519357.7091.18108199573375553740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1e362a7cb2769a3c06d0c3f56a094cba34bc15c6c347d40441e5b889c525a9
Date: Mon, 05 May 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746445193
