Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352372EAB6B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771153494; cv=none; b=E1ZOugvmTeiRWIWUwmAm/DNKgrU9cEXnnp4N1PF69Z7snpozelll0adlP8iyIGZ43CCokRQhCZSpb9v/KmKlo5kCTRYYziX3dfYLj9/2iwZMy9L093xL65I/rdBnqUMCNzJ+2XGo8LYxyA4sdL12VWRnhBSDzd3Udy3O6G+em0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771153494; c=relaxed/simple;
	bh=CYjBf8IhADLHioIhvZ2wk37lzeJruXpWKXmZBagA9b0=;
	h=To:Subject:From:Message-Id:Date; b=W1/E4xRtgsJP7KWt8ndDE4+EE3z02NWHimCV7uUkL3zWaL78cSFaT8BnVshFOQywu2d1GOq1s7dg3Snj0T2r/xU2d1dd3PokR1Thk4Wq2ukdqFXn/zjQaezzsqmxIagib2WpW9McnFSLp2UBFedTdKwcRyFd5wWOC+p5giD+0YY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b31ZcDdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b31ZcDdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD065C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771153493;
	bh=CYjBf8IhADLHioIhvZ2wk37lzeJruXpWKXmZBagA9b0=;
	h=To:Subject:From:Date:From;
	b=b31ZcDdVQGT8wFop5R19C6fiF7vD3XSpjqBxtbAmoF4vcrt1+vNA81lDK4ueDl/8B
	 VceZqWS8/CSy0hG6QhWytHu2WW8jKgn0pbR+RmM6M6bwcu3lQEl9vfw5caQXi4zlWH
	 dGt/Gu1mIryP+g6grVGDNU6Mg5W0wRPQHG40xvvQnQkkvAal3wY+oEZQNFOi1mMbjf
	 xYUez0Qc4rTKPqBZqxpFikMnj60o7NS5DBSrwty0n/5Giiwl3Kgbnm2LAg+95GpOJM
	 QxW4+cLM8sUltsCLTIRC2kESAA+NK0zbaalUFsn0IrE67ch1tPwroyq1r2ebFcx0oV
	 95cYhJki6oFlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A47EF5870
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177115349362.32263.2673454186390896761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adef545a357494e9a6f57cad964a4b382ad2de163c4095938bbfd7d51dd5dd53
Date: Sun, 15 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771153493
