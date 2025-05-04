Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30767320F
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746318594; cv=none; b=pEma0fhUedU1sQ8tecDG3OwJC+mt3TQNLamfuChPyZ2unBbgxOV/LzCqjjuqjtPTd/lxGWMijWCfzipJ0Jb2ubwIzIHrYdOP+j7fIUuFS+wj7hiswn8kNcL9tqVwjFzNk8swsz6e0mOl0aNvUk8RyDaxI/5uYtK4xLn1erWzSVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746318594; c=relaxed/simple;
	bh=7+4GlBzGjSOD4ZnRebKvNcrQfmYnA9Ab2zLttaNPgNw=;
	h=To:Subject:From:Message-Id:Date; b=qceN6GJBNMjFDBPc5H+h9pzll98TYNMGjP3koWOJRdn6Y2B+Pn7DRT5LgNyrVbX/Wg0iNc8MOo2UEjI2K4qSKLZdTen6yD7iHUjVyXMNtay+Q916CJUcXPNRLHUQaxz0qgphGoWsDqSDNAZ/3Iyi99EpRCFmxcgWA3Q00/GDMyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6LnQV2k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6LnQV2k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6290C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746318593;
	bh=7+4GlBzGjSOD4ZnRebKvNcrQfmYnA9Ab2zLttaNPgNw=;
	h=To:Subject:From:Date:From;
	b=g6LnQV2k8IrEbBEwu1uiv8dW3lihJ1lEl84JQZpex1mu1596+9yLmIgGvy4Vgovvb
	 wGZkyrQzdpRi1W5niVALVeR36VpH1YZVjlRE0srywgNsRCYwM3kXrNWsImKqsyA92t
	 N5q80P+pJZRFoAMa8L0vMsd6wPjevZfMTav6bJ4VXZCZFab3ZMm96y67A3hwQ7L60f
	 VYV21E1nALv2gN1A/J+PNObnYiiYdmw3cljzdw9UbR3MKDzNfWAxuwdI1hnLxYdytI
	 PTe1WPScyKJgu/zUubz3AAl9Xo8QtooMfZZxPvaaNtxrS8fVvsQHrt8jDHUkXnzb/3
	 7uboEI8mOnovQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947E5C369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631859357.9921.15827587191523603241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fa305f5267f243e1de32101c5cf04fa214c91fa54a2022533626bf34264673
Date: Sun, 04 May 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746318593
