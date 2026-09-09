Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B544BFE93
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788996034; cv=none; b=sOAVIXdtnFqtNenxFtZTN46/8djLJLeJeTrc7WDI7OzCcDIKZZvxA4idy3tCpPzbF8WtHDN5D93HvF5okimq0Bi6oUAAHT7FNAi8Kyc8fMzvO8dllxT82wKFrAIINquvjxFgqpOuyYJK3uTi2xj31jaNeMMYdsCL8e8uepL7jLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788996034; c=relaxed/simple;
	bh=ddRVpvmLd7+dzz6bqGubtPcja0BbER8lu5Off3G8uqQ=;
	h=To:Subject:From:Message-Id:Date; b=e0eoAujhRR66cjYlkYGmNBTozyPKRV08nOFR3TkpYw8hBVUB6aJWubSeVbq2t4JBosUvzBUHwh+kw9qHSe1/4xfpJIM8HQsUeOUnKJdbmu9wMLnsfs/SO1lYW3lBEfSAeMrCfASp1IdQmgraLlbdqu+ATHv07EXit4gx/YRKZ28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRo9Tjbj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRo9Tjbj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8B4BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788996033;
	bh=ddRVpvmLd7+dzz6bqGubtPcja0BbER8lu5Off3G8uqQ=;
	h=To:Subject:From:Date:From;
	b=HRo9TjbjeXuyTNMKjAkr/Wzi3uPhUWMyG2BQNFoxpuMJ36tyZCDyNX9yVyUdML7Es
	 gFOi/PjcQN0Ti9KXnB4/yf8BAiP05XeM4CriZc6LUL8Dk+JYXaa7efpR/9gbNgkNer
	 A2i825IAkUCxKtZ7sD3p6A2Prd5mUC1luH+cKhnX2E0YzIFyF4jMSt10PFD0ss3puf
	 IZ+0uv9E5e5b/lHc3rkROF6RD1ciP48M2PI+Faha1DJ7AU9Sr2lAy8xPg8QMhCNrb9
	 cjjm2YJkd0dGXjcB/kIyRKANqvJ70YK/pk9IsrN1ObAEF8lAYFG/9vcDY1TOnVlTTB
	 GhAegTq3OhdCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DC0C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178899603370.20890.12089633986750522701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f773ce57ab5756b5bd2511d0bc86f47551b024ee3ce132a01bf379ddcdff8e3d
Date: Wed, 09 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788996033
