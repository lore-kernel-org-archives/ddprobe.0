Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EE170818
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775372734; cv=none; b=STPIrC4LOs6BK0tpLzW4fFQ67O7UEha8cPO5kEjJhjotKsEYaXl7BgMxQHDWfH40dQdIBwKT5NNTlUPxwMkdweldEQC2ymMX/R4mroFDdaJT59vpEOoFB9WcBOi/bKaFvv6Joj4KpQwbwTziCIa2OqXMdxQl3sFCLrz3Y8UA/3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775372734; c=relaxed/simple;
	bh=IbhCXrTS7kuNWJcTc5a64cvlPGPKphwO+0TMzhYNGNM=;
	h=To:Subject:From:Message-Id:Date; b=Vm2YrzYcKDn3wD1g7hetBBIbqQqQ26ejuhKKzm/Nb5zP1Bp80UyGq/pY5hDhEUoRuB37wT/5mSpvdWGAQrkMrm4O+xoNihGeQ6z5/Pj0yvoffFEGdqNLrnZ5hfifjOPcOYLhMFJDnwlFRKwdbsyCdvJwoKBeZnEIjSV6B4iy3Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZf5C0PU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZf5C0PU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D532EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775372733;
	bh=IbhCXrTS7kuNWJcTc5a64cvlPGPKphwO+0TMzhYNGNM=;
	h=To:Subject:From:Date:From;
	b=VZf5C0PU67/hwxl009/n/YhEnmi55sbanG0CwgAqowO8cSxHjueMI1gByCK71KrHM
	 JArwrtb8Xr3/mAb8wXrBrewYaBK5AuecjpLwSBMQ/AePIT94H9J31xHdG58k9CQ0c6
	 jr5UzfZPATuOSFp906lmi/5u2Os/UVRiPadJF0dSvSvYNY0rb033cXvcze2IMALcPK
	 p3dPswe3Hy9oToo43YUMNgHEZW4zfL0YY1ukDymBzsv6Oyqaq+E7ptMMQfJOcfvWzX
	 sPeJKA2Uk8oSwwU6a/ZZY3CFcYAd2b1uDTBkjamwhGizCMGbCgdYHy+hAtAQVwykIp
	 dSULBJNYXZH9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD7CE64016
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 07:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537273375.11473.8312433916799964525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 563765862b01645f08de180d4a68168908830f4470db2401df30db0feb191e10
Date: Sun, 05 Apr 2026 07:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775372733
