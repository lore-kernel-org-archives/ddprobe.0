Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C526B33F9
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750940393; cv=none; b=Sc3Jjvi+VMB/H882QkJDyzfIywVkJC6C6CUjiv91oCGJbWC93AJL3XSq7x1gcwIjuao5vXoiJ5ESJQ08EEWvgubV351rK7iWB4f2FmE9Ts6UCfEf5RtIV5zxg832E2lhqofGM6o/f9lIXOH8QWAlhym86lcYHuZXmxQLSy5Jyzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750940393; c=relaxed/simple;
	bh=kvwDMyyHX6BIO+zePs9N5PcqzxfjtBiXEDQ46OPc5yY=;
	h=To:Subject:From:Message-Id:Date; b=Jw9z2weX08yLUdi73e4KjzRYTW0GHqs2jDfVj2Osn1UCIGiLyL02khTJQvzBMZ03yZkqxxN1C3CzysnMCP4RhtH6tYzReIoyddNjXHbtHGdLEKxO4Fq52N91bEfWL1FJ4L+TPTZARKQsDp5577mBm/NOf6eTGFVyukEcxCZ3lHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEToEHGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEToEHGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F33C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750940393;
	bh=kvwDMyyHX6BIO+zePs9N5PcqzxfjtBiXEDQ46OPc5yY=;
	h=To:Subject:From:Date:From;
	b=AEToEHGBUI6G1LOJ3pHUabTjdIbkCmgQKUD3/UszV7VzK+MpS7wBf6J4FeX/0gyri
	 dEH0V1h05qfSEWYmLEJlx0DsZv+8ifGj1sh088gbiHJNNWgBzB2SzIxuLAf8q3DLtm
	 ATwjfzzndVZPFP2y0J2MlxKR27DW/YhJMJHH+Tl3K/cuoy53HG6jPGLSmmiJGk5rs1
	 qfeN2y+bRbTsNE6vS953fLjVBCMooEvC8E1uZTA1YnYHCI32LpEp4tHTdMSI9WdB2s
	 WcPjPa1detd2lLH3PynT1GUAjUxnAeRtT8of7rQXj2LUUs7icFUdyEmf2OTuFN3H2N
	 6c4ZniCi1xnVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93597C7EE30
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094039359.29210.11685204224372024081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88b1315b81a2745ace1fda86c6bd0e618312ae26729e2955a83e1ff13a25c21
Date: Thu, 26 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750940393
