Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5BEFC0A
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751338194; cv=none; b=Z3ZUUvA+qOUybyeyGtxoWECRlcmlD/BecgN7RO5CKbP4I5KlK0vZMEVHBcfKg4jiWO1T9tPxfocASRvqed1LO+cCj4/HRPebnpwXzDCftt+M34nZ5D3UzFu/3/odS+oq1ZaMZCtunS1VoFjAbxbPqUGYwvWBGDk6y7VeLHUqA3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751338194; c=relaxed/simple;
	bh=BnsZL72x4opuvl5xeAucntgAOsrdxAfjYHNdiuv0DCI=;
	h=To:Subject:From:Message-Id:Date; b=XAXyFl9KYBewDLTuGyR/5DAvEmAZv8l564g6R6aA3imH8zXdJV9q3/KAtmoLLt2M21IsmeEqr5iacj+YgkshDV+SaqRsWt2SVDxYKlKgTfGZyELG8LJ4EbBztfJFY3K+wiaSChR1/9JGwN2MCSCP+Dihycjit4/gfXXIAB6+PI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pR2SeKsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pR2SeKsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E24C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751338193;
	bh=BnsZL72x4opuvl5xeAucntgAOsrdxAfjYHNdiuv0DCI=;
	h=To:Subject:From:Date:From;
	b=pR2SeKsz2zsAXA2snbhEcWwl4dWaLTquHdPGEzAHxmmnZwjr5uv2gefEZihq86rq8
	 yinTH1MZsO2cvFrtflxdgo0WV/XW2+usHzz5I4lBEjHDUyvBDyhCeZucmIOMI3opO8
	 MrqEwqJ37Djq1PZbOFgDQMx7SZ2ZaZgMkYM4p8WBfsooqsOG/cCabNcoliJ+zO652I
	 PFTCbWQToeAbuwoTwDWK5J2xVJI9dTE8T8D+/D6P04RnWj4GqcrriqO1WPlQejdlET
	 0uZBKPTK4ZQLW5jBoE+0Tq1h2szv1QKbZALbpCwin2zkj520NvXg3V1ww/mC6L+osn
	 hOF3vOkJnSYFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D71C83030
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175133819357.13567.12903521972671534121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8db53d3a898009003fdc08723ac627b02da8cc389e11a7687595e5ebb6e836d2
Date: Tue, 01 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751338193
