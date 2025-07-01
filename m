Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF582AE68
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751352594; cv=none; b=CVqjYniTPP/UL02FTMCNCwP23PQTO9pTBPP1X8NHJP/NmYYwQB+9BaKvuDlQQKrdqdWhOMuvKczQmFVbtFD73ljXHjESVYcwWjEwxcIDgqsRB96zaxjd44XXq00Un9yzfGgNDA9FyePe4KC/CI8hGUeEM5kjKw3eZlJY8KVYirI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751352594; c=relaxed/simple;
	bh=68H7ZrWbDPD5g1MDWSHhrkTpacXAt6Wj5zlMHZOQbLI=;
	h=To:Subject:From:Message-Id:Date; b=VKGx0XNwSAMhDJJA0xNEppUzt6Sa5pAcpkguiz1LTHakkwL05JdtqhsseJdhjfNUhKENrbvZMF2B6g6F+nP+n63hWvNDXoh9bqEw1LA588KIpY5hz/vm3UoFw5J/dICJoEllqvwxwlnK5ETAlBBp9s8RXT3RnhditbVE3nCw3QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=am9/oa+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="am9/oa+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03E7C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751352593;
	bh=68H7ZrWbDPD5g1MDWSHhrkTpacXAt6Wj5zlMHZOQbLI=;
	h=To:Subject:From:Date:From;
	b=am9/oa+dS9fEiFFoO8hMNcxt3EbU2mGFW/cpPSzBETMoHMpTs3k6GF+w7qdmwq3vi
	 N2BTrA29JPbh5YJMEkZPunkHpw8pkv11uCShQY0ZQSGmj2fM9lLWN7bBuUz73hivpx
	 6XWpoo/6qmSJHWkJkZDBwTaM29l1hr3+UHFeZAKckpcRyNE2mtDd6VDaaQaUsC02dl
	 0gSIJO2h8HabYi6omjRBf1B6m3FvylytC6phRQQEwvZeo8a0uGb2Qum5xhW1fQ5/zU
	 hWduoBI4PK4rdbJBH2MOdNzaslz9TJ9pnWwinNdujyOkrm+lnyw5ZduO+mjbjH3qCN
	 kiOS3oZSzU4Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA1C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175135259357.23722.10033291244244132896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e209e30fab2a1c481e9f60f0348e78f3d2e19357f6b88a5ebf0759576ba4d8f
Date: Tue, 01 Jul 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751352593
