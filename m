Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EA9176FA5
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719412403; cv=none; b=SYfHhbxBWBzQPxJbkeikO2XaS4NzZSUHid1ZrkqWctYxUyVC3QjKmo+lflcH7V1ccmFp9oxXsO5JyoQk5f/7encRRC6T4XJyKijyrj8I9dJfA3jJN7mS14wD94VpQA5bX0kryYNbM3oLaKVdcjZKFTFtoBUpC5qUnQykmk9u5K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719412403; c=relaxed/simple;
	bh=Z0W+UglAdvufB5cFquJWemr+ewAsEA0R73JTghAbjgE=;
	h=To:Subject:From:Message-Id:Date; b=aYmCbto9aTjjqI3dOR0ukC4Y/yRSvZJmmFgyu5gaHYfJetps6EIFyNE1uEuTn4knVhEuKLn3RBuUVT3OELewuCxa5Xh79YjApdN0ptYBWXwvv4MVyfW1U7zOBBmK3x60UVSNy75Y7McQsuInLzhNnlnDuy3t8c4NYWTFfOjsbRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVrzV7w8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVrzV7w8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBD80C32782
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719412402;
	bh=Z0W+UglAdvufB5cFquJWemr+ewAsEA0R73JTghAbjgE=;
	h=To:Subject:From:Date:From;
	b=WVrzV7w8jM0Y4g2tbre7rAzWUSowFqwrAL6V61JTQuUozQqZs02FERsLE7+vuo4Ib
	 N72YEWuYtOVy81qr0z+XWHJcBsuCKKs92Bb2rY5Q+kXKsV1WFO3Yb+KOeEiOpglJCY
	 XWCcV4Ykv62Q6Pqr+nvPYLOXESbPGnzTleCX9F1+GM3+IyhlnFT8ok1ofCOPF7trhf
	 UlsVLTIcyjKmQ1kZ/hiAUZxN9FdZE/QvFAm0XleylgoasxigELFPCH2GW+y0MVTRHe
	 QOR6FY1JD/duBpDjcsaBJFvcUQoAsBc/nsTDI3UTvOOkLXtFkY5MwypHXAFJLpjwjy
	 0uCqggDM2As3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6E67C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 14:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941240280.21276.429282895927585314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3029af869fbdd96e07083b53d708a5f98680cf865bc315f0e7e72a2d8882d17d
Date: Wed, 26 Jun 2024 14:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719412402
