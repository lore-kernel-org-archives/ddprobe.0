Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6681531C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768659834; cv=none; b=f+bBr9mWdhmGePjNypms3mNIdwH6T1JvxvlWodgXYR3NK18CXPRKiTpRJd3JrPvXFAoupr3LTGICPJylafnn2Q/jVq8Ihik7lsrYoUV8ER9U5Ob1ImQ5JJ2SeT/7J8suy8SBrQQYGy/Xxq2LeKhjEYHB97+ku1BiU4ynX5nPj4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768659834; c=relaxed/simple;
	bh=NxucYD+t1JFAHya0Wi/MzTkT3L2RVlTYxXq3a4IPyIA=;
	h=To:Subject:From:Message-Id:Date; b=GrNotT+vkYQrmLlva+f4Smo3yp+SX6SRFq2aW0/DLQdmcAm21l2tnlCNXR7EfXQrDwqVqjRQ1ymTi3HzRo0OTnaoHmdKVON6AKwQuVWzt1HujkVqAGIlNgtof3AUQkB0by0x6FKszGU3mgLH/QZmJ8uuARZEAcRCkYD7ZkuXiBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmiVmp4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmiVmp4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F39C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768659833;
	bh=NxucYD+t1JFAHya0Wi/MzTkT3L2RVlTYxXq3a4IPyIA=;
	h=To:Subject:From:Date:From;
	b=tmiVmp4pf6KDQfCZjbD5Q8NozaNmd120XIeP6jpO1YYNL3dYH2d3dRzswGs7+BQTO
	 Sd1ScVShY7ObWxlUuAxrtZXpXAdLD5km/1OMfuw4LgMPydEcHDFNX/vF/8SJwDwA/B
	 /zUldoH+AcDVecP77Q8J5z6X/dFjsL2Tv6Og2Dfeg/taR2UwV4i2nhUG1DjvVi7fd0
	 /t7rOXHFKOC5UEVJ40JGPTKRBcSvz98KD1vELlUdpAP+Q7lbXNCTYjV1A0lZyfEgZX
	 5g9EYTivsJLGwARpBGgHXNxMVQYuIajcxTeGmYUSzO5cIWAhGfemKEKEzNweHjm5eX
	 wvhZixeRJNWLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901B7C98329
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176865983358.18844.4578909577467927330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1028f4de7bb9787657b0da1dafb084a8cf11fc58f7ab99d3a0844ee5322cea0
Date: Sat, 17 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768659833
