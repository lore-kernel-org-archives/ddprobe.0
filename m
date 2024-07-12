Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6110C4A3D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720784303; cv=none; b=gcQXfPGV8Up2U/B6c6bhPUBpzbcpSVNzn4+sRB9lbC8AJ56cWPb57SXyQLtGQAMrTA5FSQoqht6VbDoNb6vZ/x6NryY6JVaK+3Jaka7XO2TzBZDYOTxosOWBVkkYhB7C9dmrxX2zxoEdm+xO1opi/NQE11m+/7+RJ6lROu/n8Fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720784303; c=relaxed/simple;
	bh=n+i8rCIGVnYtTgTDqnCBY3K6P1Nj3PIV9HuxdvdWwF4=;
	h=To:Subject:From:Message-Id:Date; b=AKqdjHnmyqu3ItefHfsgYEwhEYLx54VFPQOfSbj5FgTNVKdgtP2P8QR4Gk6J+N5JtRiI+RbJ8So0xzgNu20a7Mk0cQLAOiPCD2yo7MeoMny++/VQe9OiSbpC2ZATZgIL5YSa+Op94c4Lk/cryCHCsNqKk+drKqXf5ZBkoXaSbCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=le4KJoJ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="le4KJoJ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAF4BC32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720784302;
	bh=n+i8rCIGVnYtTgTDqnCBY3K6P1Nj3PIV9HuxdvdWwF4=;
	h=To:Subject:From:Date:From;
	b=le4KJoJ5QKPTnUp2RNpvxXW2ya+ti1fvgF1zM5mFdwcJFin+1sXJQVPFfhzFOCkCx
	 /IDBZ5J6pQwSqkSZhBONMyLKOHkkTHpCosQMo3ipOj0qaG6fh1h1JndRMTbV5R0ivW
	 FBDIP/G4cc35OAyDeu04Rsc5iW7aHWwULJcokuQEUMOdLjcVcUy25fGcIdd/2lkJPG
	 1HeCydphF7VsqFlTcFTdCTEpffKYHoGC6AXj5JjXFNATDaf9uwSIkLh0jj7vY7OXJ+
	 iwb51bHUw3cWIcMP8jVBCcNsQjB2MpqluAZpL5QyT5bbVMb5NUcEOWY724CEavRBBK
	 br+xhVY/c1bZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68F1C2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078430280.17449.15014297704954035323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f159e1314e38b08d864357f21fb64acb26708d6f64212cf9109e07883168a00
Date: Fri, 12 Jul 2024 11:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720784302
