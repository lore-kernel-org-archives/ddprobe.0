Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4C733688A
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772675694; cv=none; b=mUTqdc+1Iu5V0H6Q0WQ67KgCD7zOoa9Mo7kD3DIXrm0RJpgCIHH5ITTgfviQEDSAexGRM4L1muvAhrSOjvvlUFQnv+uF5Wc3mwck3M62JdkkeIwdJ5NQNUprtrFF4yigjIKLMRuG39kpnB9XsW83FrtCXCr9aNcplN7os7cLFvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772675694; c=relaxed/simple;
	bh=oCfOKteO5FWNyZZUdoFXNSc1Bz6cY5tBvVH/RD98D8Y=;
	h=To:Subject:From:Message-Id:Date; b=F1m1QaDBZdJbydayyCNAIcCWdMBcTCQGajCWx5ouJ/3LUNg4BExdTtTuJ4xkFh2ir32o8ZTHsZNjbzFGWqpATogoF79U/gFiloJ4Vv1KVIXf2D6E7XD8Wo5qsEsI/8QO03/dIGaFP+Bfrm9iIZH658TWynvRCXXE3NUvLgAlpV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVIeqQ/V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVIeqQ/V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9A1C2BC86
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772675693;
	bh=oCfOKteO5FWNyZZUdoFXNSc1Bz6cY5tBvVH/RD98D8Y=;
	h=To:Subject:From:Date:From;
	b=IVIeqQ/ViHG7IAPZRulM729lTpoCrbrk6q2UEZ/DHI68NCuxkm+XEt1sCWkkaqSa6
	 F5K26WTWSVpID1AiO9jLQUfsyRGzTPbpkX9EOajnR/RVSPCqRM/weVcHQnWYJvVhU7
	 Jn2Vi4UQoC1ec6+PqsIMc5xrV7+2VljYiJD2XiTNT9HjEizXs73jtfnlGqIQUyB7es
	 Z10jPHZHdIXCzrBXOjAd+CJWmLeSPCPK+TKDs+6gEYnMjwJPYnPRLpGlJZ2xACWE4/
	 TZ+ECDfPfom7nYMWu7gwbxXdIZT4Mbh4R1V1vgHbZfzLu+5K9vn3aRFq63yKEv+k3D
	 RgDXprMloMM3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900C3EFCE56
	for <ddprobe@lists.linux.dev>; Thu,  5 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177267569358.27265.9685019120918903810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1c3a15c04cbd7ed1d805c206fd2735192e47ddea7d80403d95f2a9eac43b82
Date: Thu, 05 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772675693
