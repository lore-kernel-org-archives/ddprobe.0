Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1262A2D640E
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755091794; cv=none; b=auAr9CurTSqJpsP4QuTW1m1qixZxjimovnO/7iNCoOxq3Bh9yB3QIa9WQNQ8idTWxYuYkxbXR788AK0gxjHZBqRKf5TbWlZNh342JkP3IcSTeNJaP6/q/qKuixAsa1EFa7kh77CWmfIJztPpaa50Ge2yo5Q0vABdrTJA9/Y4ky8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755091794; c=relaxed/simple;
	bh=QJ0ws1HfJWue1sF6RAKbaLy+HIEPHHJBJnbNerB/JeY=;
	h=To:Subject:From:Message-Id:Date; b=KFdd2ghU4XRP7Fh0uJFx67B/cW+izYDShGdButDa7SeUwNogaDJF2J5PyvCCr2p9rSe8qbmxcC+dDM+no0VBIQv/qPZNQTr1y3r8fF7AU8hCriXOq/VCoH0PyJCqGM4NmNHcdIRIqLT9H0FtzZ7KbPxPIuANkVqxa3NbQXPOQho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tU+GAP12; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tU+GAP12"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0353C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755091793;
	bh=QJ0ws1HfJWue1sF6RAKbaLy+HIEPHHJBJnbNerB/JeY=;
	h=To:Subject:From:Date:From;
	b=tU+GAP12FwLiZp2zQXpM2kW+V/mfO9Zf0r3cCijy90FCR1uLsn9fxO+uIDiXgg2YY
	 mHd7iIwm356rNTnxrRX1YPRR+bvCXqyqly5yr8cxNJWklI0/KNrX68Y+dgxoBZ6cdg
	 hwzm24sdAQPmq+bUBjp7xv1fMoScL7My3UUrFI8NlKMISXbcJFVm1/WSJKAnc8DcIW
	 PENMcF6mpaY+uW4aDdoXbjhYmcDpRMNOxO/28CNQowO2skvJBSwCK3XHFlGSgWrWDb
	 m6YVgEYNjmaSUnFaHrQJh5r3lsfL4ONvRPqCDfj/KkvJ3IQr46d3bf+VDP8w4BNWQa
	 SX1QKCuJd+p3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB1ACA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509179358.15963.6816623339297694186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71714e43b366bb83f59d4e61eab3a2f84677010c7dae2b7cacf31f5ab205d394
Date: Wed, 13 Aug 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755091793
