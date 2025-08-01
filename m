Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E06228C845
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754077195; cv=none; b=NUR7NQoE2VJbsmWv7hyXSfY7scfcfxDhXZ4IpgXfYJ41y1/nVldoof/PdPPSKgL/73KiCKHHqPfkHpxe7QQ4OvcIuXcqw5QBwqgghpJ60we/CHu7dtJo8KDPDnsxGbu9I7N1Ip5F6M7gYPyh7wxFy8MoqouMM7v0tuM8/z6JPRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754077195; c=relaxed/simple;
	bh=wzJuYsYjrlyDoVMaabiklSacJ5Zc1blEqheh/vw2xdw=;
	h=To:Subject:From:Message-Id:Date; b=G2D0Ct9rZUz6xl9SAtmrrb0w00d5GS2cCdfeU2J5a8DHbYk3ycODCKtyfCurGMBP5E3WmTO/z0n/j0i2Qco+dHfWkRPV5ZhxGwdRzMR11S9OB48l44o7AGtbQNz5bBaeHVEEucHQ3dIGnn4tZnFosSrKMjHKxiHNQr60RfPrTlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMPrzKpK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMPrzKpK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DC0C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754077193;
	bh=wzJuYsYjrlyDoVMaabiklSacJ5Zc1blEqheh/vw2xdw=;
	h=To:Subject:From:Date:From;
	b=tMPrzKpKQP/shAL213sTVfazfAztW+SmqmzUoSzPB82a0OyGbstrG8wPgbWb3GPbr
	 RCCBrJ4SEpLk+o1zfv3HF7rUqBeq0uVqCHvFbTkc7NqK3GOI9OYmJRGVpL0UUjrKLO
	 rHeWwVU+f+AYNI9TobE70mDKbXDP1yHHJyuV8Yi6o8Yv+lDBwJPP8+XCsUDc8LwMzW
	 nHl2QLQe91rmIhnV8qSziR1eUdSGSBnvLeoeYrU+dk2nYoQxejBi6JJcQUD8PopxDT
	 wsvkGiPIc2qL6BT/W+SY9otHRmYTz2OBGLAr+2OJTVfELr53tXmOCUZYmZqPxA+Lkl
	 j4pQ1B2IlmtdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EFDC87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175407719357.16079.14390384965431641109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a730893954ea6a8c6766c2ec6ee0e027cc4b8a2d2e7c2aa2d4d1c7ec4e0d0398
Date: Fri, 01 Aug 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754077193
