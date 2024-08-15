Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D26619AA53
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723729554; cv=none; b=SRhLRf3P/8GLuebCPMmXByf3RXI9rmHqDBITiGf0bl9irAytH0Tz7Fzhnf3YghK3UvE0sAzEa+YrDh7QxyypjTSKf6EPfxJW32GxHa9d+DD1JpUdjD5xStGw47YHvzOBEo6rZnW+sceNM0Zf7QRd7v4bsvIvxvWzOxpMiebUcms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723729554; c=relaxed/simple;
	bh=PS2BWYIi7MmHsmbqQfF1RaV0obsz3wujvEjIvJybZaY=;
	h=To:Subject:From:Message-Id:Date; b=Ps4UOl9Fjyz5WeRhDEG0LYS4bOg9UCcQC2TVs+uCj26lgIvtzRY2QHlsgwXDpwm4vlRXKnCoe02z0jpF1zMwUSzrCHgKdUHWRNNfAm3PhDQhMcLgqxhkNyfY+lN19YGrgqUoXtx4+/SSgkxv2T2deHVqoLXMsaeibpj3/istOWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmCXD5tn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmCXD5tn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D5EC4AF0D
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723729553;
	bh=PS2BWYIi7MmHsmbqQfF1RaV0obsz3wujvEjIvJybZaY=;
	h=To:Subject:From:Date:From;
	b=QmCXD5tnDh/e/6NiWdi66b4RF016b62zocU4Z0N+hahlvKnj4L5XTyeo4QgLgH9l9
	 T8PNrxl/N+uwvpms+wU7As7BX/lPPZvdr3vDEfHi75wjXVOphL54d10V56qYsZcL4C
	 NT9ljz+XTtXjAYpXo97tPQOzOci9xrAXVf/e/zpSGDxqP0rSA7L6jzumMxa6hSWcdQ
	 pNZtxEesBoHLeLug4wcPtrabOalf8PX5LRkWcjK1IXQ0beGN7IsOzptFsATVuNodhX
	 zrt+lSe+XogHf67yqublL2SWBBqj2L2EsIXX82EsUG+5WQP3MJ0dULYnWM6YxLfa+A
	 fLw97/EtKLLuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E46C52D7C
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172372955360.16583.7376203852760526597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 970286c2903fb553cd405305321d0b7d6eff27007bc5fee2e72c8c0034f70971
Date: Thu, 15 Aug 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723729553
