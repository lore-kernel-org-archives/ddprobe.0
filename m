Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BCD9A955
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714749743; cv=none; b=ASZWaAHOeb16aLvAofoo9Qvx9xyCxZWTRDgc8b4CiyzDnDPK3zl07lv/79HCiAPdzykWHoOMB82LIF3UucQJxt+IoZYACY3RM2Oz1kWva78B9lX6OvjzyXAxTdClKvkY5RcCi4eH9Xo9PDQr0sXGrxukV0DwXqoYY0aiJWNntbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714749743; c=relaxed/simple;
	bh=6mCJvwY/QddbN2OhdFaK5XONmKOfCDwPKqp0ZUzUnDU=;
	h=To:Subject:From:Message-Id:Date; b=sKy/kjlBybKaEbe9u1tn7oEYEnFfLmpxR/k5D4KXhkaXH4WqAf6UCxrE7neW+6+rfr2LpNaG80rlcXWe2csUVsi9xf7sEP/4s+oRaV1UuoE7m1fi80/FOIe/cJSj9Co0HV9xAN+racGhS6vA8UC0FyNEjsU++9z0E++SXx5lxc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fwt/6xwi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fwt/6xwi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC3AC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714749742;
	bh=6mCJvwY/QddbN2OhdFaK5XONmKOfCDwPKqp0ZUzUnDU=;
	h=To:Subject:From:Date:From;
	b=Fwt/6xwiL/4T3xGA1y/sBeZACBYcy5iqcX+GM+uWuDdwMpuWgjDVMjstqyrgBuipb
	 3e8qbEf8gdOU+YuEyo0t+si7t2mq7JRWWLua0Z7sG49b+UdyA/kur4D2dUv93/RpSe
	 Kky4f2iHezJskKVCmFM+j17Effwf1PIq9yITX5heY+6xx+Mcvv5AzPvwfpR1KfQ8ft
	 yyYc+pg/IbUsCMV5lEDajfc/EAVUvN6VwBbRU9tv8cGB5Lp/my8i70M2K/DVIOoRKn
	 H3bavZKINUZY9gB3DIemTY/W+IqUIqdJUSW9oE8drOzcauq3OOjc7QjFHdSHJAH/ef
	 Mm56IbEhVHFaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA0FC4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171474974277.21325.406006400343482908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37d940471554ec814870671784106e9b8a6c3824aa082ae8660a2a4b870dc523
Date: Fri, 03 May 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714749742
