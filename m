Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56B38146D45
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720172123; cv=none; b=UNYUmc8VtVhm2Nz62dq3TN77pP0n+Xm+BMsQPUOvuX2mh+XIvuKjO0egtVVNchgJCPOreNDH3exLghTy/FCzTC9S5c/bm6s1x0EtwQOT3AEzzFB7+oUAasy0lNBfbj7vjgPj0kx8d7phMBuTc1vKK+PYKbLV+FLFCfFHx1wLr9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720172123; c=relaxed/simple;
	bh=Rcb0RNfOuM6K4vUTP+llzhMzariD/ThNUjEEgPBowb8=;
	h=To:Subject:From:Message-Id:Date; b=sFE8nxJxvlGkbUPbaE7NQs4R+ZUBCb7Cy/GoJxpxUeHo16u5rqrVjV9dXwXIl/oBbZA27QmZrmVasdmxfPpb/N+UGcg6/TXQ47do+raVvKqE0vHi/pDOQdkHWkGsg3K5TWMas/rOB/AJgrjRuJldqyDfc1x4RDaAn7dCIQ9SgAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAaTFMI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAaTFMI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3DDCC4AF0A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720172122;
	bh=Rcb0RNfOuM6K4vUTP+llzhMzariD/ThNUjEEgPBowb8=;
	h=To:Subject:From:Date:From;
	b=UAaTFMI2+5/jyafhlcGUUG0Mtks1HDoWeG2T38m6i9A3nz9xIbW6djOxrx/rqJ86Y
	 R4ha96g5y5aOrBRTJGzWAR8SrtHP30SZkl/Ocq1QaKYrIDuy0DMTPUQac03C/LnPhA
	 pyG/FumJjuSxeIDGKbwHDZ+pibmyWdAmqdxijNAGoNhKecP/ni+6scYE3rxbBmLGD0
	 NaA1Kg+diKYDIXTNDdFyfzDVHCr1j29M61qoz+omFskkWtih+bZlqsRz9CDRg6kxza
	 BdpWY92wY4HeUIzSS2EkVwiwl0kD1cIp51hyw+6o7eEqkDp1Z/iWM9/kkr6CBCaTuN
	 +SXrGbUgzrXWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CED5DC30658
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 09:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172017212283.27852.18112407062685701316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab9539c485bed0d01d617337890bea6d9cbc133705836443b498ebfdfc8d0e86
Date: Fri, 05 Jul 2024 09:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720172122
