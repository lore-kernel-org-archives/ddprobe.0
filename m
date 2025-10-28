Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265E530EF8E
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761661794; cv=none; b=MTYLmxHxyIITkA5H+qIQkJb60g2QjC5Gts4WoIp4qjJpw3fSeC/oa8FeWSxsVcL+AAAsJK+IJUAOUMAUeL3T/Cj01D7vHInsTsOJANke2MBPtT4bgkpCHRbqtn1qdfQepwjq/0pJpAU5bFURBWlwuMNCh+wZkErNHR55nsqfhTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761661794; c=relaxed/simple;
	bh=oix/IdbBkr5ajxZpLwf7/hTXZ3vyeoBlnaClyrXhG78=;
	h=To:Subject:From:Message-Id:Date; b=XutEofCqmsIgNjIh6hjQpLABEED2Mf/+7KruGepuijvPYXtF5DpMo0IQnfzAzgPhi1IVUDfPde0hPA11wGIqVbI33Zd0yzrWwoRIq0biQxWsjQ5UsX/G1Zoc6m29yeWTpw1SR3U3SOanPyI0pmO9G/L3gKrlwQNVOYls/rtnF50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JShnS2Vs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JShnS2Vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27BDC4CEFD
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761661793;
	bh=oix/IdbBkr5ajxZpLwf7/hTXZ3vyeoBlnaClyrXhG78=;
	h=To:Subject:From:Date:From;
	b=JShnS2VsMpvXNVwHdJiP/l1BFKQd+DF0gXhd/DcIB8iIVmHeyfMwxC5UQ0RKt8pgN
	 Ck5HO/T969K3dNP1NlY6ycpCcicgeL2DET1VOq09rqIuALe/nyC3dxxL3vxU4Z4COg
	 ttnOrrONaJ1+SPILxGUdoTnP6GX57tFc1bENS4BG/y/Y6TvpsDlHrS3UdipbX8+alI
	 xv7j2n/tgL4plqTiiZAZCECWiXOf7A4qnRdninXfnDLIg/qhDR2RVxlcSjQWdIGZif
	 zKV5ChV8y2sTv8ze8pdT0vdGswL8HrfdrZrP2LP0wMZVth66hOOlzL2BvxE6bBSwyW
	 NFGaPpkBVSTog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91245CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166179358.17147.7364526288551766853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c9ce289f3bd079f39de7e23f0b9b96a682c15a35651f804fe625c51bd6d832
Date: Tue, 28 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761661793
