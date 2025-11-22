Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3217C221FBF
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763799714; cv=none; b=sBK/aVMyDHzJ/cGUgSKgzbf1TKM8ijZI2y8JMbBTaL34uHAT5wJf/pQO9ZR4EKwM30OifLctV2nqjXO1bUTFQB3pv59UScJmAKGx18Hx+SFH/au97Ayj1zWjXOUz8F5cWZeZO4vy6BOd3z2Cu4IZrPABLV2qE2E8twtrsllxS1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763799714; c=relaxed/simple;
	bh=gVe4j8ivnwW6L/R2CMpicUOdXoJDYpdJJsb5C7VzYxw=;
	h=To:Subject:From:Message-Id:Date; b=RvNnprPbOQ6BSXZwbMq1hAGLly8gJudU1L/ek9+DLmOkwM9eSww6aRo6BDmca8tnWKce2y84tPGRWW9fvgCSqx8QLyw7Dr0DF+LPnXfylcNbbrOKqOk9+HFAaqfM1WI8pV0sbmfLhEaSPE0ZYS3QI5thG1lx88LkBjnW78o4yRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ineUc5Mm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ineUc5Mm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D16C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763799713;
	bh=gVe4j8ivnwW6L/R2CMpicUOdXoJDYpdJJsb5C7VzYxw=;
	h=To:Subject:From:Date:From;
	b=ineUc5MmMeFlYQez1dt2D+uYKDv9OhL5yBpKg4mHlPjKuJLn5mERPvk6kVE26oVc4
	 jc9/go29EN30yYCuB2IU69iX0aOYA0VnDZE3YD/Xse35/0wUr0NAhnzjeYCjbUfgeC
	 5gBMW8kNaimSg6UHg/RIowf/E3XmriwDeL2IvfyqL6phL8PpjU2IGX8OMW4KuphQIf
	 msIF2PNdkBWktWW2Ec6L4wVfJPuLfUuVAHQDViTxlPw+xx5jOK7Yb1IH2FiW/UVvaN
	 tjab+2u1tlF0g2x9eVJwYE/eHBmGO0ZsCD0V2z8BeMTcq2C3A7w7YdxTmr0sElhpyw
	 wT+U2xe23S2rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E60CFC51D
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176379971359.11923.333917022155773230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e99848fd05c7a0a6753bfdbac019cce715be7ca5b072abcacf38289bb2c55a9
Date: Sat, 22 Nov 2025 08:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763799713
