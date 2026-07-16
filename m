Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEB138239A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784177914; cv=none; b=MqdPyXj4J6+VGMAMEYmfECI4PkjVVxOANe3xffhTBfGASbip6KSw7605L5Xrkh7P9jET1o4TNRmYWCwhoNE+MB0mtY5+OxDFWtQC+4yJOQVtPnKsELECamrjkmP7D0ApgJC7GPgfa6YHBT0/tcle7Gv30GtxSGfgArYuFHBe4Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784177914; c=relaxed/simple;
	bh=lZrlDqbwRV1AogR06OiSkIJSfouawHkzmFE7M9GxTH8=;
	h=To:Subject:From:Message-Id:Date; b=PRjFPauSST4aTE1GG0uePndGfj1c1UfmP4FO2mOQaXzFPdEFIrDzpcxhQAM0FYH2hlkxED5tC4xaJgnf8Zq/FOAZggwse2XOiiKYGFM9R9rUS2Eb48ZiCsz1zsnWHGLxhx9NPfuh9/22oplF5Oi9LntfJcBCqjs/DjbP8IUY7+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Slm6GZsw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Slm6GZsw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6A53C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784177913;
	bh=lZrlDqbwRV1AogR06OiSkIJSfouawHkzmFE7M9GxTH8=;
	h=To:Subject:From:Date:From;
	b=Slm6GZswa56KsleSDyiEvwrxPwk5CmwAMmJY5fLTqiEU03xamjlT4PnnDWaewrzLc
	 rma2/JHdbvENUBTD3CAtXJIYGfpcfcngFITcXq6qqBJ8M4Lyml1t/wEFaOE88182fX
	 0pVfDQhy8yyUNEP37FjIOr/gb4ENKtVnUtcwOBUf3F46C7ULQVfeMMue1P7bk2i2vN
	 wcpv5VZPaybiE+WG+P/Tq9e+uT5anWcADjfc2IHjNfrd2mGNJ3odpWE6Cx8X4IoDmH
	 lMgwxS2tgiWWVVpMM655K8uhC4md+muly3nj/+1MibWRew6UtbJSijw6UAhA7bY1Il
	 S3s/mCwnDymnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2721C43458
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178417791372.4164.8322406849160286543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee553604d8593bc8ca112f1316df7f396400d9fcd8e01c838c614b0c5a4af275
Date: Thu, 16 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784177913
