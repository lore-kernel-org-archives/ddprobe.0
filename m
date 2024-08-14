Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1607C1A76B6
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723633554; cv=none; b=VISMwvOxOZ9EBoIwYrdKeB+L5vFY1PpMk8Jq5rWCVDd7mZF7AgJ+wPOLHwsbkHUoby6tAKK18rDKVsnQdX39wvHTjgpH/5XCraok8dtcqW50EGmS/o0GmLEkpjoxwW6E3Tbupdafd7ZGpt7jUiS0lKQfuCTecV5y/H+4bAHTyWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723633554; c=relaxed/simple;
	bh=5BIWKWLfaW4QeK5+duzVKW/yaLxHdsgoNVmHYA0qf7M=;
	h=To:Subject:From:Message-Id:Date; b=GEhc+cnuMHYAbDAzEe6djBEzpQOHTHUkgtqSrtctaiYCEU3tPshIzivdT0fdQP8xGuaaQd77CNLw2KfcmMQu4ru5y+gvHbRuS5IdtqBt55h4PV+zq2LFANv9EpSQ6yeeGMquc7U1KLfE33HT38GsmAPRK81TylK2un8sp+9nBBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BI96Zsd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BI96Zsd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CBCC32786
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723633553;
	bh=5BIWKWLfaW4QeK5+duzVKW/yaLxHdsgoNVmHYA0qf7M=;
	h=To:Subject:From:Date:From;
	b=BI96Zsd5Pbmh9ubfghv3tfZCt8XFWnQQyJ3PfNsZm2mhQt1KwVrZPfO7j4CnOWjXV
	 gEzYoii/dY+3y7vQIsFGAZ83WzRYK6y+0Ih1BYdY3GXVhczN4T6SmCYwiIiB7j6VCi
	 1kxk+qfIVCuD0ayiJw9Tili+mJtc6YR+IefXl5DlxZgXWnErSZB3ggGJ3oiaDZdtC6
	 f4OzbFCCXPeHDVdwnKbUtdBLx0EIfZ29ZDzklq1ngBjpIdFCpyvjN+UGYnRaXgcLYI
	 cijahaPLEqptpu4RwHs8eIotOEqhFQSl+s55md8PDY8G2fzkETvt5MCzChZ5eMBlbV
	 3dIZUSRvCZNfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EC1C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172363355358.26208.2375529687920705618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cbee735d3ce98f3fc2d432e4778d317a952974f4e032d0f64c3856c6148965f
Date: Wed, 14 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723633553
