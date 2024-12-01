Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4517722612
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733096754; cv=none; b=I/fdTGLGGuZW9vo2a5Uky/EL4MmkbxRWPG9+/A6GQMB7/+rv9ssSIOSShIP653Oxi+prvLS11AW6IFn3EfFYm6NRoaJXWAg9ESBbdsbSo5/bsOVCGHlTfY1zlZP2i5PuYXBZxiy1wW8e8rBGWcgtxLD1MYOX3a2JDu2gn9f8zk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733096754; c=relaxed/simple;
	bh=FR0CvG5D0p0gkDVh2sqJ/WHClbVZyCMFE12hF2qKJ7M=;
	h=To:Subject:From:Message-Id:Date; b=fSm077xKu1f+j5191pyDog5l4XVfIySTTFxmcziWvE9b9kGDm8So5jeDdcBYY/COuVuJkdPBGqWNTgts5W5ZX+aIun/d+waoXSnLvVKZxRTdgU91jBFnDrFBnJ9NwGl1B0SCbS7LGl0hH8XXl0gqjpvl7kXAsGr9bvrFmWREris=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sxq6dryS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sxq6dryS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A75C4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733096753;
	bh=FR0CvG5D0p0gkDVh2sqJ/WHClbVZyCMFE12hF2qKJ7M=;
	h=To:Subject:From:Date:From;
	b=Sxq6dryS8tjJVvKUpxH2yqmgzT7lbwhsZxyFnomjmFFP+a7Q1us2YQFIVCO0yHefc
	 NUmB2Em27kQNhwibA93g6jGwC4vS7oSpcaUxSix/2BJ+8sAdNs1lvN8sFVuQ0kqrSo
	 vOK0pETAU1L+fZJgl2CD2JQCi6CK6rry6Cw2Sy1fFGs5vdkSiT/J7p1+q/KW7C9VKO
	 n5Aowyq/Q3YcNs4InwFDgI1rtQ0Hlg77s7iHWJ0nwHMEVIHgRhBKbj3BgJAfmxgYaJ
	 J/kTbFZ/kO/ahL/AYXB3FkyWMAwnR2tfzUQIg5oxO/KHYYYCSnTEnl/1hSQSLAbdtp
	 GfcsUgq6NpLLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0DA3D4978E
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173309675360.3238.16226461914694008351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9845b0895f61a4d531657114ebaaba3676008c8488da8b5d9082e76d3dee67b0
Date: Sun, 01 Dec 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733096753
