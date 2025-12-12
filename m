Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6BA242D84
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765510974; cv=none; b=YULE4Q/ngEhtnCBLFlJf3hzd/Anp1iN9tk5lfe1EEoUx8tDl/Zs1lAO5tuhubM+1SlNcV/7+ARFV3i9E73oximVG0VGZvqPLMuG+JovlnztXrSR/ScfC2BuChiPVVDkD0A9TVtSrz+jdEFyUl4xDfIC/CBI0aiF2sMVKyWpitY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765510974; c=relaxed/simple;
	bh=zfFWNYbET+CQ/Y3cEWzeyVlxsry9Oszvd2YXzZfgatw=;
	h=To:Subject:From:Message-Id:Date; b=fbtZa+htN9sxkHEdh9lnHl/1/CV1cNusAG+m+9D6RHsITipye0f6+TEY2TZLWCPIa0XO24wOuW3jyhbnNT37e6H+/TiChjRUaiQH8FtIA6mxe1XirrQYPpNQ7gVu7SANi7/cUI4PbcNMTSEec0x3ZH3a2v8TxB4g9f4qLTHhJ5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HMOVcAfI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HMOVcAfI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1709C116B1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765510973;
	bh=zfFWNYbET+CQ/Y3cEWzeyVlxsry9Oszvd2YXzZfgatw=;
	h=To:Subject:From:Date:From;
	b=HMOVcAfISQMaF1oWXz4+TNP+blWfnbgvoPE24KG29b2xV5Bfs8E42qacoKXQJI2dp
	 gRRWfBiRJ3Kc54kKOBy3BjwbCSSpQHxMP/tiKBtYMa0juwCxwPzCqEANsjsm86sf8Q
	 Mqy8+SypNh3X3yz4U1bMe4fGeHMYyiFBjEadMxut7tWz4O9EtQF/rrwRfeBo+zZqG4
	 M0fwjXpnMdE1avFTULda14HTQ052c8a5jhcY2/shQWyGhW/mt8gGr0LhDUs5ZLA4OY
	 ZBXU6/VUhiw74YW/HfbVTsqus4lvkuCj/5vmghiG8VKjSIZE2drClBMD74cbfpd8WE
	 ujvyQSejjkZiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B452D3B7E2
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 03:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176551097359.27134.3587638361710089670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538aa47f17b0632a01cae64f98415e47d3d87c42ccaa7d69fbb305a7a85ed6aa
Date: Fri, 12 Dec 2025 03:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765510973
