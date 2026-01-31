Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE22366540
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769884434; cv=none; b=LynivAsxMFDE4rKZYL1r6PChJRzHGUR7NSMRPQ18WOzKw7eDKZ1PiBOpYl8xoUd5z9ygRVGvuGVUVwse9iYvrZRniEgTId4SPYgu4ULoYpn/vG9kPJ7JCz6QUQBPSR5OgYUMksnAtETgJrRJEoKtP3Sti5MqLDxGR19NQK6CH/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769884434; c=relaxed/simple;
	bh=PPX8Is7NGW9Swxukd79VTM3SW64NkCWahFhKineDiQs=;
	h=To:Subject:From:Message-Id:Date; b=DoS5imQOrqSIHT9JGcBoX/pp2kDhfmSycZ3wuZOTvh6z6Qe+3f19kV/d0Hlsl26BcNSKyoq5GoVlBI23TW4heQ3lH6NaN7UIosKIQuD831QdQyfZoMahj0gRk17W1OywXlhs2uHtJMys484H/poogKvX+UnEW60DhI/85mvOiXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaY6bT+O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaY6bT+O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAFAC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769884433;
	bh=PPX8Is7NGW9Swxukd79VTM3SW64NkCWahFhKineDiQs=;
	h=To:Subject:From:Date:From;
	b=MaY6bT+OsO9rL16sa/5s+0V2H8toldOMHorgJ8Nlmo0MzdgqyWn9Y9P9ot0/3a48r
	 kW/uGeLQTKrEb1VpaI5Z5u2/i49VNMaQg3i6VXkxkgWnm+Xlz+TCRVgn6bDMwu2Amz
	 HeQZ2mCOjsacZHMZBzQ42VKGMl/XWJl2rsDtvMsIjrONg0h/gFTXbhMcWKANNC1Q/Q
	 gLBzeyPmKu74OJvU9V0sRM6Utf2PYoGnhIPXmGFXQgw6DR5TL87+1ufq1Yq/lNc9jS
	 vDw4L7fzpGnbO6ApMjw6QQeAwpYPDMt6A0zOhluBYLrGslIkoaDvFxF2eLgNb1cGby
	 k+QKcvDy0iD7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966BFD73EB5
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988443359.390.10637488622564070802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da5705cfcdf6ecb1937063b8480680d491f6b13a3591e56934ce29f05f745683
Date: Sat, 31 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769884433
