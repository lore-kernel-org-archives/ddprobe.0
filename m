Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93CA346DFE8
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790652034; cv=none; b=bpaeEutuGLw3kvBWViekerNnYJ263JHAOVHAfjtG727j6Chef+SNY3nrrtAgXleK3Z0Reuc85m1mQ/g/8QJ5vT96EI/LsMkFKgAe+B3XhjQgObju6FLAltK2CSIhcZfz1j+mbzXLH3eWzUk+ccoc71BA9qduSvs+b2if9GQaYYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790652034; c=relaxed/simple;
	bh=ELy9ib7H5ipNbPcOVpLO9QACuYDjaCgWatKlBxtV7yM=;
	h=To:Subject:From:Message-Id:Date; b=Q/c0ZMERjIiNGY1hGQIODVgfxPYAMU9nv6ZzQMXmRaK+B7VTTNiKvnWy+YHMb9l8gmywfQ2W7u4NuSPdhX8kXDh7UhRzLLZ1V0k2AexITdj4+WnfSLDM+KefOcezvAfFJpCD09hRlDPug4gw0/8WZG3aFYHK/O12CnLDF3oLVGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjV9hSAs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjV9hSAs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC607C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790652033;
	bh=ELy9ib7H5ipNbPcOVpLO9QACuYDjaCgWatKlBxtV7yM=;
	h=To:Subject:From:Date:From;
	b=JjV9hSAswaOYm2XLwo1LaX/ROIAZ+LWA94YH1+1amCaHL84ExJprNCYZq0sAPQic1
	 +3Sl33c689ajEICUH8CNXGeTvhOGTXpGyzdtCaJ1hXQD6LYPs0LKsOXdsEzBlB3bcl
	 k/XYXcLmgu+TXgnh2GRFzKS5Wf/3EHypLjA+Z7+GY96hV9p23BbneQ5uOifY3uKw2r
	 qUHC/4SdLeJnffJwodz73sqchopT1mEoNb0yTXaSXrnMhvsS2GginyiEwjYlCrMT02
	 HVYz8C8NtEfbjC+GkgY4icgbAgYJ8A1D8ezcavRl97y1fqbecdzz8BWQx9AFuEf+P7
	 waL33NUpbbXqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA847CA5FAB
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065203368.15076.3771869331375671895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc509d07b60a4009537ee99cd37093235a0ae470034121c733677aab8de2277
Date: Tue, 29 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790652033
