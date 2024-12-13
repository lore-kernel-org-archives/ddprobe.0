Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F9457C9F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734107754; cv=none; b=RXcNzsZDF/qphRoUaL4MHZtqotklTsCYKaHFT3oX5EgVvO7iXabrSe1rW7hqtS44dHGBHUdIihZLoUsDodQQzw/2R7czG3S8SqhrBlLG4Hv5fZrcIxmExkOUw/5ZP8mkTeBMYDfbAK7zxEggY1zGMR6oYDebpog9LRgifjqsoDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734107754; c=relaxed/simple;
	bh=CTVWmyDeIaQUAwMR8TMy/95YzKyy5zy6S4do/ZLvjdA=;
	h=To:Subject:From:Message-Id:Date; b=e3tDroVmvDsqKIkFiYy63o9fYGBE/m63ZPr4+UzL3Vrgk6DekJnFKsDUcftTyWY8qffLf0BfEmm71qx0sapff9ebWl9wIlLfYTU20+5DoRk1qQ9Ij/n9oh6A3hcrdXAlx11G54SzETLerM/HA3TTjrjR9x7cKbC8jcEBuxysDc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exA4vhWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exA4vhWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E57C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734107753;
	bh=CTVWmyDeIaQUAwMR8TMy/95YzKyy5zy6S4do/ZLvjdA=;
	h=To:Subject:From:Date:From;
	b=exA4vhWPKKI64NauYIxJa5Bgsb7Oo60inGrEj3tF3p+31NXv20NZC9uOy59oTtUao
	 pGcifNfwNeSWqbNx/opJY2meYdW/iKMovwNiBP1cUX4nmM/JY6bFGN5X+kh9ub03a3
	 YZC7zmaKYLIhsoBdfIv+88Jo1qGIfM9sBOW45cz9hOjRQLshKXhtt2/WLFgAtbm4yI
	 4JjWEEApv/+pQY1HUStN2uTcEeidZ/ZG35h4uqx+TL9nhmQzLJtMf3/RtFHYISrDQS
	 mbKmxtvyHXADwCskq3Jvr3jQh8lQRtUvNWyfgBXRkXKXrxFeFNMXP4HxG0chz4s4cw
	 D9HAENNPhIfSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EBAE77180
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173410775361.27833.15449588308883354143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0ead23d4a0780e1c092510fa6b8aa959e83d95c35bf046fc38cb07ea85188d4
Date: Fri, 13 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734107753
