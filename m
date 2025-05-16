Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317C37D07D
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747409994; cv=none; b=Q2OVAHf2G1+iPnptAymAUoqVGv0+YwxfwtyLmLA884z7nGHLmEqbHHAdirsr062dYOigEN6hyg6TE1JBeSrkH9l8dX4PAyPyBY2NEZSQbDkEICCWcRqPByp7acKwPmhrUI3F4Lh+gUwyRauSjSXFP8Ygi1z6GLMGdJAd8yEF7QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747409994; c=relaxed/simple;
	bh=7fny60RGY8Xe+er2C/CIPQavIZpDId5mkK9jcGYXqkQ=;
	h=To:Subject:From:Message-Id:Date; b=UsJ3aemU9P2I4OeEThuFydEZRMtGQANGrQn1BE6YyDd5CyDbAaDIpROItxBvqJoHCju2jQ8wFod+o+r1X7vW504dVIxzkN5G4ltCu5ORXbMMhN170ySUpAdQqV08ht5uFwL7fOQ6E0K3Tu7MB0D7AwzU6jO8/OsqnNnXH0yqplw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAZvLFBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAZvLFBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0729C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747409993;
	bh=7fny60RGY8Xe+er2C/CIPQavIZpDId5mkK9jcGYXqkQ=;
	h=To:Subject:From:Date:From;
	b=lAZvLFBC9O5+c75D5wPU6m0+3HVq5gDMBtGU7yDfNUNtLS0B5HdW7DzReh/Ls9w3d
	 Pkq0C9RsAtWJwt34tozkXosleBuPEIm2zW90TDqSn7+asXvrVZ+2kmmqobpBVLqgJs
	 PNRadvHaXwjhbbdQI2a1Wz2Cv1JMCGRo83EsvzvRMT3BOSFlSoEsQT5Wx9Clcb4FYn
	 UaVYSw14pg2wwr6InvoxMFEQMapOYAyvz39O45oZTLi65KP19q34IBe1MrdU66qFrq
	 hcCMxTapOiVd6L8EjfeKphgig94vkCNE3o/B213VixC5w//o8n/2vmi60OFl0y0xID
	 Sy2Dh7T3lngPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9009AC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174740999357.18817.10277654326655786845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2febd0cd9fa923d3322a2ed9a37b0d581c884e4aaf968f7f025c389e907a09cb
Date: Fri, 16 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747409993
