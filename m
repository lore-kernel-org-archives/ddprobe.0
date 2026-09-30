Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AA4652123A
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790777434; cv=none; b=NCCdl6xlV7sC81SjnliK81npY1rYxWEwVuoAl1W46rHPGk1vVpw0W5DaPvtK1oWmLLVmpuRL+4HcxTw7lqTugZvHLfkrAhAnQmt2NaiG29Hmg79KtRnU/wt3hRngRpSqqBEmt873wl+PX7xIDdlrGTbYRqzJ1olBz949wTkDalI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790777434; c=relaxed/simple;
	bh=mUue/L31yhlvwXgvkDlq+/gZaQ2m9fEMVhHjOtHUSnI=;
	h=To:Subject:From:Message-Id:Date; b=q+mSU6DHuPITb0L01inCB9UTarDfkuxnwn/yv5+yxU6gc/ServUmDz+5ob9u6LgFaUOvIIkMCJAjlPOidZ/67PrzflL9/xemWXmz9qPG16YeUNISE7PbzsI4NTjzz9oBWFR+07PLUOOh34yJQzOi/mli600eo8C/pl1TkBW5KoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuZtMLSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuZtMLSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF633C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790777433;
	bh=mUue/L31yhlvwXgvkDlq+/gZaQ2m9fEMVhHjOtHUSnI=;
	h=To:Subject:From:Date:From;
	b=fuZtMLSOdBTR0ORICTqGwDGGmPWLxTFtey7Ggpdsb9zBTn2eg6lZZKwPf97ZhQn0b
	 R+1IxkO5i7x98vYEYg12KMdwr+uzIao+PdM2I/t0Q8jfRudAqF+pyeB6eiCVHvh5g5
	 NMYfriLjv2NPb8/6i2uRjr3RXYgHIGd1PsR3mDJqlqlimjOzxOTwWhD672F7xjYdab
	 zYnOrneLYU9TjYrrlZzWXp+q2PVLmgttjpxXFfK/IwdZyd52GGo/aAZyIPIN4SJx3R
	 W4SCBY/Jl6TcvIbdSDVrzNUUNR3lS562cyUZxQmXY4vogccgHlfb7zBWba9ndDFA9D
	 WzWYDWwG9Nw9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9279CA5FC7
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179077743368.28380.18012772877665197729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6608ab1640d89ac803fc2a876ccf01326f5e86551f6febb6b0a7894fab7ec15f
Date: Wed, 30 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790777433
