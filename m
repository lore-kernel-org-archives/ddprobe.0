Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580AD3876A4
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787598034; cv=none; b=r/dhf2CUn8JA7Ocy8dxINBD8hqjv6O+Rwq/sKTt82s2t6hIZfHskt0ez9oyBomzZzQrHZiZ+BWjiljJ6TMQWP+TDiw85pIg2k9Hbe6g0D6mSRk/Kopm6orO0txJIrfZqdS0hDF1iSlkpoElTRGdDIyCOXfLr68G6olWsAwFAq90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787598034; c=relaxed/simple;
	bh=qqqO6wjJMh0r6MYKIktmyairB8E1jbksd+25UbB8Qwk=;
	h=To:Subject:From:Message-Id:Date; b=ohAVi+vtWi77Vv3waZPmvp06UQGGI+Dx0eyqS5kUTDjRR6kScWn6svmPoWTu6bvbq2rB2Auu+yZjWpl7iU8vx5JF6/oXTp+1Ine5vh7fpoDgFgmPVgyo4kdLsE03Yv6oBmbYN6/tFzLKT9+t0vtfBanDHSkh485Zt8Ra8dLeHWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyPIOKWv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyPIOKWv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE608C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787598033;
	bh=qqqO6wjJMh0r6MYKIktmyairB8E1jbksd+25UbB8Qwk=;
	h=To:Subject:From:Date:From;
	b=oyPIOKWvcstg/vWZlvY6Iuz0Gve1wkPmd32ZGOI1QAI9ey46wcSGdOIza8nCZxFkM
	 imAyMbzaLYG4UorhX+eRABmYPoqe7abs5jT9e4zdKnjBaBMmBWLaIr74lO0itv/OL4
	 FjAyEsYH4XX65Pk716EpF1NhvpouiIB8YrFFoQ8DpMxkEw49y5W7wG65KLbGoaTg8x
	 j0x+mcK7eCR26Alcfsvf4RBxYyByenu3ut5k+UbRcGBOinjl73VW8ysBmHY8tq+g6o
	 BWm+9mKC/h207Jif1hDZPQs+eahvOSxeHfdq2U/F5jgULA49KSPFG7g0NLrCi3reWA
	 gURZStrTWnXtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACCA1C5DF9C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178759803369.14881.16616415133958656783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a749df14c6c9fdb0a1d157e2d8ddd4452b4ecb4daa4d53eb0efa6dc3a19486
Date: Mon, 24 Aug 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787598033
