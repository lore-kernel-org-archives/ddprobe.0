Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623D21946B
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719278003; cv=none; b=UNvdfkYeglDHHEn5G5wgyxkEcr12rJDuvzPBdJAPBmAY2kzy/s58kWrLOaqS/MmC3pS03R9LvogLeas2JtcXHtqF4wn+bKSx1KRqIXKoePwY9iiVF4rPt5b2wgzocNwKaMwp1Q/O1xKWoSumpgDAQ0xjcgIiFAw7yHgmzXXehNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719278003; c=relaxed/simple;
	bh=SmMnRfvlP86qBxVKMT8bWp6nam1wBNQsXtPOnz59b9U=;
	h=To:Subject:From:Message-Id:Date; b=tuQz2EBnAzn7XEIqFdK/xN8Go/yF4ohcFEwllh3vjJIGrYRtQ25u+vLl7+f23DK9DMMMNQUEw3Z3m4jjHLyYoQkI57AWt34r+PORs+AWXGPHgyhHludX1VDj0DKPt1iUtSBvSwYPrCq+gNp+LXjgyOBIF+DdUq/CI/tHe3+ACbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bM48+MA2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bM48+MA2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8C86C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719278002;
	bh=SmMnRfvlP86qBxVKMT8bWp6nam1wBNQsXtPOnz59b9U=;
	h=To:Subject:From:Date:From;
	b=bM48+MA2rA4aEApsew+r1GQq0c8s7lylG+0iAN9IzM6+DZIFVrCwftF7x7e5DD9mg
	 gsI5ywyBFYPk7bmG+ybXZqXXtfyAY0NWzcrw3oY0Lql40g3wj43rfYBJlf1JJzl6Bt
	 9Dt+TeYsq+K+S6kjxxlZDIYP55OCl3hPkC/nMNeIYNQJFq8Ej5DDUKd+9cyUDYp7iV
	 ZNgV3+9YhoZskrWD10MlvihWK8bVFtizM94Rt082D7qXaKWVTwiQG7bBYbLQZXYxxM
	 dXxwg2Jc1SgDJgyv2fGAtegsBuGlQa4wqE/DsZZgkuNV5Vw37hOz/4ZKSqTS24hNsP
	 7+XaEuzwn/MZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8E18C2BD09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 01:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171927800279.32115.13452885034380653770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fac64b18dae776bad12be8c765b08f134907a899aa4215fe893da7a88b496c5
Date: Tue, 25 Jun 2024 01:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719278002
