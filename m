Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348262E040C
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758052795; cv=none; b=G8PW8EP9F8XZJn/pYB69Sc2lB3snZVJ59fJbkgvImifxu6NWZBVldsmMl4qmiwz6sIvUZTFxtkgFqQL111e6+Hk64W0fZPMZFJYjTvF9yKJuovkudEPTu6MOhq4LGcb7OXZpLPTw+50W/yMkBh3LQByklvqNtTtya2ifBtzE5uM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758052795; c=relaxed/simple;
	bh=RViB2Qw0th8+XbgU5qGaI7pE5HON4D1Rvssl6XX5G6c=;
	h=To:Subject:From:Message-Id:Date; b=BW6dyMmB2mXKZvtGVZw+Udk93TcOhHTm4ZGfylT6FCaiARLV46XQiE9a/sSIXa5mDHUYfK2u45qQ0lWZUY3Xghludd86U6rvXQyrUDr5RAkFtuxJYEj2lOaauaVxMWr5xC9ezCSAHSFf1Y2h1XJB+cesqldQ4d1jxpx8HkB16WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U45122yN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U45122yN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B4EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758052793;
	bh=RViB2Qw0th8+XbgU5qGaI7pE5HON4D1Rvssl6XX5G6c=;
	h=To:Subject:From:Date:From;
	b=U45122yNt93qNbgolHAftVKZ5Mxhft/s7JtmLBbItKzfSQXvY9iyg6CKa5dxspZSL
	 +4kycgZoKHUXQ9E0d+g/duVpGmgbH9mjtwe+ZJK8IMOMRrLB7XEWLVPq4NjcdSQEKX
	 STYNS77Eb+hwBMLwmUPNOo6tcfNfdK4adW3o59RnjaoFPjyU6e9zx8UAhllcdDCNpg
	 pXrRGecfA2goKVqEFcwnVFwgwm6m7zjoZR/4LEzY+sIZniGuemuC0ptyeuXypA/ioQ
	 oBdbcqJQKFp1XdLkmgHhrV4TO8ADzZhyIQLQihebwKQ/5naDFv0k/1/qdTYFp3hvSF
	 Q7F4q509lTJaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999FCCAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805279361.31880.15102174680133220625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 125b78b993a642ffa36b8079e2d33564594aada39765fd0ea1b2ea09a5ea2e27
Date: Tue, 16 Sep 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758052793
