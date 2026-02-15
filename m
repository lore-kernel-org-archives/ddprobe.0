Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09CA912B143
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771128294; cv=none; b=UWjfATdSKbQn4aGLiQMoBWM7MeI/VnSWmFX8pM7DpmI5bm03SRPKKaJYJK0vajLtRqFSE02NeKDHawIVPRQfYzLCrd8IBL1RtNblIPbhmcwT9kLbbJNci1Ngmj7DEr3nM9RwX8k7euZOUJVYUdmU7H7QEXNEcWv5e/Zd7a/+9nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771128294; c=relaxed/simple;
	bh=q/0QdBR/alDQ/SVIxqCG15SHOZHPV5aCjEk0Mp8lFQQ=;
	h=To:Subject:From:Message-Id:Date; b=PaTGJBWv2LaJ4zusOBS4I9lahToTWycGw/vj9vBjxcC57S6YkwIPMJ7kMexRPlVjpj2D4XquZUGMXXKWWONVHwbGJnNZgb9jWoIZz3L3nTtyAA5EqxZx4ZwWPF1/37lJ7LcEC5qWUyS6SNMiS6bJ6eT293ORoJEm1KaBKiaVQ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pjIqudvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pjIqudvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FECC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771128293;
	bh=q/0QdBR/alDQ/SVIxqCG15SHOZHPV5aCjEk0Mp8lFQQ=;
	h=To:Subject:From:Date:From;
	b=pjIqudvjf74A6QniKlR27NOBHlCawZ8EaYLbjQ0sdJeWrxXBrRoWEZb4lStYzDUum
	 r7AEsyubMsqqIaAnhJnhzt6k6QOQWVrs+pX2i+tmx0abQBWwBP3raXORa53bBFBIKK
	 SAcI2izlpPbEmt0SInimMEeXo4NVrPe239xNYsUk/yv10vQBLrjBL9ZWzoZStUUF8j
	 R9EPqAXuHWP6LUlkH7dXrEC+pW+WR4Xb6y8Q1fp6HvkmCO4Pcp2c2Xdv/Fu6XlHiRu
	 QAuPWPH1g/hAWWzjtKwlqqLJMluYfW36a+H+ozt+CgUa0AxzLdu9tThfjrQ1TcnbTM
	 vYK93pEM5hubQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6E48EF585B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177112829363.28441.10570887231554654252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 374714dd1f4703d56f37101ee0cba56d45cc2d9de863665b5ea7ebda152e06b8
Date: Sun, 15 Feb 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771128293
