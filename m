Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5781ACEDF
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768766634; cv=none; b=O0SZz/cVZ512iVK9VmTr3fjFQM+eax/ZogXmi2p9vPAQXlIYBc1fgI20/8ifPae0ROA+/LlEez58fNSckIhIsf0p+NvhZD61x/CuQUdIYpxt4K39x3ntsK1OLUnxqbd3HaBpGWkdwLhTMmvgP4po5ATbEjxl7W437HmxItod6ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768766634; c=relaxed/simple;
	bh=WDYhJny1afleGCpKURXhuHcQSadGjDCAGXWPEkm3KCo=;
	h=To:Subject:From:Message-Id:Date; b=i2Q0x6A8lQK7YQ+AYX+f1KmGDiABurmk20RbJhxXNHVpvECuyZk9cysOVAF4XEsFL0A3LrSmPyXda1YHmwwh6e+HBxKyNEBSnjTEWpyS4c9UoGApHTKPcWaaoaL3/MVZY3ibiHAGT7ULA0SPa00jdU5HR+tu07CnkOApZMd1bLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEbp2hiK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEbp2hiK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A9BC116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768766633;
	bh=WDYhJny1afleGCpKURXhuHcQSadGjDCAGXWPEkm3KCo=;
	h=To:Subject:From:Date:From;
	b=ZEbp2hiKRWwkyqJFSbFiRUibRaAiPPDy6PGI+4T4QzV8Z/jDNWD+kK0tY7D26sedH
	 nhzcO+cqF58JvySXORCTM+sySRtbv2E8f5ZejtKNsofGonZmGQOk2lFEb7hISG1alP
	 vyL/dtyR6cu7TNeN9+AIthqWCDoF5vw531bHMkssW8cqozBUR1TSW+5G4/LXHmnlZ3
	 nWwDEo+E3YwqeuOOuWrTunit8StGsqbfU4A8BI4bbVfNQttq/1jABvHU3sphRgmq7f
	 9ZaTIKy2PZKbIVwhVyQCUMk1csclKt5RckJPvmQgo3kR7xitNNcerIgBteVlKmCYgh
	 A9oziYp5B6HUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B37C98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876663357.14099.4196240260075577366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f34471401b23c63c3c837cf0d93f8d8fa5ca84567ae6d22a62de336ab7845ff
Date: Sun, 18 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768766633
