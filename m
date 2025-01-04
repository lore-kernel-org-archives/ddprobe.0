Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 636CB17FE
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736026554; cv=none; b=r/usy9b1YulV+GvDqw651p0O+3/p4RpsrX6Wg2oPE1M5FCPzfftdNbgQw+f4rxvfK80BKFxS7SAHtLvs0oPlDafCSw/C4oLrrDolbDtiC8vty6qD/ESVWpYgtDNEBq+RTO30/z2B1wumvj28PDcLranJZn7uM72rssn/eMP3tWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736026554; c=relaxed/simple;
	bh=QYG8UCPJAchHyTFYojuRrloxUsx82SBUYh84gDPfbL0=;
	h=To:Subject:From:Message-Id:Date; b=B0LxjYpUp7CKN2blZBU6pSC/S0oRsSPY7VrfZHM5y1u/U+PdteQzuzCG0kPs14Ck1NzP4DrhwVMLKmuKv3P0Ag5jYFdTNlH/swlHUn1gxq4+3BQDZAzOUSfQ+hUXzgp02f9roiGudALQBKgmRoJux1g0DpXYjPv5Tr2aKlkB2QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HyJQ56w/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HyJQ56w/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B9DC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736026553;
	bh=QYG8UCPJAchHyTFYojuRrloxUsx82SBUYh84gDPfbL0=;
	h=To:Subject:From:Date:From;
	b=HyJQ56w/vame3JEwVy0u0NxLPGVMiotpz7ApiS/WpFBLBCGwInXb86wH63HfMSuwo
	 qiRf8NNRGRVOf0V3PazU5zeT+s32DAxEuJ+iLKIoSG7/39MKald6rNrYqBrodkfNjE
	 UheZVeZRA4rbaB3VTffi6R+rblyGnkVtYH9QNb9xt4+OhrG6nbAO9czr3QeXDkEIFl
	 +JJZhcPUQv2ZlKeVnZP6HyN5tbMTwQ6D2o6wJ/XKLKJzz4nvRObyRSRsF2tRqIZ5bw
	 FpH1N3KTfFpdHeYXmvW+1j1olpBsCiYyoG6F16d6HrqVftuR9GwHbFdFLmNIUqkIhl
	 YLTEC4KMe4FMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A359FE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602655364.12470.3597813720779140698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9610c00a4e138abd6f4806d4f19b5a0e8badb2c9112e59373d96acf44fa2c1
Date: Sat, 04 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736026553
