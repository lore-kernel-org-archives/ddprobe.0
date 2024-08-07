Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43BF1EA91
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723039554; cv=none; b=ofM0X9Tf/aouboqDx+CZlISc03jAAaPyK0FujWVxp9ewn+9/miIvaF02ilzaQkb9DsmW02CiTwYmssOBaZJqlanscYk8M+2hxCJicjGhTdvQlbhgzEXCeATPIYfcG0kFy73bJUtY/GjhJvAkp4TINL2JIvgLCwEGl+qim05IP2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723039554; c=relaxed/simple;
	bh=Wa+c+307iNXK/zcOYWC8rGIDn15koyVIvVOW2AGptPk=;
	h=To:Subject:From:Message-Id:Date; b=b40e/myHbEaofgzBCCd6yyJFKX41aeovFdUgxhVxaG34EjuchGVJByxEtC79yIDQk4pMleWmWVeK+ZQvmAoanlMOz/0uWwJEpq2b1+CuoquLimbQPJC/3znzzJFgrBTITNH68TWcsJOyk7RHL4nj6lLmLSI28cmi5PamV9Uqf4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYdPobyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYdPobyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E85C32781
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723039553;
	bh=Wa+c+307iNXK/zcOYWC8rGIDn15koyVIvVOW2AGptPk=;
	h=To:Subject:From:Date:From;
	b=mYdPobyvPbi5/HAnwzFrY8iSHLqmEG4gABu2yMRvsPG0KTo0MZLckKxeSBycy08U8
	 sCecKmWDGjzUa6kWYgyXX8r/zs/WAt6bU99SeEthMRaFe8WLWvvWHV2r2uWuYB6Mcp
	 1e90Iq1+5MUIWRDQfIQDmYHXaL/GyhGu66mu7aGDdbfe/Q3F9VJJMf0ldv8WUOQlOb
	 +XzP5gmHw1PYgksGcB8RiYdiDqzgnWp9XYrl9u6cc79GBVumtvC7kvZbrPUjAYXMOm
	 0cGg8om+BHecw655J24rPkiMQPp4LxzwS+O4eJeziWc6IuRNWg6EuGzwopqZMxKsKW
	 uOwEZXj6O78SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E26C52D71
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172303955361.3383.6253428030797207854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aa26a91ffb7809cb7839a46c19ec8df5e238dae1b33f35099fcd7a5c35c13c9
Date: Wed, 07 Aug 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723039553
