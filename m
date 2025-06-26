Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF14194AD5
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750966193; cv=none; b=YUGtLSLgUX1vBJ62KeNtbPt9y6WrBDD3aGASd9W4Wvd2J/wC0t1SXRWEUjxZQK7PV1EndMEYVLxSekwHaKUuEjtWoTJJlxwSrKHiWTyYtK4d5XM/7K2kPfKhvIFAtU0S4a6+uqo3KOWjXMKJGViIZDwGKc5PAdKLGFY+PF8R9+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750966193; c=relaxed/simple;
	bh=4VKhHQksAtGBAUoHAJMqz6PpuwLm6yPCr1iWGluW6V0=;
	h=To:Subject:From:Message-Id:Date; b=kvP80bXkMskJJno7s4lSPtSUfx/2333aDC6OabzNsIaLI3LgF7UmOMfdnC9Z1DvU9mQEVqv14ZZwGn/pNFrWvIu/FAKUyGSuZ5KbLb+wckt+I1Npgf+3kpk1m9GKYw/ewikiBo2uMfejwJjJjB6vZaNzbyDjn2AfQrLX3z/dVbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtXm7d9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtXm7d9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4088C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750966193;
	bh=4VKhHQksAtGBAUoHAJMqz6PpuwLm6yPCr1iWGluW6V0=;
	h=To:Subject:From:Date:From;
	b=MtXm7d9RAW15PsVasRLzV7BCFh1z5xu+/C1NTlE8P1yd1zGcYcV9fxB7YYB4SPOrj
	 KeLoAxuopOTyX6JcwKvR94RfkIft0KxWDcEOm1mtjdiYjfApoJodvXkQaq3jfAbsNw
	 JA3dzYN/ErrvC4lZ5RTy3Xb2BcjtqCK4WJoRDhckPDXmMfdCMXTZd1LaTlHC7SFos7
	 da1pZX/R58zT+3QGzvrtDWziCdB2dJBhpwlGKt8dOxfmGU2akWpizLy93CgRaU6/fO
	 9J9i0mbzgVaeEhLBOuX1yzM3D/ZQGINo+ww68H+8p0vnQsTTBZ7num9y0F2jXUOGH6
	 s1/3LSO895Inw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF4C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096619358.16081.5387329492757451611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbad41dc103a4ee8d1aafa2321efba15b45acf876458de231fdc89bdc5f8438d
Date: Thu, 26 Jun 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750966193
