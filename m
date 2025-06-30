Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BBD38DD8
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751285394; cv=none; b=gJZHYnwYRmMjt9XLvlgSwEL7Og607GRRidF58YA1uFIik3JStU/SkebLoAgU3UMi/0hyXSnCfPEosyJiFYzJN5a9gdjSohAYRv43RlOZ883T6lnMRty3OdT+SOEsqbRlxoDZNciPp99/NoNJzPKhEC234bKtpzNLNSQ33wOaKPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751285394; c=relaxed/simple;
	bh=sMXsRTaOrt/t+iqbOxtMh7xNLVpjtcLlG461zQNaduk=;
	h=To:Subject:From:Message-Id:Date; b=A02DLxOicGJn9HuwczGPe4XaXgmx+ytsf9cKV6079jpF2Hvceo+0mglGOMZhBzBD/FnVcs/6tU4zMHTwO1T6Wt9uLG4OVv328OEmgxKKnOFefsrotmFhFrC+Vaw31iuH9vkpboVf5A8iPCIzHrHArrl2HV8Bw/i/RZHriBD5C8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1cJMrrc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1cJMrrc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E628C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751285393;
	bh=sMXsRTaOrt/t+iqbOxtMh7xNLVpjtcLlG461zQNaduk=;
	h=To:Subject:From:Date:From;
	b=P1cJMrrc04Xd08wrI9vs5YifiuUXUmoBaD3FLdRahwseCYwB5QwZZLtfEA1+/Ae/d
	 nNLYOFP1SeVrOkESSjUgsLwZRlEFBFzA2ZFnQQCdc994vy6542az4nLRMA7vSgCoxw
	 a/MsPr+MU+8LBVLGaFvnNOpuIy7F/LSonMs4rQ70oCe37TDA5/CdEhs2vk8ScFBV0u
	 7R7YKF30bEvc8ABmF26kliZR2nEu4qLMTcHnjaF8959oVw+oN0pRm4IEfXKSqWr7J1
	 DGI3+y7jLsBEdf8gKLAJa5dvzavVaV5UhSEtcF2gJD68ry2g+I2n3FAvpvhsBLclOS
	 rEvyndPCHYz+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBB7C83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175128539358.27944.13086719348068189485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036a5c59ea5dfc1aca113bb7c867fd2d24ca6cffb7a5e0e92a5724055bc38ca5
Date: Mon, 30 Jun 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751285393
