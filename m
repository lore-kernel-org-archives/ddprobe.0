Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F08314038F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718955743; cv=none; b=Cr4OUNJYdOm6Da67ewqYPOLH52IKOVgsMqOU1NKo2r73JJcNiFtsszjTl2YKBxWrK6iplhpA6N8Nlg/0VmVMTRlq1ZcGtTZ0BBvzrv+3E2YhL8RlKPixx+FzBGwAEf/ol4IvBerDr5Eff7H6lQ3vYhxTMgq0UA677kLx8qBE9AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718955743; c=relaxed/simple;
	bh=5it6+GdnTYCTDwQt92eOaoEiWkWBMn/RpXPglORjdQg=;
	h=To:Subject:From:Message-Id:Date; b=TUBFEAFxAi7Lj/y9TjtplpMcZGMW2UP9ucs/4DHUMWvSEQc4/Bn6YgCHLmhzGJQrlfVnERmL9pE4I2wca0mJL6WOqMum4VNs0tyG0eokVfYevnFXHdwtuvN24lnyrdA9vi3kIZ3qAtk3k4oFuMMcTmslo5UVcehv2Xy2DzqAIFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWvoKN4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWvoKN4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF3E2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718955742;
	bh=5it6+GdnTYCTDwQt92eOaoEiWkWBMn/RpXPglORjdQg=;
	h=To:Subject:From:Date:From;
	b=uWvoKN4oCCeWdHc2YmL1GR+zenGDX7Hlpw2rjHxFbwHMeasowSAYT+OFINj0ZBA2m
	 gD9BrSEbtu69fCz5p54wh+HL4NCScN7Ym2/pafGcZBkfC21uVCZRkQairhPRlMKsAq
	 li+jBnUiswv5EVXKXeQOQxfaCn+eaOrwMq6YnCgDbiQNTLe8UIJgYvcoGGI3JNbNEE
	 Rv+fjnLqze60FnL+EKfe09Haj68Ax0UjySj+kLsqe77shBq3iIZK1jSWeA4PaE5HmR
	 7lttXNW0JvqmA5gg5HJrlOcQxi5cNfHVj+uMFuNFezOL/T/okQIRDTsNk2/0BaTPyZ
	 MTZeeHIN1v+9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB99C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895574276.11478.14893958169029191090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05fa4961c437e06d736f0cb1d62aed78870bd594e62b6d49db768e4f756dacc5
Date: Fri, 21 Jun 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718955742
