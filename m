Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DE341DFF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721147723; cv=none; b=kXNcN4wnYIOYpsS9P+AOShVkfoMDRQVOD920fEk85g6aYNMKp0i6jVASotpsF+Qv1/7/d4MIf2sOv4EHrJdacbMRiZbToWJVNr5Y40Lyuy7MoHgXE4bTxLFkPyA0e6R5hwqhgSiwQ/H74HGSVgeyt/X3soSiEx5Q2N5nCNIfcf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721147723; c=relaxed/simple;
	bh=LVI9QQ0hH3Iknwcb7HqzmezQHNqO6JiacXDLa5XFbUI=;
	h=To:Subject:From:Message-Id:Date; b=YcS2WCln76M1aNU+HLzaib5ccir99jEMNm3driIqnKEcHDbLVwRYMcgMXgqJPY88V4z/DIIVausV5CmD550CyBLPred1GnTURFSGXSE0bmM5qr+5cf3SAHjbF4cT9dFP0wpvs7/svUqjsQ7SM8gCLp+9nm6l77OJRS9S9VgdpfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6g3nQEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6g3nQEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AFFC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721147722;
	bh=LVI9QQ0hH3Iknwcb7HqzmezQHNqO6JiacXDLa5XFbUI=;
	h=To:Subject:From:Date:From;
	b=r6g3nQEXDBUnRiGG1wSt7cNY7TuSeqrP+tM6DpLLsm/ozgWf+76y2gV48FkVb8VR2
	 iP4j17tJ4mAYwYKydesPlemADVUMM54t3TQx4hEKUrx6mO3Rq357EBKDagl3w3Gyxl
	 Lg4x9WFNISpuZ7nmPgCgcXeZaN1jsqUpuiCMDleG+78jWADxAR7s6vzxiShzAk5olJ
	 Oilfdp3g1vfOdtDlofcUZfy3Vjkp4eUgID9Hj3ut2wXqau0riRzcyKhcjzZc71Kz9o
	 i1uxweOPpiESBuq+LjAiHLDkdvCQ2Nnu+/DQi5ZWAHKQHhc8A/+CusYUpM+kIgyp3W
	 k1v3zvCGPwa0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC657C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 16:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172114772282.10299.16512106138148942045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f3f646ae22b59e3fac6b22d0483e6e9a459ff3deb74f6855d049ef26aacee0
Date: Tue, 16 Jul 2024 16:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721147722
