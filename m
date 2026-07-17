Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540A119CC0C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784247514; cv=none; b=kXMZ0s3/L0EJIoCmcTkKiipeEKeWwW3dBnvuzk7Cg5pfN1jVSFWftXmNemp3vRxBxNRFiSAQGHC+2Yf3t652me1h/EY2T3RQXpuKjFmienZ8ezyDGrNCcECVrzoPwbwzzArBXrIxTDsKQgVbSpCh9sGdJgBHFEBw2SL3I8K38jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784247514; c=relaxed/simple;
	bh=XjTKIlWkPFMzrZljJCsA2kuHq07bJsA/yP19F8Imhow=;
	h=To:Subject:From:Message-Id:Date; b=MxZ4QJBSZam+/kvk1VaTDN8GjXm+AeqnZ/QDWqrD3RTe9x/K7LVtttBTetnpm6754vLcoiDfESP9+YPqnE7KA0Q/qB5LKMNPANjJjoZ7cZDHLceZY026iWr+Jsw9ESTPr9e8PZqk5KnvIUGtbf1LuV8sj6cFr4qNFRPgABwWndU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWAHCB7o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWAHCB7o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA23BC2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784247513;
	bh=XjTKIlWkPFMzrZljJCsA2kuHq07bJsA/yP19F8Imhow=;
	h=To:Subject:From:Date:From;
	b=GWAHCB7oHLB1BchC6iSn40AWueXwr2/FYMFJXC/UI2G9Y8nUuJY9DMQYjwLGisdww
	 TwkJMRUKGklSnB18FA7UAy96A4cM6wf8fLQ7OQwmlpkxBccLaDc4KAs8Arou5jVevX
	 kRH1ef9rYHaac8bnA0er5oUDqbpzI5XLWHom0n6VXjhGrRWhvgkHcxpqTNaG787Wy6
	 EthM79P03hcMSgk1eMZoceYxbJf06zhqJACvjCnTI9QyrMKQio9ATfLutJpceCsSm2
	 pOn+cpj/43sgf/IRuKZfmuf2Ct76KYvhwP063MNP2/RJ8DbFqotqnlRLQfyaybU5KU
	 v49eKlI1pZubA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F26C44512
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424751367.21967.17537782785754487245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67063e6957672edc0f44b1a728b158fac551a90b404d25a8997bd9f860eea981
Date: Fri, 17 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784247513
