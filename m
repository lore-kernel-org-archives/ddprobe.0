Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DFA1CAA9F
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737715554; cv=none; b=Xek1mMVf7AjxrSw2kwN1dMOuQ/X8Zymg4G5OfHE+aguGzzoM7/5d7IC/NySXSoYPoLy1f6FacgtICjzq4vdR0ZCW5HSqgLshU1+fYFv38R9xEfyt8OQ33VXA5lN07xuCuhe+HeKtbDVs6X1NTmgekg2tfiPRsXEthj2pJrw8KhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737715554; c=relaxed/simple;
	bh=mxm86ecgWLzs/GxF+zZk8ltFwooqKsO1mutZl7U+RyQ=;
	h=To:Subject:From:Message-Id:Date; b=iHM1NuQP9dsfYahctqblMW/BjuI9oOmvt840tbiabHVgZhTQ3oNiBfX0gaXr0yhTEKCXJodzac84fFmvSOXIuvO8Iqu2Q8BJKV0aaiyiqme9DzKDU8hgVXELRTbUg6DTRwF6yc3u7bl1uRmnXVutzZE+4NhGL4CDPR22W45nVD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ch7Q/PAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ch7Q/PAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D17C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737715553;
	bh=mxm86ecgWLzs/GxF+zZk8ltFwooqKsO1mutZl7U+RyQ=;
	h=To:Subject:From:Date:From;
	b=Ch7Q/PAlOBnZEOXzHzTs5wGQm/k2roQRSoioQmHWM/RXG2uEFn/SDLQgJggPbhozu
	 0oaYN4jM8+PPAtwkn1FYOjOsu5cNep0YKLR/pwrgmlbIjiZ+O5hclzcWbtCLDCrIVB
	 725yJJzgLKD1biOnJ/Jiy5ddiSOMkyBqS8S3qXrs1i72jR0XpGW4Vdh/HtDoeA2n58
	 jdGhk69tEPonykGolnFL+qVBqmMU1+MeOpLxO0+PjUOogxA7vBPqJnts/IWSONAVos
	 StY6VKy2ctj8sfsg0Myv4BnxfeH5IqszkczkjIY7SeDG1SEyjcUWBPYpAe8+W4i2Oh
	 e5kuf5xuYYYSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E94BC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771555363.24845.13145344240613454299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0655a1690ef6e22e7e3fee76d24ae26ed386cb7a37bb66510eb9ef7a3a28003
Date: Fri, 24 Jan 2025 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737715553
