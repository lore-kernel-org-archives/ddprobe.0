Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FD212D781B
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761109794; cv=none; b=ONK7J9+K+qIsNnCAMAOIkB79mpFP3aIzeyxpr1pEKaVkUmjm8wAW1BqoL7qjdiWblnI3TLxrZUTl7RqPrCM9W9PGSkbvYEda3GsIxHJ2gT6XIjoNQ29KMDFMO/fepq7izn1eXt4P8RYmZOVsYSaUhskGRnRIGIwTvkv++bke778=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761109794; c=relaxed/simple;
	bh=j1TuvoKg3rAp1hGTeq/3bD57havAt4eNs2hAY0D/96A=;
	h=To:Subject:From:Message-Id:Date; b=qVejU35z8XLwXLDiBB8a8rqDJFwElSI1daAMN/LNy6sAmsLpVKBTqEK0QuzdQ59tLkAcI1/90m9IJ07Mq6Psbvg7/XQOo61C0ckPTWszyxRr5kFW0IcNR81nFmyaVFw66h1x7EweEm/l7RYkEKJH/PYQgWqNvCE8DApSAiUT9Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MVAXX+A6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MVAXX+A6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1574C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761109793;
	bh=j1TuvoKg3rAp1hGTeq/3bD57havAt4eNs2hAY0D/96A=;
	h=To:Subject:From:Date:From;
	b=MVAXX+A6iG6zTxwk+1LZPuj/ydWeXO/HOTYRbZoqCjjRwEkIP5htAZOnGnX+lRPcx
	 hhDgvW0Sj0KJRRQTfj8Z6yA5n3MJ+k231LN7qHLJl3N5x4w4gn4Kn19nEbdTZVmJ82
	 XMnS73GE3l/gUEWWDa+TMdpgqlDv1JsGYfATcU5SgL2B1HMqgaNc4nyehNrmSolrhH
	 uCWh+FyxP9h8uKeApz5Ckhk1DnPBf616z3lHEm35zBzaGs2Yot6fddt4W5wCNQCFMx
	 081fgdg+GDsSuPvqFC5wKiNPSJnD5DmJwnYSStfuxAa1ut5/AdOLMlJgw9t6SeYOOt
	 0oFsFRoIKLUog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F72FCCD1BE
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176110979357.24947.1373780324959094339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b35e4f6d45f2d70c94bc46f4a725d9b46f6d6ac678775e3e57c843ba255315
Date: Wed, 22 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761109793
