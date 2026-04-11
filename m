Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C67B221F26
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775915254; cv=none; b=sWtnS+NTaA0C8lhm4ahhmskXfdn8bk7TUKgn5LCJHXkDZcjcvvDIXwcRGZN8Rc3EaZr6Tw3MnsmTmLrskzmVRFc5/H47iqZvqd+PEBRu8g6FHVwdouMfimWovTUq7Aru8fZGVJMF+lUC9k8Yl4l2Hm+rSH34pqXxz4IR08j+l5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775915254; c=relaxed/simple;
	bh=e/b4k2cUBpfvGi5dqdoxIdpXjUgty3xAlXM8Iz9fm9E=;
	h=To:Subject:From:Message-Id:Date; b=LNYRnYhCDuHfjmPjGJjJNgkiJhcNTddQnTMxHUTTNxEJ+2+RDsFb2CoaRVk341fR+hhE1Bmo1J4UBaJmPw0OZqIogMzqbALf3SG6OsFokB43YHJGL+cEjT1EeZOj2f/xt9orsW0FyIA0STY8hZlfa/QS3R1K/WIR0nIhyMrGbe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TC9WZOlA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TC9WZOlA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFF95C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775915253;
	bh=e/b4k2cUBpfvGi5dqdoxIdpXjUgty3xAlXM8Iz9fm9E=;
	h=To:Subject:From:Date:From;
	b=TC9WZOlAJAboIY+tXDFrp7iSLiPgXFEUx7TyjNVeUi3427mKLF57W+DVbeBaGthie
	 barSYVLRavRucbNs+7nXUaUoYrvjSZhc7bTw1Xk6JDtGLOHUnQmBGEEOTruvJ/vBiw
	 mt1h62JBcmE4SENx7rwkjzFbRxbVW60B7k8TyFFQINWP2sZkn7TwSdlwyQexZ853W8
	 Bk4z5AMTVkuSmpKZd3Hs5xboCPVoiTklqgz0phBLwFyQv6b2qbXK+X2YTTpgkTodu3
	 Nz8BaQcYQu9bQVYtCfbxKp2PRtCL1rvZY+QBM9D1zolAGeTkNu4/IaB7pi96deQ6hT
	 l8UDHHnrqZeDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE00F3ED4F
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177591525369.32021.10192397813610231936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be73eb8a5428d421e4daff9289b503670d3c500256d04676b23675ae259d0120
Date: Sat, 11 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775915253
