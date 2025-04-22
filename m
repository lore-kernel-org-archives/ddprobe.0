Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BCE5A59
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745300394; cv=none; b=tNCfjC/S2abjhhJQn7LOisUyyc4xurHVvXQ6C4pQv2GH/SgKeX6SM/Q3LGPhYv5sTo+nCl3K2S//mssbIF1RyyWfRbkATaW3bpnfdfEX+DqYkIAavtwqrMcyKogodl4cK+B5bALWeKEpec5fWO+zlxZReWaCgwY8XhgisYvp4sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745300394; c=relaxed/simple;
	bh=eQ+ztjvCOYem0NBx9XAIgAXxVY9mKMJ54CmWvM1od6A=;
	h=To:Subject:From:Message-Id:Date; b=enMAlQAtRUZFw8pAXbuLCjhKaJQ+P7MIUNYezQv9AhNGzIp2p3dm9UX6JH119fRS2Hq0l9Vz3ZM0Ut3leL/tUJ2Ht9C1cQIupfi972uDmaMCSURoHz5NMNDYdukb4r7PUqyJMaWN14SE/WtJ7gq0+rlgzv1hvskSFHDpCdbzB7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E8uq1wjx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E8uq1wjx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF21C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745300393;
	bh=eQ+ztjvCOYem0NBx9XAIgAXxVY9mKMJ54CmWvM1od6A=;
	h=To:Subject:From:Date:From;
	b=E8uq1wjximI8fIZN7gLzo0Z9p8QxmvvYwC+MlMjH7/XLtmayNfX9Fb/eJQoDsgCwa
	 OidvFTNBQwuCrFk4GHaYgaUAy8XQyGksYBmHG89FE2NBTm+7ozQCndUyG/FPwo++jM
	 g4XenecQxKmOlbHw4QatDL1d7eQXsJlX+cXqknyHxh+oUSl+7OgBIBgstwj5HdYitf
	 OiAVOcAVnsFDVGBG8H+D76GlFXyHG+BvrcDMCZLqoSr3hae5ypHt8TFCwnRx/V046Z
	 m0mmupCrJjgvJrBPZMmo59PrYkou7u+4qUuCtn8iFwu/vLOHXmXJXmVzuz/gSFlxcn
	 VYWCcbG+wmY9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95132C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530039360.5975.7792211128061211559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93136f4dca25d2ac532e6a3e892a1c7d7edb43ebc41bad8723a282f0f3e03703
Date: Tue, 22 Apr 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745300393
