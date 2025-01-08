Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2185013790B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736303754; cv=none; b=oK4B6w01LIlysrfs5oXyYoginNAq2QtnRc1PAN+ozHAhtiGXDBzmOrqrC208N5rl2rZBdo1NCLPRXMCcS8yt0cIbWU6wEarsMyHCTr8l5JHu39KpcpUFvqiCxpAlvQM8N4uWzo/spoUY2wK2+O3EFl1fOB2Zf17uMw5eA56kYfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736303754; c=relaxed/simple;
	bh=7bbAlUG8UZQFm1iJSaH/jK/IpokiXrFFVv1YQ9Qio6s=;
	h=To:Subject:From:Message-Id:Date; b=Je2L4v5aONcUY7MuLj/vjfudIC02UNVVGKV+41cn5jUNLv8ugx6A18Jez7TzhrLUk57TBZUVR3XHgDeLu/WSdwXCSBrvxsbMGm6KWNCXy50Dp4GlDlaVZcVnFA8x5b8G36cLdZjXzweGJln1u6KBkBZ/3p73pM+w18k7vdfsB1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiGuhOVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiGuhOVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB618C4CED6
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736303753;
	bh=7bbAlUG8UZQFm1iJSaH/jK/IpokiXrFFVv1YQ9Qio6s=;
	h=To:Subject:From:Date:From;
	b=MiGuhOVIN0XzqJQYonRz2P32JsM7sSSR00JlcCnD0aqkndW/H+gY6MC5P0DcIFUsR
	 Mhma02+gCEXYPPCN0wCe73dH9KMHRrhoNdoE1I4v9GUNt91Tx91ognwZt+W1hdiWdv
	 EM9x8RisuaiYUTnNIdOXYgpcwBSAoL1rfaUCiFqK0KpKqvDwmSNlYiP8bF8plHhm+1
	 eo+Px+BkGTbmH8GTDiFsxBLU8zRtUbp8/2GuSbliYC7ZuLEpkKgj5RhNySGJ5pqwKj
	 RsTis6HECQPssEbRvWqIbMRWwJ9mCHcsZdcSalIxziOO0136SKLuQbn2SA5By8INEq
	 4Sz6hwdwrJjxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88E7E77197
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173630375368.32279.5787259458968085346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 745d33b48d8b178dd4e7e17e1a6b412f257b16b1de6680c3b072d661a848440d
Date: Wed, 08 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736303753
