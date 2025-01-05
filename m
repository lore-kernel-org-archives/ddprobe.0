Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6ADF4F1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736082354; cv=none; b=tVCeL2yqE0BXpNiXZF8bKnLKn0tT6Nc0IztSy11BU6iKeQsuHa0epuWZX0vSPDEqX+mVEAgCxCoJU9f/MLWsDW4UkZ3fqoE9BfnuseZIf9rAKE/QF5G5HoxSmfhseFyQTAascwPL9MFeeZ7VwLU4jg6jdwo7/rrySr9rVev5Bjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736082354; c=relaxed/simple;
	bh=eY28JKXZREDXEsnhNzA0487boFycFyor02LQlg+dzkc=;
	h=To:Subject:From:Message-Id:Date; b=qcOA0/AKn9nCqDC278M/7yLrySE3IMB6PcYUwcndHGxp04bfXAsOrCRqCaU1DZlbo3JSzSIAUTn8Dcyy0YmNvwPXTQhvzFCR2Uw1i6B/KHnxUpLKOeJrece53+ht0BAwR3lC2GVsvplcnit3Px7AGXkLrPw+3LhojJz0jrLAw2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKq1Sqww; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKq1Sqww"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6DFC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736082353;
	bh=eY28JKXZREDXEsnhNzA0487boFycFyor02LQlg+dzkc=;
	h=To:Subject:From:Date:From;
	b=sKq1SqwwiqmqLw+IvJw4S0rItneFE0itZ64jD0e8S3KchOqB6C9i6I6tBYu/NnMvH
	 LWIbGX5Ph8uqVhnppH1QJFPnl8PHl28JyNqrskrVr57BD+Mm3yLaD8E1ZIS1HxPv8e
	 UWRxwsZ8HEraevyrU7X9PHawou2FbWxGzzggXb4dwmzBGD0f24f7jyhjnGFKBOMgdq
	 y/2Xs0HkehA3kvRIbBhv0iV2HP//a4fIwOP+L4QZL9KcaDE/YtMEMIYrfq0dMhmg78
	 hVyVAvuBlh2VkQ8qVv3S09I5uxfFWzwZe1W/5sfuNGXWkI6EDrO8m52xftnqKt7duf
	 XXJv28hqsVLiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CDFE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173608235360.32526.9586396518423621740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad49eea1fa538baa6a31e44121b63a50d7927f0bc6457d2b4df6af3278d4bed
Date: Sun, 05 Jan 2025 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736082353
