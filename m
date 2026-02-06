Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8113382D0
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770352434; cv=none; b=oiqY+JoMzZBGCnTp418lo2AvF0UyPoVDSJzSvD04DDlECJ02tH5VGO1N3xBqhMqzCNhsa93wOZJ+/hkm4Vi2o8mANSdbTFZOkfoDJPOzx65RGMXi+mTLXl4x0HMluUsKgs6kRK06g9g3T96318bODXlDV5C/oswwFloKs3R9bQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770352434; c=relaxed/simple;
	bh=xZXTUPAmmMbVrU/FlhG4OF7e5friLtvbRwoy1f3bDEc=;
	h=To:Subject:From:Message-Id:Date; b=nxv2lTxO8VAtY13GvqRYBG6O5McmVOOHvDVfbdoniht7CDaCHOszOsKKGY+GV6Oh9Ut3XT+GQ5/06Z6oRQNoYAqmI/XQUiq/nmXByfZgF50iFFw6Dy1K7MQQRjoWarLdusG9C5fPulBAWg67T8w4U9w1GcHv84HfWbPMpfapEmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gIS2Mh0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gIS2Mh0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DB3C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770352433;
	bh=xZXTUPAmmMbVrU/FlhG4OF7e5friLtvbRwoy1f3bDEc=;
	h=To:Subject:From:Date:From;
	b=gIS2Mh0Qsfr+do1pFTHUgRxrqT2/LlKnE0tqCZdEbWCLH8X825XqV9qFTvpOVPd1R
	 hRk1B8YLS2s2PFefbQBM+JI0Hu3CGS/SAqst/NhBb/GNJIrvFjO6OWUgLVrEJKhXfE
	 Oj4rfqT6f82UwnpZhBf/Pn8HeLT5BUZEHrB72r2uEoCtWGmde7IGmmXGkV+BfzDdhX
	 HDSwEjA2h+dLRP0N24E1GYMpli6lJM0OKh324TmDxIkEWyVp51mnNmqhS3Rf91xQ3s
	 9NqgmSFx87gSIja6haa5diTQpFVRHnRKhxA+crEcRo7mEYs0YSkio1CvsSQZxfPgul
	 e2ubnlc4xOnXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BE3E9129F
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035243359.12321.16706730157825860458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c47e9eb4c2975f3ee98126cd1303f3b4dc1734dce61e211370515b7746c74a5c
Date: Fri, 06 Feb 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770352433
