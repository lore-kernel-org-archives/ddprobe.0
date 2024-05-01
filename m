Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51010646
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 00:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714524143; cv=none; b=Xx8c05Zl3f6IR+eHCaHL+pWIx5pMv4sY7vWvYV5ZyfvFsLOItBv1edwKSEkwRIzM3Bo28eZcSNbzR3Q5oIsBKG/v9B5j3yJFL59kEvQsRMAatTBSGpYN2nVbCriSrwcWATKVuIIHFS0oKeC2ur7makWfycK3GwwOgs90EMd3nd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714524143; c=relaxed/simple;
	bh=BmiB0hsO3nzzSVG9ZBZksYCxcXPTPWxnGgYMdxytqAE=;
	h=To:Subject:From:Message-Id:Date; b=VGzL6Tb2fbmjJohFBfzx+YYUBgTLichRGxOxRU0Oy9fDpbSVn60RUAy2xPKVGgxJpZP3BWQpOwDfOkfMhPWZ5BNgWSas3iAtvUqlIpZUnyhtK3Zg3JRhyxD3Q9Zvj/a2my1FdNyeKUQT2sEU1xjBuDQy88jUEVC/WcSm/9bvhco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0bFMQZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0bFMQZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD73C2BBFC
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 00:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714524142;
	bh=BmiB0hsO3nzzSVG9ZBZksYCxcXPTPWxnGgYMdxytqAE=;
	h=To:Subject:From:Date:From;
	b=h0bFMQZNu6tCnJdggiopr0N58yAGWosT24zPDkFeGEZQGeli5yWyP5z34N7ex9Ov3
	 L3tfYhNmxkPUdarnSWVpvOS+Lx1RGZbpSRU1gRkvL2Lae66a4zFRWebDZWAIG100C1
	 tIgLvy+d6UBC0rNnNM2PEKOOvQ0QZDuwpKdnCfwYn6+0mQifFSSwIHmUcBpUmk7BQu
	 GARv3f9vEflgiQXfGKKL+J9RknSTQuo+uTXFtwkdPy2P6vmJc8fSpaYqaoWVpNzL4t
	 1jnZ5DPBL/LOeSIt4Ss8M4FY62sszo2Kp9Dga/D2XJeUuIT1I3+6NF0COf9JCj79N8
	 P70wp+NjQH7GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9CAFC4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 00:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171452414275.16575.8729119722336029228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab34abb9053204d1813b3c559f1465e9ef5e38e420b39638c87a330a6fc1c57a
Date: Wed, 01 May 2024 00:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714524142
