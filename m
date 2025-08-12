Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5F8A284685
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755024593; cv=none; b=cg1qKgeP99ddY2oDbK4nb4sOrDUVqVAAm/1OCASRbCB1G6FTmymmQQunMe9zt236XP6YDSRF94GLrkDeo6dHDQD0iXu/kZhZg1rjGuH9SFnpUixYsZ8AlZaJy6ZmZ0vZQid98uNJteRr4fqh5juVSdgnfaNTyVmxmFLcTXl3GQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755024593; c=relaxed/simple;
	bh=PoGlhXaOqvlsoNzV3j2rs6HTSY+0XBxIVVb6MsKCTGQ=;
	h=To:Subject:From:Message-Id:Date; b=pDA8xLFxWc2liK+8VkYtoMrG0MTumk9sCR8FArjPeB6F4hYSSQ8NIMnklbDPdWA7hZ2Qz0SGdoJxbn1TPJQjxa0A6cutWK4jMBmyCjTjiJtse1+ERyFXR1wQXaB3CPinAMoSHjje8qXcpVWvlANmrghGHBNoQe2pGXha+XTI01g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXWJrBrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXWJrBrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A404DC4CEF8
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755024593;
	bh=PoGlhXaOqvlsoNzV3j2rs6HTSY+0XBxIVVb6MsKCTGQ=;
	h=To:Subject:From:Date:From;
	b=GXWJrBrFtjgikrI6PJqjOxuhViETvogJ5DCnoX0zAp3PBjc7LE941cxt2rSRv0Zd7
	 cAnxsPS6AWyadMx32UHkldHLmo9632hrqMcEzGASfGC4n+ZnWT2nJp9prdHdB3iLOw
	 kGTojPaUaZE4Fe2BuuzHHOAnHH/16mHcAoPhTcoHLQwYSHFDowM0jhqwN1xobl9aL0
	 m72uXM/gz1wMLD8l308fn7ByK9R+P7jomZrl6iJwsrWEIf/lLkFJ4g9H5phpI0uWnG
	 YVlxhGk6/hkMD2QFdfK5qzT36NIvNNSQnspeSQxRr1qNxpDPbOnPO+aA2kyv3ROF6N
	 g9BxG8aMlIZxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B8ECA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502459357.9568.1145299754809115152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58318ea8475df1f474bd3a17b74e0db5ffb8dc905eeda9440d3bad1c434070f3
Date: Tue, 12 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755024593
