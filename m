Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D86366
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746814794; cv=none; b=PkcWEfrc2pRJua/y7oWx+iPVu3TXAU3X6tsuxW33DyOZJthjvvtxXODeg2Fa8EDv6VG1Z2SMcFVm8q46mhE4GOBKuwA9u1+D6tlVWvvCa+WbN7hRLbDRY8J/taFCDSZoOJeHUI2r/aRTdUOqnVvDkspZIarIGxzXEwfGud3pKtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746814794; c=relaxed/simple;
	bh=P0kLctm1ceyoNEyX9nLh6ogM25RWp4HkhnfqocNv+rU=;
	h=To:Subject:From:Message-Id:Date; b=h7qJzFbdgKCgKhhuH0ug5UxHXzMk1GoNFfy7ivaD5DR7Mv8+/YvapruwSVTAeaDKhuu+DxWYC7dEg6r7ykTxkM6PFU7iMkr2tTZOfX5YS8OsVOiI2osJ14xpK/8QAeqyA70esrqyq7h1RrBiEKst9QfnRFt2yXPdOj8xndGmf+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qi7+oBon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qi7+oBon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F4B3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746814793;
	bh=P0kLctm1ceyoNEyX9nLh6ogM25RWp4HkhnfqocNv+rU=;
	h=To:Subject:From:Date:From;
	b=qi7+oBon+1tKp2fSP0dg6d2+7SAQeoEkzX5XWV6CyR4YFlD8mGMiNph7095lxJLWR
	 +SCBM7TswSDdxRr2DAnUEYhYUagEMLJeVhTY7X9CHGPO0nXJlE9WSDMKOFrESKq8eW
	 ePvjeRAZcT6uIFYslxGUnPEJWySu5UzzpscYsf7egZ0HHw4vM7rf0m7PKX6mcSB1M/
	 F+FTKjFNe5Ir5Mcxna8+tvP23zZdX8NyfxM4oLKmiAqLs7Sm5s4SRQbCNLF2HzGrHm
	 5tP6dJ5qlUERLu5k4D+LWgsYVK9FsmHY7hSOTxuldDdtD+Xe9XP+7JF3afLTo9Vf2D
	 kfs7M4CPmEK8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8FC3ABC9
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174681479357.14539.620476425026685896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d7aaa2618b09af584763a0d07604f3458dfc8097c2c830a1f7ec93ecb661778
Date: Fri, 09 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746814793
