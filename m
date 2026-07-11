Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C592AD35
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783738714; cv=none; b=HMXAju11+dcyJ6FKnnbslKtPjXT/8uAG2gr2mKYvOXwkByAodN887nbQ0/Qm9+pbDPVDmqb14FNsic/dw7l362j6ihLX44wYgw1AUYFwSbRrvdGT71pOB7k4eJBc6KRuuob9qBeN/zwuLkGaM4Te8CwMfPjDswL7Ye+ybHRdk/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783738714; c=relaxed/simple;
	bh=yoB/vR37CRnycW/Nr4w5vXvX44ZuaIE3gHkz6Oqq+DE=;
	h=To:Subject:From:Message-Id:Date; b=Rk1Eh56Yp24JwZ4NSk4xN0DMNlObxubRwEAyisYQuQQzvLMFMb149Lee0FgYjh5w+TlC4cDPVw4lwIvvT720UEfzzt+jbRb6Dr14HEP/K9/2dzvVeJJX0AOuwofdgorgbJokVr2kDMC2Cbud3xxQS1ZOFS0CatnAu5R1oO9Oisc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfXPgGOj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfXPgGOj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA708C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783738713;
	bh=yoB/vR37CRnycW/Nr4w5vXvX44ZuaIE3gHkz6Oqq+DE=;
	h=To:Subject:From:Date:From;
	b=rfXPgGOjNuuvasDfVVjy7u7BcN0TwaxYLyHsOHlJCGW0fMlW71ElOyV0uzf7z7yeB
	 VuxiFuVqgcjuo1e9jz+Uqvs22cYnrZzmy9Rt9Ur/yUyclcfdt/qNblcYu/fHNmviz4
	 R4GGCEfhSBmAO2xG0JdD515RcNs2f7EP9wirdnUO8Lv2fMPh0Oh4nQFMT0Zq4BHHF9
	 o//VqJWmqO0iCjNzdrbnqezNTeVRlPx2/Jb2auKSff8TZgZs9jMXe7so1UdsVlIBow
	 lWCVnLv6LIOeKNK1JMr9XEaswRd/Zoc7NylFfKlztBoum0yPaStJ+IN9fBsB+Ttk5v
	 TpUfioMCmXQew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84E3C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373871368.12485.17334751178490421582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84b53e588600bd5587ed36bbe2f9f8c9c4bdbac259884ed981ca8ea609bca9bd
Date: Sat, 11 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783738713
