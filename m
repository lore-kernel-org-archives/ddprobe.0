Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC2F365A0F
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780022554; cv=none; b=H055ewdkQxPgU3UKbqpeyycpr3p+Wt8lUOUEaKjwaFZKQFTWmvK29sfj2CMhMA4vci3VRM0P0B+ccry44rFAWDv7MTLL7JIosQUD8wP1LDSv5jr30IOxqKP63AA+eSnOOuNxHagdpzLt40Jr/KWH/56Xvb0Q9iCucruSG3zb3QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780022554; c=relaxed/simple;
	bh=nPGKnb34jHw+yr8mhQI8tXEH8QOtudC0QOg1RdG/qTg=;
	h=To:Subject:From:Message-Id:Date; b=JrtI5hr8Wrv3B+ef6CD/0P+UVWez3zcwa4d/u0KpGBJ87VVvr9OWPyHhnlLR3ptUlgz2sI7O72lCZzs2dQ7ojt2lBCsfMK21ddPaiUahKIQl79S3hoxURT4mjRKimuItfkHh+oWMSri2OEirFfmay/VaTfIrMZGhqgL5NSlFSpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N2Zv6VvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N2Zv6VvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33B6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780022553;
	bh=nPGKnb34jHw+yr8mhQI8tXEH8QOtudC0QOg1RdG/qTg=;
	h=To:Subject:From:Date:From;
	b=N2Zv6VvVqxRjMsnXAbF0pCrn14B8ZE3SO3izbEmCdAckchOwsW/zFe4as6vqdRK78
	 rn96AdUvgKOG+kdiBP8bJm1WNrTRoZA0y53n1221IZza+frH70Xq34mu7jdmublJub
	 yTLtCKHD8zN/l3PP3CuK1uIH3UhoC0nbYFTZ0zTDWttz9e9b0aWk4sP7eMxpp4KvKk
	 YpQsLhry8AvQpts0TN60rvLRVhblwN0o6IjTLSzrlJW3X6KpeVk3nZNdyGckNEWQAX
	 gjxj4Yl3e/E6q3Kr52qKMt/aJwh6GOsfuweMXEr4kW7UJ21DG89+rR552TcMDeo49q
	 Z63C/3QyUCFkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD0D1CD5BD1
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 02:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178002255367.7257.17425461611045188584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a47c3a22d3e7d0047f9474c9dc15be7a6ccf1685cfddf4f3f2c4936614a0d66
Date: Fri, 29 May 2026 02:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780022553
