Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA6D4A04
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722129954; cv=none; b=bTkbj0UhQJSj8u2hKrLlG70GdPVN/p8Bju28RL6uBDv3efyFVKtkLLZIbfC6Mo/1Hut98fcUz5fKZcvwAaDFSVpBorIg6hOQaTGXScphsQkr/TlqoQ7EA1w5682UblxdnhfZhX9TV5rIOeRecLGV4Ne7GBLH5VVkUjlqJ3bjzHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722129954; c=relaxed/simple;
	bh=KV8vaRjVIlEA99uPMKRTgLCf9at/4IajQzHGDLmBC9w=;
	h=To:Subject:From:Message-Id:Date; b=oU8nIRNz1xMofePEP7qI9ylWzXEFXW761Ia9+M4Lkuw/GmHmtCKUxPEfw/EH2XYjXDfQgBJTJbd45ERmJV8toiqYA3bufvuCdDDdMjcFB8B4VJU3hBn2s9sHFMKxhlS4ZnqkSEOMn8oeVfWAAjoTtteqsHFVWpeTtYe5/mDL9Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thejeyCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thejeyCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD305C32781
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722129953;
	bh=KV8vaRjVIlEA99uPMKRTgLCf9at/4IajQzHGDLmBC9w=;
	h=To:Subject:From:Date:From;
	b=thejeyCzU+2qH0gBMi79HVO/DjYnkQlNl8qZnRbKv7fp4oUWCRa3zTwofisVea/P3
	 cF1RUoU3o7A/ovwWyps0oFK7++aQNGbLymINuZGY4c3DUYPB6NhLMD1I6EzfgcJR3Z
	 9EqLBHcTkKUR+Am7GmRiUhgE+tieGukegr0YuCLI5JJZSZX4k3/Qz/auOHXIDM7Vvt
	 +STh1jKf/uKzEjjBcpIEcdKL/7ml7COoa/tH63mVOXqHSWXF2X7J5JBiNvTcKZnexr
	 b6T40lB0Wqr5Pyn/CoZoyvD0iG2E/w91T24keGd2r+wsRHp08Evp0oqCb1NG6DCH+q
	 8I4avjJStH4eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95526C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172212995359.7598.17510466584446722904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676f08694727b32ed3ae0768aa74356b0248ed1493d6ade162b8615ab4c1388f
Date: Sun, 28 Jul 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722129953
