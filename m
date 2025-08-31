Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DF52367C3
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756654794; cv=none; b=Zel0x17e1TeGQE58Smc4oV8cn4rVBBlVe7HgZzJzlv0W3fAmmiX58uBPJUwe3KVsynAUYsJzXloA4+q4oy/yt81zj7+bDE2Lu5KVr+ChFJOnAssyeTY77btUyA4eus70zX2Guu5t9QmUN1xOzMZ2nw8c6cZR4pMQ/atK+h7a3Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756654794; c=relaxed/simple;
	bh=/aZExM4EpfG+lwyM38SJjhWVz1ZUUR4MOuCo330yGWc=;
	h=To:Subject:From:Message-Id:Date; b=qBtwO1vUs8HhfTgAVEreS7tcPGxqfGqPx4x2LabYj76sGgYMv7U0sRQEMDYsq6aPvoguOY6l/LSxK39Pqaodv24Ajbn94vC5UdOSkIbpCFWWCgLcrbfgKkvTiatFRCdsDYaXl/B6l0bP+4AVF9UpXnFjDfLmIEWfN6ocKUxdLs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJCGfnP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJCGfnP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27D0C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756654793;
	bh=/aZExM4EpfG+lwyM38SJjhWVz1ZUUR4MOuCo330yGWc=;
	h=To:Subject:From:Date:From;
	b=bJCGfnP+uEcczQ3/sgpfgDHYf4ClrojAbLWA0lkkigPRbMWzcTz6V2mXrRVhArWK/
	 BZxd4fh32qVmoeDyy7GsQbBeNnPXVI4UYqcmAKKSMQGeF7gLTJ7x5yCJtVXt0gn443
	 c3GMemr8wBj99QDXfAkXOHKrfIqti5ZAI/7vEmTDXHr53CgbwjOREHdRMW+wdGqfhI
	 bfDieFr0n+en93oIFSYOloI0Rjp0SLRTAigJ16l1J6SqMG4bYNnEJ55RUUd1pl+z4Z
	 NweycyPTQN883ucw8RsW59KGpregw6Kmhh1PESwp9pOgD4gf+SelGqjD6bhQJhLi3O
	 sUqDIz0FtrMwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914D4CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665479357.30846.15562981035083423843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19d99e305638e800ae447c980aee5b0219577ba37e3bf8dba5991841513d6238
Date: Sun, 31 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756654793
