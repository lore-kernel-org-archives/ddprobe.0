Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABB3126C1C
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731906354; cv=none; b=du2jUKKW3rSDlXj+jiMiGZGJces+hmy2iqqdCAvb+2JsDh8FKGP5WpGyHW63NYtBomsS2FTToujW9FYKQNEqC3wy7dbj92lN9ewRBoZZ2wmvOx/dGAFXsLthJkm8KzaeFBoRLmsd58Q13b+3c6KK59kaeAAgRu7lj9NRD9S+W/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731906354; c=relaxed/simple;
	bh=437VEs9W/7sRFVPsxe5bBzNGLaJgkfVcs3oGwLwhvYk=;
	h=To:Subject:From:Message-Id:Date; b=mWXrm+WljsnfM+wvZakvQKg/WTbh9k8SqUt18k7SZcZ/Q1wdlVrXOUnKjWrPhH4Stl+cx9gtHR6zibdGAvUK6oMsTcU5lwqxBiKwyJ+94UCSepxSfdQMLDC6NRLVgtGadi2y9S2WGe6ZPFpkOIx3KBoadbmnODGjU89ZllNAciA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uujymTmv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uujymTmv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82EDC4CECC
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731906353;
	bh=437VEs9W/7sRFVPsxe5bBzNGLaJgkfVcs3oGwLwhvYk=;
	h=To:Subject:From:Date:From;
	b=uujymTmvi7aaemRXBlrem9MsdooBhdQNlYqUCHWPlnx9u+ePZDBOCn2eKDHJF8LnJ
	 0dWnb0P3PIFP6e0MEeqlxAKZ3Ys1+w/SMDl64mO6HEWrRoc+c8FvXD/TX2bEey/Hma
	 7q1g4LUtGorn9L1WOn2kRYDfLYYzw78vfdDOLCsypIQsAZ9z+wr8BlACndTADLrcHz
	 vRf9QxFUA8PLiRTH63mUBBMYm/x7PCCwuJ6a/DNaWRGzVv6zRW+Qm+Cu7wlUeXPBV+
	 56nnm5gIqXbmGRDewm3V2h23USIeJJYVoX+Xcl5g9TTSZdrntSG/IDk+fnI2wEBeUj
	 5JHdE1lCM0Pow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94150D10F36
	for <ddprobe@lists.linux.dev>; Mon, 18 Nov 2024 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173190635359.28452.9597945934250637139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f8d36a4b738acee3349983ed73214a4934ca4e51c5cf8b93a0ddf041d8d839
Date: Mon, 18 Nov 2024 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731906353
