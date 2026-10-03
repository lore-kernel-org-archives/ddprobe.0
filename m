Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA6D3537E5
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791061834; cv=none; b=YAyMcsJGnBPLA+a7NFiU4SR1Sv/eAWnezgp54McjpzVdGV6K6lQKB8WbphYuKeLtLTuN3TxItbgMHgSt4BK/K+Dvb4HXINketJQpzeC1+nD6Ql1wQtdRcUcUFgz3s7EWJOKmZK6YV5IqsW7VPYtmxLcQsaSWkSwVWO4fgOAyZqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791061834; c=relaxed/simple;
	bh=BfpRNnFS6dTXcu3wg01A+jnlrFfEq42rt8vnGHNEXiQ=;
	h=To:Subject:From:Message-Id:Date; b=ohDuJKyModYGBAOHDZy+2f2B4QFzu0VsZsvCyc45v9hMQiqXySXYcx60+zdvl8Tip0h945Ye/lbpzrU4dIatVirT3RFM735j0L7ZO0ReyGLmv7XmRSSUm2+jjGEvX0ZaFD8HDaXPDKAU5W+vhqBM1v6s8ZDCGwfOlDHsmQv64mY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iq1UaaZA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iq1UaaZA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE5FC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791061833;
	bh=BfpRNnFS6dTXcu3wg01A+jnlrFfEq42rt8vnGHNEXiQ=;
	h=To:Subject:From:Date:From;
	b=iq1UaaZAf1Jt47FNbvV8B0Re5O3H5p9DAuqcpfs9cCD7QK/BKkb6txO8FCQLldwTi
	 vbTa2jEqGbBCWKAY8mxnZj27YXVzqElmXDptJ1fCCQOxu0MbMJYBMmFAfL6+FpJdf4
	 0UpzYrlp24iTNvPgiF1E24pfRyUKlMTKn8Bjgds9BiPrcHNz3v+RyA+154vmViTl08
	 Y/iRAS+Y0YQeIzargGeuzM3O3rpmZ0+/I3KrHuxH0XI3W5g6E6q0HeYPE1QDQQB8cA
	 HeyR1O1no2DbXeN0r6nQWrWHkdKtPqfFLMN2h+puXnih6jlvjDeRtJbF6xspNWx7cN
	 e9NyT4ZZSbYWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEC3CA5FDD
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179106183369.2246.8751288573493945269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ee3386b5655f0a8eb824c268883006ecd8f764d9517bd7d8ed78d02d9dfeef
Date: Sat, 03 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791061833
