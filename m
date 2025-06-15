Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F591EF0BE
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749988194; cv=none; b=XG0gtCmrkVe+gALeCpFSA0yXuvH7eKQp3zsRODbympcr0KkciFkO54dT5+vxHCO7nGJj1zyGpec6qE67WoGFiIRgA3I0oRHmiRDa0OBjPzrnb28BVs6G/yl8pXglc5sMFYaKIBRtq0M6daUPQe7mEjf8BSP94YKkh/WfsibwrjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749988194; c=relaxed/simple;
	bh=dDj8M84fsaKTdloySojZ5/2GBWouuOi7ctKxdmoAqvo=;
	h=To:Subject:From:Message-Id:Date; b=LN1c2uxNCurmAkeONpr38Azk67ilWmWEk73f0WiQPsrn3WlP7vuqmNoMpof7mAD6jNUZ1uLJ7Lf+I7TSE9luYX7J4+B7DJzKVtapWUBJSV2CvTiu/sIVKknfvlMfYh67qzfe5jfZ7SkXnZPVcH4T/q4CnLO7kXpbRu3KYg+pfl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUh+txi9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUh+txi9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5178C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749988193;
	bh=dDj8M84fsaKTdloySojZ5/2GBWouuOi7ctKxdmoAqvo=;
	h=To:Subject:From:Date:From;
	b=LUh+txi9XafXrIPJHMXCCR3wyNOYN/25/HJuVahb377cymUZ3+uy6JD1yLyJtOh7t
	 lQHCA63uCwUAuymqMV9IJJG0ok2rn3cNnxtSLvzuT1V5pnzT0WerpNjBQ45KpsDbps
	 k+mNDQSHmRvnPs28K8ZAWUIVGkWjIY0izAr9pkpzWgL23eSAMfswoKRxIRMX9ASdm6
	 uaJA8ReShpcKWyNemDCfSSc2rgIsZJ7MVWSYLBCKGjb6FLhi+mFEAccSQs3o7dLg6Z
	 NMPMFzaL2Q/8AD1ilduXSBXdcGAg8bn+Wr9X0yoim4VE+eQ/v9Xbfc8uSKtE+amYHA
	 WHkhHlKEXskNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A11C71150
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174998819358.24490.8424682659473619274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3af464254cf18074ea50f8c34393a15f9fa750560417f2d10f60f27f80d0267
Date: Sun, 15 Jun 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749988193
