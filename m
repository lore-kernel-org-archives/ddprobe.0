Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423FDF9E8
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748410194; cv=none; b=RbUAprB//MNlSygPPh6vtEGxz4i/9rAI9dvgeRTG2UMkOAuQ3F/lDZRd3C3ZOAHjVmTShw+5yiix5Li/JLJHjQxOafd/HQGpl7vPvQYmzsidLmgTzHTda9z8zNyWMu3XmzVPd3h97VoACEzHzYuNwiiQ5ZPGhZEPOD8E0Vq4cts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748410194; c=relaxed/simple;
	bh=RCICL6Y4FFQ6Vg2wIo+8hWK+TGbsgyeQmvB/yRpgkVI=;
	h=To:Subject:From:Message-Id:Date; b=X9WF1gkLd/ZCdM0wzrtekgCkw38VYWRX9hZG8ojaavpo9Jc8Zu3Yky03JSOTGrBuTYX6gRfz2ruEv8/BuyQN5MKXizg17a+ZN44cM2vicT9ulCX2a6g2XZYqW27+ISBO39DT/bhZ0GmdXObaVM7WkubaXsxtEGw6n4HGeSVriqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dm0u7EpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dm0u7EpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5337C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748410193;
	bh=RCICL6Y4FFQ6Vg2wIo+8hWK+TGbsgyeQmvB/yRpgkVI=;
	h=To:Subject:From:Date:From;
	b=dm0u7EpDQIRySqLB+v/6Lv5GcubR3NBAJfMtDKCBFg11U5Wus0ZctvWK8QIZO/Rgr
	 CtBy7itE//w0ZQMcr3tgWfFTvUa5a06wcTRgYkUDK93RtvvNzofQ0r35M+o/wTrv7M
	 PzL3H5JAPPt6B6iY8wYhXt07pcFS44v8yDPmbMDxecGOEjd53f1gK0M7isCy01Bvlp
	 HYgfcrpmfNo4/i+UTi75irL804KGpUnRackIInGIZ48JmZnipD3o0xFsaKiCqU2wZf
	 fS63/9YFjaw5AewFFsXKIM9xrTDeOnq1BdNZPFSL+9v5neQmyf66FFR/OPeXSXWyZb
	 mVZuQ9uP+1klA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917C9C5AE59
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174841019358.13376.6473371958784248225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f0355da5b3e5a8f152b02fc55304c12f7f536904f23d96f7d9e8b8b740e538
Date: Wed, 28 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748410193
