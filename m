Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6B319D06A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750972794; cv=none; b=jErVQnJzLyd++CB1YSK2hHa9fKeHjBW9IIgtsr0qVbBf5TwlKteRo0hxQ7WkpUwW4m5kR7M1GZrDUoltaQzEOekurs6aWXJvsT7hONFf1VUAqvxJcClDDC0I7E8K+05yS7BUSrGGOCcbufutGknQbT/VmUAo5dVeKrUSuRNgb2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750972794; c=relaxed/simple;
	bh=+yS4fUBTF3A5vbtegyG7xIZ/pgCe/herETJRsYHp/B4=;
	h=To:Subject:From:Message-Id:Date; b=NGIm/ndnSta/36zVXF3okXRn3EJGww5J/vXk/ogInTNlakTZ0syfCOuj1BZOHuZvFeGiOx1omv6UJtP/f5++ngIyQw6xgB/Wt3uPzWjE1kXc3PA1b3nDu1rR61i9sIaN0rpNBpUou53TpTSyG4Mjlml4WCIMvT6zhBZ+C+A6r10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdmq3meZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdmq3meZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BD4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750972793;
	bh=+yS4fUBTF3A5vbtegyG7xIZ/pgCe/herETJRsYHp/B4=;
	h=To:Subject:From:Date:From;
	b=kdmq3meZ1aIuVz4P9Ps2Wum+8pE1pGea8IUDf0Z5BUb+U/43jwuJ8xRdlTqrY1Fwk
	 pWP/KgcR4DWaqt2IMCiU81lqVIbs4fzG1+8U2wGD0SMxgzRdIb0SrdZPtAMsB2O0Pe
	 sdEXrg3eGLJOJvX2IC2YLwIIWKzQY+646GijT511one9I8QTbWj69h7iQARuObyG9l
	 Rg0DG5PlUfbHm7U8wwq/nZcNF9qJzvVLPkGbe8EvYibARt0CBbnNN6h39B8a8ofCO5
	 /70EwHhqta6wu04rkc4QC5eO31C8MLvjlOT7+vWYlmd/ZzI11ysI1QXozqkmJAP7Mm
	 I9Xk3x2yrPq6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912FAC7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175097279358.29652.12843200600600101260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7c0bfa7b161713e4c999318f1f07e7097f35192b5c684ae649cd7a676c0a4e
Date: Thu, 26 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750972793
