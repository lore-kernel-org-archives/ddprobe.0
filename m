Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2143D2C027F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778227654; cv=none; b=jcFmTSZ76eBG+OuC1OELny3yefTnV0B2Rw2oey7+uq10L02t+1BAJjfOgUbFIVgvaoVAdDKOAsWdFjEyIP7MoYOhlP1Bn4ouaBg4jYk6LMuAPWYxCdanK+g7BdLdJL66GDrEmPeEyylwhBElvfNer5FVKUv0xV7cCmFn7wjG3Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778227654; c=relaxed/simple;
	bh=CYObm/nhEb95NjOSgFYPFjYQq2GtSqGnLPDjAOHalI4=;
	h=To:Subject:From:Message-Id:Date; b=SWn4uacPDHLFjo6+ypoItlDpweEWXF20zfj/DWPJbsH3HeXJqBFypaO0RHBKfK4XYRz/XXJc5AqfuVHSqAZXKSyDkehLW1WJrP7hQSt+nuBQh2ocLlMsJ7r1iRMAFO6e+yuILPOsU5KnwwTw7itTnBDhY3KMSriwzkOCPRS52DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nVOkBucS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nVOkBucS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB329C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778227653;
	bh=CYObm/nhEb95NjOSgFYPFjYQq2GtSqGnLPDjAOHalI4=;
	h=To:Subject:From:Date:From;
	b=nVOkBucSA+HzceW83x/JwBhUeNLiXzgEYAiXWj/3S7vkK7W9WXDL374jZQzLXSgMe
	 PkBc5X1FgIO/1gZ7zBW3F0LOUQPKUa4O6FfCal2BOMBpikcjS0ErJ+JbPtlLE7DJhi
	 +ucIVcJsOZd/QqszFoAUYOJNUh9FCypygbnKULDsIU6Be9M6xyLMhUDGKy3EGYLVnh
	 ejrnEowTb8dJo6zALuKbVn8Pb6t+NA+Jn9h5LSSQrG3XHYNYtuUvPVzg5CKVU9BNre
	 4RhXzqx2a9ELE0dVRa7fQrwDd/+Jhf2hr09ztKvodCpiCn3jQMU66kNvuWgDoktU3z
	 n2XO/P7XqvoCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB459CD3436
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 08:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177822765369.1443.1897406438332134791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 178bb543b6d556a23f5d19807c026cc49b4b8c5e4deed7f68a7e702547991f08
Date: Fri, 08 May 2026 08:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778227653
