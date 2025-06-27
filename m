Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427A72676D9
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751027995; cv=none; b=DZ0tN86p5FOkvhfOAYKTbr997XtZTbyFyFzo+kiH7eaFD5KE4zXwImRpMMzzlMupGAR0rgXLfsQXtTXHz6R6L2brQHd7aZSRWVGIHYgxQa7u3ooUmb/JAJFGNwXP6Mq1osdgINSQOiNhti0UODOEq4K4caei/uZcNUO0PJgjGQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751027995; c=relaxed/simple;
	bh=RC3kmimIvOW+osKqZKjh6voout/tXeXxo+1y6NVQ3jM=;
	h=To:Subject:From:Message-Id:Date; b=HEOeUecYnzM/PzzqgQ/q7UyVGmAvegmIenZyGKL+UvPKE2Ys0WoqAU/Qr/GKnIl2GgMJr/2mv+E2FGQh2UQSu8E5Phd/NDNVibCKBALXN4q+CIZyALrobD98Icqz4hnRWbXPPRGNFTGSLp9a2RoCZIszY57fJI/vdvi4ecp8ZTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VsPSlHHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VsPSlHHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A9EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751027993;
	bh=RC3kmimIvOW+osKqZKjh6voout/tXeXxo+1y6NVQ3jM=;
	h=To:Subject:From:Date:From;
	b=VsPSlHHTpMT7RkuOgbvMl4UbmH+ugxcd/Cly8BfGfpFuNMoyBxW++XCAZ6M2q0WnT
	 TNiuDMFuy7cuWGCD0afshjazvs42ARDSJkWkzf2gXobFPPckNJDfY4zbTKlayW7LRm
	 1NKYVGNTNkZcOqp6aBREVd5HyWYqga0NEXh3lCGSBoCJJZap+sEZ0I4iyaua6WHLbJ
	 zGEvV3v44FfKovkprZP8zz68bIgA7uJMf6RuZi9XupR92J4Y2wOnS/TILrYN9hm63t
	 apSJNOvYPuhsUn7Px2Izm288gkTlE2/BXItk6mComQdi91yDzxWSgeNbFo+KR+e0hr
	 p1cStxdZEVbbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900B2C7EE31
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175102799358.22850.9470225655445133588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048eb0d315ebf1ddd68de9e67a0bdfc65746e0ac1bb0d4c054c6a161ac63a8c3
Date: Fri, 27 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751027993
