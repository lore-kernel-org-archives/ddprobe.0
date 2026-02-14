Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7841A9FAB
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771105494; cv=none; b=EmWd6qeM0uvDexUAe9uwhwK3rZXzo+o7Vludr6yOlKvrTd1bhFEcXA4O2di2cLAdxlcvHnmrH2Nrt4BvQQVaXTIR/dYQVG0v9TQtCIBov+tHF+D323IuKElSY7ZctIy2qHrTIaiebgW4s9MdphA3lQNRao1v9Vi8nULjUfNzNdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771105494; c=relaxed/simple;
	bh=Jjt2EM07Te+iAV1RR180GeY6UYI0gdAlECP+EPI0qz4=;
	h=To:Subject:From:Message-Id:Date; b=V3WKyZ/x+fXB8zIZV9IO1YlDrIU5O2mtQiCYIbYbzmjEhJC5xh+BWGQ6voSA9hJowIXK9gUXIbLmF/h5WYTpTNzrHcB0lLsKzy3j8DF7k4nCK+bmLKtS85jd1/iQR5MGe2/BO8aq+jC+pdDGnBCwucgIBH4hJLjuL17dGrFZfcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMJ+vrd1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMJ+vrd1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF943C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771105493;
	bh=Jjt2EM07Te+iAV1RR180GeY6UYI0gdAlECP+EPI0qz4=;
	h=To:Subject:From:Date:From;
	b=KMJ+vrd1xtfftAWQ7qwlmDoQ4Y+eP01rEflxcVNNpbfvY9h6qyiDM3Kk1oUgzPFip
	 qRFcP1D5vENX4cdyLwg0qMiK5XbogKjOjMUY2FOn3t/sy446t+U1kOaeyfdfgsQK2/
	 6r3oQ8GpWWK0FM5jNm3fHinmes5FKVxkaVmhzRwqtK2P2FdlywayRy1ScvQKq2Kz6B
	 H+D6TyMgHrEiCpdS4O0vHixrLzptGvIug3AOwk1a+P+Ya23m+nEJzv8R6Ef/sROOQX
	 +dp5d7SGvZP8+0g8+T8X4MLrH8OCp7bhU2YeeI9iDBBPfvWxIPbwWuRxL+jHHrigrJ
	 zZ8Qe61UXjkwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34CFEF584C
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 21:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177110549364.5693.13859803425143036134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed054e2b31d5b2779cb1d029aab2a65faf78278e853e2c16be56a0b0a791d462
Date: Sat, 14 Feb 2026 21:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771105493
