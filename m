Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496B13D3002
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790796034; cv=none; b=S823kwlWHhbB1VKfKwNFZEJ/AmQKC1KoKT3xA7MaDROGDmJEQ4AYIR+O7U4XZLp0XTQ3+s6yRiArh1n3L2GrLejYYxhwchSWADZlSwrKbPOBGZCwZBXpGD4tPIhXdDcyDQ/eX69WoBNmJ4CO3c7lkaJTt21uBU4tmCRPcxSy6Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790796034; c=relaxed/simple;
	bh=QW2rZJohX6GXVmefu+bt+ux/fA5NpKgvtyYG1Zk0AHg=;
	h=To:Subject:From:Message-Id:Date; b=sp6Q10+44+RyDlSyYWUrXhzi/IcK/eai7LHKtBLIdFFlzl7Ri+S8cMwW7YhcmQZWLsqLb1n5ucdFF5yeocBbyBheoszJLvZ3JxHxnQQXpUvtdUUqDwDPnkCGUcEcMbk1toSzSe3W9stnqcEgQ+afHPNYEeIZO5Xg6MF9T+M5MeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FX0HG6aW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FX0HG6aW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0615C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790796033;
	bh=QW2rZJohX6GXVmefu+bt+ux/fA5NpKgvtyYG1Zk0AHg=;
	h=To:Subject:From:Date:From;
	b=FX0HG6aWSPWF86DSjJ8528OxrrCnIoNWx4WCYANqZ0/7QJlZXdpsVqa4XeMxWQnbE
	 o3aUrDwtwby+LHQkNvQsw/YBXdPbSTEyA09OO9UATPmMzfD+kYOWtH+bmvJgo7D+gn
	 JOOFSrOt2rv6ksjSlGRZyVsykkOfc97LSdl8yi502UE014w1zhoWvr25idbMF3Cylr
	 ROXiX1mQWawGIVzQbb/4NpPwPvotfRV+AKPuBG3bvEI+HPzqYpJwBn/Gca6Ez/dEyQ
	 IW8WZQTI4sZN7o2ReHuMiP+nfdbOwxr4V9SMIxvkQ1LbqsltG+KyRqBjHU9EWjEoSI
	 rcXu9ccr/IMtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8BA2CA5FC5
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079603374.11257.12334367611664048712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecc6b8d6b0359f99c31d0365d1d1b808bff7dc35a4180f38871f4ff8a66c7d6
Date: Wed, 30 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790796033
