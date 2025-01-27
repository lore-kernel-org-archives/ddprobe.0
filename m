Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B92727468
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737991554; cv=none; b=ncJZ5p+u39tzhHDs7w1I/vWfmn/VaODMbGVn6YKdmr1ak1UHbPlk+o+GsvrcJlfroweOxblHEcAWdMc2zI3QvNsXAQIdaZbQM9hSj0ce5SPMSFoEGoxtebYMw8cye3GivOw+fJo2bNxAlxziKRGh+5JtVQL2W8b0WO8HdqxXIGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737991554; c=relaxed/simple;
	bh=+qD1ZLtQP3kQfeR1tcMmfxuEr4gu0v9nbA9u4XbXEmY=;
	h=To:Subject:From:Message-Id:Date; b=D2ln6hr1Q5ArfXilph+Ik25G451XBoWc9aPty3oa2Z0LPq6NsAmjYfDi9jQ0HnfYutaU2iQ1RPdX82p4gJBnmDw4uf5iGNbnaOwljEs8Rnk7t+uDcemGxgWsU+2KnY95MODI4KYF3wlgysRvNOAEhjV8V2MLNTD/+UMoMuSbz8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mutBWmVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mutBWmVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FCEC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737991553;
	bh=+qD1ZLtQP3kQfeR1tcMmfxuEr4gu0v9nbA9u4XbXEmY=;
	h=To:Subject:From:Date:From;
	b=mutBWmVncbKIeVg6WAHepK72PQ0Azovym8QqezJKb0UZHyu7wo9NUTXeAg3BHRXwe
	 Sin5l5lzrkuOI00XpaGE1eTA/glH3Y3lLahHKSzzF8vXatOL4Ksh+7RIy/8awTI5iC
	 MBh9zU0ZBOIq/eTERK7hlgl2gGepl5ZC5BkoZTnNi+bFqmJDEVZ2sztGTWRTLynGMY
	 72lctPHz1uMIFSHlkSI53DrFTsIWoVJLEBJW6PjA+SNibfy9eNAy7KPgVjBGbDEajV
	 rpoRuTQgL3emjISk/THoiXna/2pZKOej9gFnvVqcqyFQYy779eu+tobyijeJihQgCh
	 q6iIjyRhE8ixw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB04C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173799155360.23556.4288534694863659004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e5e70a396897addfa140cd6c6f58602837bb0c708dc381ed2b2c7b415bc461
Date: Mon, 27 Jan 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737991553
