Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8A62E92D0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758053394; cv=none; b=TZkJFXM9KT89qEliKHi++khmAVosHDnosxPN3b5j4cWCTHZXKABeJnBNT8ZpI48DGZqpbAD0rurK4+IpGO00p8rD1yvd1c1ZRpJEek9NZTYDpEGVvSIC/WCmTwSzML5LBbynZs+txUXkXLLSBEyUcp0L4RB2MBK0+htE36Y0ol8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758053394; c=relaxed/simple;
	bh=w69HbiK1ZzxiG3Vw/8lQjp31g6vRrUAUoD4MK46og+0=;
	h=To:Subject:From:Message-Id:Date; b=R8MjFWTWsL065j39IuIEy3wI5EGmh9WcR2LQAPsQU0XfAQUi5oOhHsXr+aRWLWvQcrhM3hvOm0TmtFMdC0HyLkBAGuA58JZpiZTig/Re6f+3HuA4nTjM90RtnE0V6BqZloA0xRQ4Jdt+CKt8Br/0wLjTchUJLvpU7di53PGEMTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouEWoI3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouEWoI3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A179EC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758053393;
	bh=w69HbiK1ZzxiG3Vw/8lQjp31g6vRrUAUoD4MK46og+0=;
	h=To:Subject:From:Date:From;
	b=ouEWoI3xR/o2IAzYv2EcSsU+0O7sNw3L7Nl7NKXWzWAUQPBDUci5aTCzHwpi7D8se
	 e/z1duXtn9ifI5pzmv7jZxvBeHpQH0aCFDGfLQFpzoa0nX5cDnL7TBb1foElX8wdxV
	 brLfQLDlH+njcQ6PF/opRnlk88J8f+ITpV0mnBMZsFf5RAP2o14AOQzkgSWsAAQRHD
	 rn4zGt6HjvkZeC6WxWXrWoIzoQri/Ibwg5LyOQXdyUs0WrWJn4VBn3BzOGy1YLNbxN
	 VQMqd9oZdepKeiUynKKxEvdIU8OdriXwjj+cuY9JMiLK4HEHms8iASpTtJ3DcxakRu
	 CzQ18Q0p3bX/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B63CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175805339358.3928.11460330337843151783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a54009025817c56c81c3b82777ae2f2cdd5f69b48d104f420fddea0518bd97
Date: Tue, 16 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758053393
