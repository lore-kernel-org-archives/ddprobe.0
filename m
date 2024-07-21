Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 665971FBA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721538954; cv=none; b=sfOL/ndSI7ankDBp0ZVv/YmJ/lxbnyx5296EB8QVVZEEZQgUV2HAJeXAReDD3qmcWxlN1AMxbuNeM1Vxodj9OTPTDi8kkkMmVLB3Lwn841vBkDUXAtegGDCNI5cF5HX+dYTENORQSGh1CGHTmqjQgYAu4n9Iagp9j/Z8GpsmtRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721538954; c=relaxed/simple;
	bh=bQdh7osqvCk0Dw2MJLlX3mCnmb6L+34xCrgUHjoLmTM=;
	h=To:Subject:From:Message-Id:Date; b=bfUuvjsnJJcXgAIDrhbz25Z3WEoqMwvc5POUCvvSBCG86JGg7tpLggF1rRSu9e8ToulSZocRLCTmS3VhF0Fus6XB7QErR/pxdlcw0YTYtHThnRLfJaVBji5A0scYZXN3LgVrANuQRwInaZbYuuH/IPio4fBH/i9GJHZ9fLil6vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qtECMWYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qtECMWYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DC4C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721538953;
	bh=bQdh7osqvCk0Dw2MJLlX3mCnmb6L+34xCrgUHjoLmTM=;
	h=To:Subject:From:Date:From;
	b=qtECMWYg0G9c9Gc/a47SbejKd+RL5Ft+zBog6ujx0mFElFZlZTZRj6nbOzPmnloDt
	 wTSh9nVswPMV2ytaNPG3Uav065WIKkS+XXMYB6WrD2r5upZ5fH+fgzUXzlw7gQIXEJ
	 dukGEO0IYRpsnOYlDSPRtZKq613czOfiJIw04d+qh9h2ZWrSTQ/ji02gFKkpJTMJCt
	 K/kmrfR/FnfRAbWmfFL0vku67PZ5138RR/dG7J9U105VFgdoxT9iBBwEmqbWfV7FWI
	 SL4CdaQdSOJjVM6aDmAIRE8RdeTwg8W9BE3U53N6APHG3r3XfxGdpgHmBOXq6F8dz5
	 pi8vVPGLsLLOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDF9C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172153895365.11320.8227916918510461969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18916b8879a0a16ae71dcec1eeb7ce7876e0c0029bfe6597b45935e2fc7558de
Date: Sun, 21 Jul 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721538953
