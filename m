Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58378293B5F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775610334; cv=none; b=BSnWEwWrAfFtP/Kv6y0wxJ5GPDfh0Ea+QR8vORWpupme4qXHPIlLWHn4K0CEjDUqK47hU1xdSML6wyVgHjwg2zIR66nOzzCiLbJkmECJJ5xWiKR2QNFu9K6Nkh23VZcVXbrdTcEyb4FaQqUPNSsAF2CIc7bBPd5Zq/5G5NxVxZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775610334; c=relaxed/simple;
	bh=7ZtwStzFLgrQ8sZRIM/3iv5agiskQCSkVZWOQX2x3dw=;
	h=To:Subject:From:Message-Id:Date; b=FIUuBfX+BYPRaefuKBSsUTsLgUKY+pLUb7J3FLc2KQ3X7nxjiwaH4JtqLLLIW+wx8f48Rt3IEMxHmE/SUgud6FfZxQWDTX9uogSAm/fhcH5v0eCb7ogpmtmmD8io17jbFUvXNTMI1HneuwOCBN4bB/V/7++qny4Dq3AKl7t/9qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnz44NrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnz44NrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 018B6C116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775610334;
	bh=7ZtwStzFLgrQ8sZRIM/3iv5agiskQCSkVZWOQX2x3dw=;
	h=To:Subject:From:Date:From;
	b=gnz44NrX/aO5mFZ7aS4A2N2gbjeuV3jgj8qp2ynHss5wFG+U+899VOmNv4j0D55ss
	 qRolC6h52lyJIZp6e6q7QYbXubiH4A1fHnH/z9MSh1b82p6eD+0OnMOf9fOuRTjndu
	 DfokPIoAeUk7/P79mKJPyr1DsvPpVQ5gdoXMR96nmuhHkmiJf7lSqL6B0RXIFF++gf
	 HS6zqC+IEnZ5eSVxhy5KvdZf+7vROshfSyMjrT4+Sisj9iyDMNdCNOLwNGouo8ro/I
	 Q1fbaZRt9ScOz13CeHK6ok2BSnNrvGZT6ekShcMXa8oUFLM7/jT8/53MIQDXhf4ZJ5
	 hC0u3PHkFdffw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6B66FF512F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561033376.13162.14087853798333360050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 188d0a86c274e85cd1214cec68ce7041ae51b97563ed77007d7d450752820006
Date: Wed, 08 Apr 2026 01:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775610333
