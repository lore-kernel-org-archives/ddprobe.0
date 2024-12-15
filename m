Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDA0186A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734241554; cv=none; b=JDi/BXJPpLOuv+d2FfeVJxSzfaryaYFUHyPD+oZSL3UOGKF/c2xPssPj55nG4n7Pr/neNGvJuTrzOqgm5CDM1hi86978DEMUABVEHT0ZtfR/Ww3mWKacMm145xVq0phxji0ffKYCe1rQCK27Up2rng5VQSAegEeLfHyOuoWTiF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734241554; c=relaxed/simple;
	bh=Xbkw0JATjtMUa2Nqqhao9i43b+h8fLoOXAo8Uq6kwuQ=;
	h=To:Subject:From:Message-Id:Date; b=Av1Xs2yVJ/Z7FBgCFaPH5o/x+3/s0Bccvb6B/6lpcWkfKpRUwygcRjurs/beL64WWVR7bRLfh22u08+jHV7JXLjMgpAMr5DDwu0jiuxjr68NiuNuJ2RQI9GC9D8T7VSn0GpqbEiKr48Np1UFyRscXW0qdgLcJpKnkJzX0zFNG7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S3MDVlUw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S3MDVlUw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A96C4CED4
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734241553;
	bh=Xbkw0JATjtMUa2Nqqhao9i43b+h8fLoOXAo8Uq6kwuQ=;
	h=To:Subject:From:Date:From;
	b=S3MDVlUwFPFNRGxgRk8Wf7aHEqD7X1Qv0MJhgqJYCknhfa7NBtgpQRfdlF1EOSdoX
	 HffBaS/397Fy9WkIfIcLwkoQI+qoetlfdSxNP2/iJfap6pKbdiQWWFaEdHAIXgWYbf
	 hDaLmZvFn3fkHsbZe7rmWNY9mRP3RVF99T4EEKJklUWeFDjD0RVHQsnlmgKRSwd/1C
	 RaG136egMI+KS00XymHcMiRyx/qK5XDGm3ev6KT8fRKZZnnobCN7wWD1S7JAe1gcrJ
	 6kZTwmTn89AfZVH4NEXzeNhIWxuabEP/XvOImzm0hnB+Q0eJi5BichiVi/GrPCgpBU
	 xCsp1KhwpPT1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC25E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173424155361.26894.2124006244518457594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00663f4b290e8b02f9770cdcc5e50a3fa64dd744effdd9fbf3229ae815353e03
Date: Sun, 15 Dec 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734241553
