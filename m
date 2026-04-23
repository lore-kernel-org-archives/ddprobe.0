Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11CBE390CB5
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776962254; cv=none; b=GKRpkmr9r5eH7kFAP96o/y8+wKorljlfeFnG6T7AkHlxO9L3mnha5J+tZ+uMQ/omqdA3DZF2IvpjoZXtaMe351wzqZRqKk2T6/VzitFS9to+dXwGFfeeFvycyG9CmKsCBLjVcW1Gmvg/iyoNSA8zbUK/+QAUZlkO94LjG1RoN6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776962254; c=relaxed/simple;
	bh=V4Z1wzkydaRYHNczV7wYKvXVi3sJWFSI1gQtclxH3Nc=;
	h=To:Subject:From:Message-Id:Date; b=Q9htqRd+3nbUlXymbpQ/8n/MMXFQUNwaWa0ElLTRV7Z0nAaV4AZ+wVyra/JWqhcypE1A7sN7TdToUwR8Dr/6YktExqdrWwvKK3kTnIPQJSBQuBEzM6Vfl6LNLnqB05Suuny3nZM/EbzSAYpThw5XgetSzJIczxI99h/Wzr4wh4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T69leg9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T69leg9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB2EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776962253;
	bh=V4Z1wzkydaRYHNczV7wYKvXVi3sJWFSI1gQtclxH3Nc=;
	h=To:Subject:From:Date:From;
	b=T69leg9CvzdZwYrTbkm9t0RlgYbpyCKZ+1WJQcyAiiCfHhUqujeeLFisrcUEbGnFm
	 Sw1t63yQfmMprRJ91U7As2C1rg6nVZP37QL594bPnSszVyBehB6locm0rOE/4C/QVv
	 loroo+Z7p++isSafPoph+RX61HRBFTw5yHl4u4bZrAXxET9Nc5oPsITaVl/uOe4udA
	 D3pXcPUc0hqidgmfpqJJ6aQXfr7lfudlcyB76zyxx3n3lG/F4XS12g7Jnb94OVST4j
	 uP3X6PaBvEfG7g3ggNsZjzvXRGBWYA2MuqC/L0mi+0qf0wp2olg1BAyWoJ9sJV5SgM
	 JNg0cBRHmG0CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE1FFDEE25
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177696225369.13336.3592561957655063410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02748fa94876eb1ab257a4b732832a1c9b167a5f69d9b8cbdb5b48c2f757f93
Date: Thu, 23 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776962253
