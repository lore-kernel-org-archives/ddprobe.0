Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA9A433FE36
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776954454; cv=none; b=eHm94Ca55UpCxgvBeBF3Me/OEM0OBKIA2QmfxzjXAc41therWS0nEPykYTATjQQSNaY/jXH4pTBim9PNeOzv2VrN88A1VWa/zftCQdRDNZitrxeXa3XTe/JK+FgpN+Fvo+s05ENQJUBJFRhF1HdFhoiKwCKfmw5qt7kwqZkboTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776954454; c=relaxed/simple;
	bh=rcvUqnvnQnvHMgs6bcaZUgwpWTXcHHABVMPqdOcY7nM=;
	h=To:Subject:From:Message-Id:Date; b=hyV51xiAzVsJfgEza8wlsroAjZLSpHIxWsp+CY6tT3DWmcLCDfTpEAHHwV9ZnIiLG8VlYw85I18iR3TK2iZKmDq7anHh6Qv3an49R0jSDhDCI3gSu5mP7h5m5cntjIQY/I1W9w4MDRGx9zAfqjaP/E7/9QEOsDZWk/q3Yiuds/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MkktM3TE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MkktM3TE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB22BC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776954453;
	bh=rcvUqnvnQnvHMgs6bcaZUgwpWTXcHHABVMPqdOcY7nM=;
	h=To:Subject:From:Date:From;
	b=MkktM3TEJBj0E6rI0qdSk4oqC2cxUrlDabCl/tY4NJPqN4mboAXgnWV4MKEZVOTXL
	 Gt8qmapaCseZ1ScJNm9SroXeVPR5L7yECaQL/Au9+bZUW89Ebhm2xaeplivdabnzE3
	 bY0VF/HhbMac88VJgSstY6F/XsQ5Gx4pBFgv2nca40M87Gkegirud73xZjQlxtnHh+
	 QGARzrNhjl0pjh1M3ciy1n8OJl7pTnktUL+HTW3nfqZazKuuCwAjFGJKc4v4kgu6oh
	 PSuNOoI7oYVLxmQx/obpPHiwwa6d++wUadYm60JXx7NChpvT/EYzQiXh88qP3/IPiJ
	 QaLNwW8ncVFsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB902F589DD
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177695445369.32669.8164051978994575852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f180e3d4daa8e12c343d7892be1e0787ff45b4be55fec2ef3ecc66913df7866
Date: Thu, 23 Apr 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776954453
