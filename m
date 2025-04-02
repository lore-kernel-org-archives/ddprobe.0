Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388D8230BCF
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743593394; cv=none; b=i9JL9leMcOnouPJdvcARpR2721JUrZ36lbrpuxtN/gIdCG41++oz66WRrQgKtliC5eBY8zg4+TR1teZV5QiuFYueVEFLSkyQ9a1H2lOh0gSLrlwBLiAxc3v3Bf2aE8+Qt5Rw6GfY1S6qcU/ty1PcFuWa4jE30z4A3TOlmozv41M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743593394; c=relaxed/simple;
	bh=8m7OXcB5dK3Y8Hee9uUmyb9H0H/T3Y15ncCK5IBslTw=;
	h=To:Subject:From:Message-Id:Date; b=f20yhk6glWKQyQxhMAIqwgpV3bd8gvVH34ApyKhqdnPlfbI/5vN+ZeTVQWDAcimYPZ3X9rbhucWgalouD91KMhO8iM+a5Xmt/VnHza8FFwE3Vb6euTVozAT2HI2NEgsra1qzznbw76zgCeWrdPvvRQ6SlWgIK8ichmi22hrwDZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GO7okSAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GO7okSAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A171FC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743593393;
	bh=8m7OXcB5dK3Y8Hee9uUmyb9H0H/T3Y15ncCK5IBslTw=;
	h=To:Subject:From:Date:From;
	b=GO7okSAJWxXJLwuvQEY7sIZwqtEFpXos9tyomOdNtGqvvNcWyMw72xv4u+kPqcyyP
	 gjGYq0VOQ2Trq/hUhyEI2Nx3K1yAtyl7tUx2x4JVCQqU4wwwAIJbb6BFaqbhceXeXY
	 h6uEO7d5NOf6WDbdAxURNayOb611W5vJS0jvlnWPiV5QXHWfSc8+2NM7nHzOu/yJxv
	 Dcw+7n0WgJ5ZWm1Ko8nUq/0pGYMhuXlHqe1OTFuaNZ+EIGFP6SQu2rYtjkvLJvMAog
	 a7BJxVDRPXZrQMOTyP4L39lxvMlC4Diwo4WxId0KxrlPDLS5JUYRXByxcr13XNjPyR
	 ZoOIvBJNAYxaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ADBC28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174359339358.31880.11565266340090621608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bcb3a5560ece3bced3439ecd57e8dc2b026f68f682eadc1e4ec5cfbd83d3511
Date: Wed, 02 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743593393
