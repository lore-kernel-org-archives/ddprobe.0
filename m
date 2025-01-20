Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BEC634
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737345954; cv=none; b=jPXW9jXxPJmpu46OPPrIxhlWvVxZoAhQVA7KtlW2ov7cdVkgVwh5XMehReUQTX5JPaByR0VQfXfKtkrcyl6BFZM6yDllxbqoL4yhdKx3bFeq8lPxVLOVrm2VNlhXTAtGmNJAUpV+qjSKeUnb1E8oK5tqqm8giIginAOkhYoG2go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737345954; c=relaxed/simple;
	bh=YFBBfGjm71HDrYZvTXQr7M/5tb6MDaDCPDEGximiods=;
	h=To:Subject:From:Message-Id:Date; b=dl16JUb5GByC0FvoMRJKvEth6YTEVZCvgDEfhaxeO33O/RsVr/Tr0ydBHjv5/JGuZG6rFnxHnNoYiwEWHA8oephoQXER/UmJE5fmpPDf4zBEqFMmyaI3++g+Pdik13W+Etckupy5GtEK7cXERiJfipLT23EcZZIjPyNsNaQbGNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kb/Jg/bi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kb/Jg/bi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F8EC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737345953;
	bh=YFBBfGjm71HDrYZvTXQr7M/5tb6MDaDCPDEGximiods=;
	h=To:Subject:From:Date:From;
	b=Kb/Jg/biDtwQOgmVlDg1Y3RjM1v1ETEVqvP7RI9AZFd8OV7JXrjq6LLJBohnAH53n
	 Y+eSseHyoHaNS3XFIH+SrjXujZ8gpMaumQMdA4l/gIz2ztIHfSpvPMxcTsgQD3YFQs
	 6uB6w7q3s7L9mYgs5IWsrHBejXc5NZgn1fdTk4aj08+RSOd2ztSlFtN4wy92RabU9k
	 68xuyoZpVHxZEgZMnA3QMy69kwO/bhMWbJdr8YPc+SGpzmU+bF9XlsA+0KlVR8fSiJ
	 GelksEay8k6Qw4erjt/fQid2yAK07AnJ5xbBVlHoE7fBpwtUnzCggcnm/rFui6CQKx
	 81ZCiBrvVYVIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92477C02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173734595357.27710.7992715480273300828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec3da5c779a3fd34205766588c8997e0d3c76040df286ede523367ff9ce511b
Date: Mon, 20 Jan 2025 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737345953
