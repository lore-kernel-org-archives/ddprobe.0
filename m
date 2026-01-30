Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F46C30BF55
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769746434; cv=none; b=kL9zJtxOCMPCwuu48zaHzdrQB3nz8bUbAdiLBwvnwRhpAJOdHBiyHeAAp9JtzDo8TytEMgndiCFR6lYN8NJ0hU7PGtpYh592bolN00+b3BCMBOGdE+pvTvYXSwpFLpZek7Cp6SLVpZkEFsFsiV3UVN0iIgivD+y6gcALWSqMKYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769746434; c=relaxed/simple;
	bh=R8pEABtEiX/9VOD1VM1Y/vro7C9E5gZg7unlTVuy9NQ=;
	h=To:Subject:From:Message-Id:Date; b=MUKL+CmQGVjTAVgKkAZ0EbU7BLSMoaQl/z3tPvPhQGysMOzALHVJyDXSpmwOiMt2Lgl4/CeKG6EEiJNXt+7LEZZZckLG9q85KxSpUY5mncLbkj5bnC9FHDMpZwUB3Xw3lZboRIPZI6l9bNT+e4vbRvnGYsw+wl7abnWlum5GdQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyXQQ/84; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyXQQ/84"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DBAC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769746433;
	bh=R8pEABtEiX/9VOD1VM1Y/vro7C9E5gZg7unlTVuy9NQ=;
	h=To:Subject:From:Date:From;
	b=gyXQQ/84m9o/TA2U/hKG859aSUPt7DWfABmEyqYw2QrGChIGS/6HUC32LtJf7RQz0
	 uEAwpZ767JRgPgbad4yTbbqmzBPhaXDWsRXzFA8188Nd5iC56WY1OaA3iMIdatDhip
	 eKlTsi/RoyZ9tGXg+2eX/g6U9Zdh+wlDXeVt3bUYkue4SReNPUyDeL0bpuA06mjC9R
	 F53gqeTC0hI67bs1/jKiCKEqfGEBo1X4ez23pWRt+ylDxJZOiO//5VR34pAAtwh1NC
	 hJ8NFnQ89hwt/6HHCbtvrY2fV6CoKG70vdbw2BhghdchGKFbkbkCq7wyAtZ08SxLmU
	 yuoWK96VZGosQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9145BD73EBA
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176974643358.26677.421972748274088573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 091462b90d1d4bd1b292f8a9eafbea24ac2115761778c33c245f33f31f20af3a
Date: Fri, 30 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769746433
