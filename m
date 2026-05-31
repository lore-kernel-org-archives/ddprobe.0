Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CCB24679C
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780268074; cv=none; b=MRb/PRVpqvyNm+O0t4d0+caSIYO40TS6JGPC35SpXuJXywzHo/xP4OaQKZlV7QqKjgPNNYqduhH/cpB57Dqe2UoPDutxCYi6gklJfe9V99JISEFp/GUpgMVhD5bASF488VcjLW+kgDKfi6IRsuEkP7xDBqx7z5MbvJfL8ARQQeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780268074; c=relaxed/simple;
	bh=fs40Z8rK9dZuWWIZZSOasO7iEvlAU2ixdqYoRYIvgt0=;
	h=To:Subject:From:Message-Id:Date; b=ko7aoEwt026q0zwS3ImePsqMCDPGCjgMGQid8i/ak6Fkhyzkcb7YfzzFnRT+TndflNi0FL9QH8T/SAqEUp9lrs/jO0VAh/WQsCsrp85boameLvzGlU09hCTCTrInEW3SC2OqJK1pVPow5sGwIRFabWp5nWYfbNgyKbu2kUbRU8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pe/7qmB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pe/7qmB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E3CC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780268073;
	bh=fs40Z8rK9dZuWWIZZSOasO7iEvlAU2ixdqYoRYIvgt0=;
	h=To:Subject:From:Date:From;
	b=pe/7qmB8QOHtQZR4UM3iSFyYM6yrEohOu2VsWXuRugT6YJDRiyGU34nIeLvQWXSWK
	 SFirl62BpNtsMa4md5pUBPFpI66BzYt8W27XlnT7EDCapPhZFz8Znq8+aN/X3i1iwp
	 mgcXfdi6s4CuX3fYfVHqTGTLU7/Ud3Qjb5m26zxxAj7MaVa6zsCiXZYMbvW3n7WOQC
	 YhPYjwsrcchkVhCBipoyLHlTjEdd1yZUT/PmuPb7iv2beppSPcaYlboxhjkCZsgHZX
	 Zrf7EoXBWIZBSHUUmvNBxISDuf1za5/kgi/Nl42x3F6ePhIAjNxhu5ke1Ibzp1lyMh
	 3L2BLM166tqCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A65CD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 22:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026807370.11742.8079280125197132796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c457cf2078ec9a3c349faec166aea7c1da12126c1101f15fee53774a42b6697
Date: Sun, 31 May 2026 22:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780268073
