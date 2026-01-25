Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA9631A545
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769347434; cv=none; b=Zu0b7f1J+5gBqhGcTyAScjzzo/VYvu4pc1GCjdSC+ZKtUnK754xtwSPj7zjnhDr/Egt53a/HEeDaoFxJLS4/tUXHTPxF9MKqWQPCfegDoUKB1TfictivTQ69gV4c6aaq0fYfzt75bB6qBn1ZEBv9K7rCYpjC+y0dr1VvC2B3Ojo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769347434; c=relaxed/simple;
	bh=E8PS1qd58wnsPQwUfD5g/ESDDIDd9AiQxWlG3bGSbu4=;
	h=To:Subject:From:Message-Id:Date; b=fpOIrw+pI0xBCb1i2Uhl2lXq5KR3H5EPjOKeAJgvIMUUtZqNCEW+3hpuzTqEpgVMU5qBcgZdFVkpgwAOp5F/w8ProVN/enL2gXlx9GQRr6uJJALPPPeEXYHvqPHCBrwYGAtH3lZageEpkVJIxGeNdNXkkx9E+4px9oS3P4Dpjbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FEpL86B0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FEpL86B0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1578C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769347433;
	bh=E8PS1qd58wnsPQwUfD5g/ESDDIDd9AiQxWlG3bGSbu4=;
	h=To:Subject:From:Date:From;
	b=FEpL86B0GMddQU585GzGbLlrGM8BsdS4o8g5qv8A2ryQsb20hXCy4zvIm05lEC2WV
	 3xR5KDEnhEHBHVrDd4mA3Wtd31pMmCXqRPL1dzRPjAOxBymdgubb1VZGhdUtGKu8fE
	 2UA2K0zMTOywNRAPVMtOCH65QCdPskl6rwj9gt1y6sDlU8vEIpErOfYQ7X08vMydqt
	 DF5YSlS1S7WEb5yA3LrzOntAJbKx8sRXT1Pc4x2pFv6rmI9oH7yzuzwRtxAXyGCXtk
	 D5HtmCxNhQ4kWcIW+VY7GfB7sEBTnlXGgiOzD1uA6+dA4qaFOD0fPcLmdzIFww1Ml+
	 D/k56svruGHMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEBDE63CA0
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934743357.26270.12813126271213205363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec677b706fba77e4fd2447f6914472f247234805637201244cd38c6ec0c08db
Date: Sun, 25 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769347433
