Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB6417E
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723254954; cv=none; b=K+3Mtf9JKxFJGCuIMQa2oKoLhPv/TrfYUyOPpcRs181/LmPi/8B8/WN+Ad3H0Q/dJ+2FFlURSv04u3f5kGGPvNVDTRX1XAw/ifjkSF5NIY6ppq2n2S56KQ0AUDg0ex+vOWYOEwhFE7TEcyWHOkvy/pOVLkCQ9/iSUoYWXiXB+Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723254954; c=relaxed/simple;
	bh=nLpSpLi4P0ieq9ScDuAgPLwnv9bM/s6h4gfEX+r4L10=;
	h=To:Subject:From:Message-Id:Date; b=aTcKZ7ssA1KPPj/We2tTFsYIcuUA3w0nY/sN8rElyC+lmv9fGmYtrOH76LHnMWUw90DbkK6YdTuFKC4d1gyMJZ0UfHWUdgQ9R+MZk4e8UahRZcmw2VoAztecdfnwzyQN+pkE5bVdsQRSD5VTmynOui79x1MrvPWamWaxwybDVAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Khg/ILNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Khg/ILNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9241C32782
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723254953;
	bh=nLpSpLi4P0ieq9ScDuAgPLwnv9bM/s6h4gfEX+r4L10=;
	h=To:Subject:From:Date:From;
	b=Khg/ILNzqGsndsAoRxSJytxr7u/XyhCUd4V3KYJVHYEmvDZ5ZWB+08C7AeBMITceO
	 FtD/b0jskT3C4aYkyqSo3fRgacsTxAL0+8p+7WB2ZAlh5+bjLCkcvDTfwBPBrHPQqF
	 gQLSBaStFc7huGk1G6Q0hI3nyJrExpeRiZL6asmONjQZD+CrGAwXyqAX79caqY6KPL
	 HX6TIp0lzke4iGt3vuMbtuE3oye9sAfNaSKhv2cuJHsa3kvseR1j/HmLF98RhgS7Qt
	 S/vvxe3nlZaMaWkJPkjfA41FqouhOB/tQJIFRVyIRKI88i+4pyNJLpnCoLsIKWpN5P
	 aoRah3YU2RBzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955D7C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172325495360.9781.9218261588538482724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b262855b9e80de44cc63c08a9c74ab7ade13082b053d6372cc1530ade78eed96
Date: Sat, 10 Aug 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723254953
