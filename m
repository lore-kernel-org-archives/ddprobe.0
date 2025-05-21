Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB856268FCC
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747834193; cv=none; b=kdiK9rlATudHNK32d81XbHEPv0Oys96Q59K8/hCDavgAPvBq/yu+OpMf2JpMTl6h4/sWVsKozVJjYyqmYSh+Dj+3WRyNcosqeBt4AeUW1w1tzYN0SLqER9dLadOdSH4aPrtPwrIzFSXHDM2Aj+Zw8prBIU31wOH2AV9chKaxS9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747834193; c=relaxed/simple;
	bh=VFN3xovse+GdNNATkUFWrOViUqlhgkGp9i0rwQ3JoKk=;
	h=To:Subject:From:Message-Id:Date; b=aYKsNw6U+SMjRV1is6q05URJUO2nEZKnE14JWjxCIksB+9KrcTCIpkN5/LHFm7Kgg8iCJ191ayE2S85azdXNIBQDLKW1YDkYIJAwVI3lH+pU/f89liDk7e3UHB0X6vY9LVmcZi8KOE1Z/SGtqKSJw28l6bbDn2E4EZEa4xZZThM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDi07BgA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDi07BgA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDB3C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747834193;
	bh=VFN3xovse+GdNNATkUFWrOViUqlhgkGp9i0rwQ3JoKk=;
	h=To:Subject:From:Date:From;
	b=JDi07BgAPXM25s8Fs76m2eNL0hLNpvusNxLWnMGFmtT4ypDSdaiQRtQ36OQFjE4gq
	 L6V7MOYY2+AmU9TxD2Y1t03mt4e+WiBYd1zJSw2xzJyxb3y7ugG163dzzoWm8152Al
	 6nKMcdCHOVrCLvWptVhIniQ7zFHjxxZss3hT08Esu7MPpdeVj/wpvNPlzLHgFpSkwe
	 2notBVnwMtrBFb5qQxSp2s2qT7aiiqKuW66qne0aLubEJhuM/bp+Mz3kAqTfgs/K1g
	 E7ytbaeBwyZyENzYfldvzvALv/hnxnl8EVGFIoHlfPfcrmmNE/UdyGrFRWrfuaKm87
	 5Lxnu3vk7lzFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91862C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174783419358.20917.12453623257004699635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb666bb619a36b9079f464c8befb52769b6eef5f0432146df9c3ca52d9068255
Date: Wed, 21 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747834193
