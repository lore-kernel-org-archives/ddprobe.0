Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE01437D107
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777428454; cv=none; b=gmp5cHGIOmyxrsWWqkFviqfUi6pE1vy0We8IBfodyvJD4PCPsp9vB4Qtv1K+h9djrVgOBazb8j4YsDAdKo/BqKd6ruqcS2/SYkHx2D4TF0sd5UsK+cUqEiZmHAu1JHqAatvEwmUoosvDPoFB6MLv0tfsbz1qu5EGHercCxe2usk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777428454; c=relaxed/simple;
	bh=e/PGz1gGOcp0ndE1Qs81iG/2zRbUDevU1gxKt9VV5Lw=;
	h=To:Subject:From:Message-Id:Date; b=rPNF5ot/+x+Ye06KULJfAL7Mn5HQKntL9sEZTMxQC57KMnF9IaI5+FxobRbwbmSgsRGXRFim6t1K16tRZEineUcyndkHWGr4xFKbBOvoBTz2/5rzLCXCLJmKntL6uojWgbDUrWHLrwROLAs1daOBDO8u0ONNCd3D/nTzDgRsrz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goPbHeev; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goPbHeev"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF325C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777428453;
	bh=e/PGz1gGOcp0ndE1Qs81iG/2zRbUDevU1gxKt9VV5Lw=;
	h=To:Subject:From:Date:From;
	b=goPbHeevTA5oCpdkNX2tRqnpzdYX4NR8ie0sO+Z4LUuvCvN4Pfxa9ht3TYyEhIosQ
	 p5OqMnmcm0MiB17uEEazbaDZ0+EIDFaYKeKaXWQKX16AOq8wI8CEg3BwSUCabrrYuZ
	 YnNZWIGtrapkG8gpu7ACIIhqADo3CjCbcPgLVjdPU2Zdf3OK3Jmq41SSEtgIbMneuv
	 qSX5hkoFFjHLgi5+B7l0xPQVKupHQPiLm8WKc9TVjcgjIp2lXit6EHGBq6i5xqb+zB
	 8speJeEgLn6Twr/pkjVtXeHkOVe+zfq/+MMTXLN2Kd8mSL7q+DFaE356patXFLk75J
	 iuc+oI6NAb+vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF96CFF885A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742845368.30300.5273308306339268151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2249f9d722e964c6c12caa80a68442a0e7b4e33cc7b8cac1210ce4ba7967c38
Date: Wed, 29 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777428453
