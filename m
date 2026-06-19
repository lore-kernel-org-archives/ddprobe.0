Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1653D1B6CE9
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781829994; cv=none; b=HSFE4X8AGEUCqVfvQMgf7bTjo5MsTFErkpBNyhenUIQsTwVI3TYjdi2PmQbtfzOd0UZhNvcOmr1iBoYQHJgKMOQPTDcbGfkm98cOQU4kXbf00SqQlC1AP00p/pSBSkMAGsQXZiiuSfntSd8xun773nQkhPwejr44t7FW02Myckc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781829994; c=relaxed/simple;
	bh=M4Qr09sQO5I9G0O4RMaf6LRFzNMaxOjYrnyyPjvUFUI=;
	h=To:Subject:From:Message-Id:Date; b=A9jhWevJouQ0LFkVpMSuIlQ5ra7yLEPvKTgitOBTU6Ggl9W/r6OqtynyP6JouEYs+JQHHwXAqPuFFP6lXyuKWEfQQlFFAwsnwom5P+6sLTRsv533NFjF+aQGHynI69WU/lYoCNUIAclxEiKhrPqsn4XRHLOaEJCwxFs2xbAv3NA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hAmnHL21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hAmnHL21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47ECC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781829993;
	bh=M4Qr09sQO5I9G0O4RMaf6LRFzNMaxOjYrnyyPjvUFUI=;
	h=To:Subject:From:Date:From;
	b=hAmnHL21B7uyDrOuQ+nwK0Ejr0A64pG+V5U5aplOczjiSSLOsHoO2h3jqywVpGs79
	 OFGQ/CdoPRVOpBQ8Xkvhf/Nd0iB4IjBayw1UZO6GAvWNbjD+V/W/CyHgJlC3TddhpB
	 gLyukH40XQCOKFl9FbYDUXIJ0r0mlJevVVppvPUjHP/uOl1/y9YiMJ0xiIEmdW5VIq
	 6/aepLtnhLQyWp6aVfBibqPOwVX9aMdR0qHxYp1zME2RaQV6LBliFxDNcY17fahCsU
	 gpGjkv/rRkQPaEFhYQVa94Lje92Lim4UsmHREsvMZxrN4jKkGpfhByI29L6HC0xDyQ
	 qWYk5Npw/HqpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2D0CD98FA
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 00:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182999368.12819.4158080938894577880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7abea5ee1a9ea3308d728ad8841b56d9f225489e5df54ee5240fabaf46106550
Date: Fri, 19 Jun 2026 00:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781829993
