Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369E1253F12
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760045994; cv=none; b=dW0RjOd2Bi3FBZ/wq7ziARZfYHitG1k4RUwkErVh3bbHwCPM0LAxH0P9XmqjKGWbuXlCnTtJhDkQ6GbkvVeXsq9Q1SzB6VUrHShZ26KFRyznMNFZOrrdJAmp2ajS4RJ5cCUHwFVsDU6UTRQcW1zkpvyP/a7ZlY3swwbLKJYsk0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760045994; c=relaxed/simple;
	bh=EPfyqJzHH05ZIKYjTD+wz5cy3TLwUD7gYlPY0vxy1dM=;
	h=To:Subject:From:Message-Id:Date; b=bLABnGP2mzywrxY7fcy2VQAEHoO4UIelC2jLXMPUu4ByfG25bQeM4a1YwCrQCSCtTmVtaRaHEDUdRLT43anrSQ8HckvnRVfPHJvM0lrLRZzQw1zO/fd1v8PcDncIhdpDL1D36bnMbyC6igFj7rhLg7dU6aoc72DjDu+o69KMBpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnnS19VV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnnS19VV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0C8EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760045993;
	bh=EPfyqJzHH05ZIKYjTD+wz5cy3TLwUD7gYlPY0vxy1dM=;
	h=To:Subject:From:Date:From;
	b=nnnS19VVTSFyLuT0B2B7FyGuhGfYmXUdLgs1Dp9N19s34Z7P/GaNdCMl0PaiWU4rX
	 n/PK82jwrEFAejF0rfTuKLSiNsLrFt3CNK/K0rkD/3UcFGbw98uqcyj+UxXVbtUctk
	 7nv4afgBZeHVvAam2tzrrstQmWAbhrDYGcA748QHUYdGi0L89DR+rWhr/BALXyyJ1e
	 CaWDTim1iFle1eOWdrVNk3/FBMXFUyWjYffDv7LZL8mz5DciH6gyTTAQoBBW0sO46r
	 hXpifks86EblqqCAwPMy9kux6i2EAMi60PNxVtobwhfE1Rvw29192YshrOCWl7f/c7
	 SI2PCypFKi0bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9681ACCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176004599360.6337.11531081169262865756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 634c8ac893288a071821286f8a5b4af8717dd577de2ef38d6db0674637703f4f
Date: Thu, 09 Oct 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760045993
