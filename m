Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C805216A10
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728644754; cv=none; b=UHwQpgTCKpNP5e7DAw0mP7JabSnQ+X03Le0NhRt2g+O4Gg8AdSOrCBxAN0LbGSLtnV6CfhpN2SIZrdDP6SerxhHXQpo1xmHEdhCQqcWkXwlyrsPPaPUciZ6ZV5BOmphuxjqoIBd3bsHJAlVeckEyoHiHs/Agp2iObs31kG8FEJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728644754; c=relaxed/simple;
	bh=d2a8bAghucMCiSJkhg+e3qLUN7ClKvSBtCwUtap/e0Q=;
	h=To:Subject:From:Message-Id:Date; b=kvc39OidLEnugN3VeBYrik6hr1hrX6S1TXrv2dx8iJFrWZxNTBtA6ITF7NyscgDo+fat9RwK49AUf8XPqNGehFXM9/oX6r/UxAj2Iin8AAkaqRaRXT4nYpYknyqC7ZR/XEk1Ndk//zlKiO4DQPbxYyGXo7/CyJtbDoRCJo+tdLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CQqfq9CP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CQqfq9CP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FF1C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728644753;
	bh=d2a8bAghucMCiSJkhg+e3qLUN7ClKvSBtCwUtap/e0Q=;
	h=To:Subject:From:Date:From;
	b=CQqfq9CP0t+aVYtsIDlgX6dxm0TXfJTRqEqlKnWarZ0UV861GvPA1EYYs7l907N2o
	 XBGl145hJSiTO34bRohU0FYiNGhknBa1JOI6ECMZrbY7h2katAuJrQgaB2oLJ2m5lq
	 CZVQixwOdudRMfBLfN5cq3+ptpq7Hh/zuRB4hE7OpsdJn3RxFzL2yTzU35ben3EaAc
	 Eg3eYHpmm3hnz7X5kSqmktKo5sPObhkK7XGjyX006Ixm4/+I9gz6op+4DQDezzLzvw
	 nIv9nhdv9MHtQksLfaN1K5/76SvLoXaN6DgTgVBcoOn+k6+oWIxciWOHdxi82Br8IA
	 0Btj1ND8lcjlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A27BACFD342
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172864475365.29463.5787921485891915664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d83eeb91731c89fda9da9993a8f1e4375d2414b99fd4a0355a6a4c1231b744a
Date: Fri, 11 Oct 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728644753
