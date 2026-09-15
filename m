Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A0F4718D3
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789464034; cv=none; b=KSGvavpkSrjanQ/GxwZOVKmbkYWz+8oLk4mPurfwNlwrnzvcz46Y17WRzJNcfebLrFqWvLgsIKSD3cDjR+NPzB5fdox1Et8KeJxXU4Y7fO8t4WF/64+abGfJTzGh02l+3f/3431mUxYYZGH/BAarWzIj7hRelSqZVfZob1/tWQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789464034; c=relaxed/simple;
	bh=P7CHsZ/bOfRbRGs/IuVR0CwCVqR9aDMBWVxU2C/PG9M=;
	h=To:Subject:From:Message-Id:Date; b=VnJlVh6EqIZNweb5FpdLN+8sGBkHV1oYumuotYmXJOus6UfpR1DJkreIiXJDIxbqYwwNGoz2nvzQHZPZyn8na4trLqho528kRh9zSOS5ADgZ8gNpKSzQkXvYmBQcxmfwnrS/0lyvr7YpONbL3/Tcr50NO9ncT/UmCW1GGCOFmww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n5igr74Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n5igr74Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7D6C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789464033;
	bh=P7CHsZ/bOfRbRGs/IuVR0CwCVqR9aDMBWVxU2C/PG9M=;
	h=To:Subject:From:Date:From;
	b=n5igr74Z8ffya2IM9x3w1Ts6f1tn8hmnCLDm6nl0yaLcNf0uLjkKNKBgv2ozmrgBQ
	 /h5m3EVD9ZrRfBbnnMZ+ry9mQpPqR8kAEbZcmDB1b0oxsXdCRDtnT7wpFLnnzQYu93
	 YO32y+LCU4ptX318Cos2imXs7JaLGfvYPDxZTLgCCaIpoB7a1vw4W0D6Lp5Nor8Gdu
	 GpPb43rIsO5VeeTLLVHi17dpHQsJ8LPql52fX1NEycng1i7M09C6CZgA180V0sVM9Z
	 BJnWtxZk/v5r2Qm1I0ljoWgmFSptRBsZ6PA8vNSIGpHoRQ2VQUgRCdBHLllNFLa41W
	 0ZHyeX0YELafg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA008C88E53
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178946403368.21387.1606836959783381879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22dbc4836b9b11f229c5a7763f4721a4b92a83066f61e787b6d5ec10c5853b21
Date: Tue, 15 Sep 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789464033
