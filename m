Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8103594A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777865854; cv=none; b=fKxzjg/EsEHW7n5HXn3iqtLO9bSMLDn9Xeuo58KwUtjZKPt3mCczshYpbu6KZzEBFBizt0dhSRzPArzgwJFmUtqBihZjwr2r1S/VeLKtVkelVOEpWlgTmPFSiz/r2N5IiIDuvhaGwZwsZPT3hmiKQvgHPBQtGdty+BLNGSRwEII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777865854; c=relaxed/simple;
	bh=2j0rULrrrQlwjlXQBrrnY7iXFYrJnjCKwgDHGS/2X0Y=;
	h=To:Subject:From:Message-Id:Date; b=s9QSNUK3ZnsLYw+sfG6bjWinEw/PGnz8+hdqLUQdtXdPzPtr+D6R1kspDc8IPBTbza8M/cYnhLqY9nfQOniVWixpk7PEaqqWZ/0ACpwKOVB4HKXLjcc/GZEW9eBjiu/OfX/Sdv8cvnUA+0IBGb7380JIdRIzIdqb1LmXOFMclcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jN11U/Oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jN11U/Oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD1C4C2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777865853;
	bh=2j0rULrrrQlwjlXQBrrnY7iXFYrJnjCKwgDHGS/2X0Y=;
	h=To:Subject:From:Date:From;
	b=jN11U/OyVniuroZHiV3Wc36P08AE+1o+huzVYT77ezciJlagcOjKttZ/zbNW8Ojbm
	 l/AObhg5yB2MemnKK7w0SGbIhhwrceDgN2ToAubinsIplWgreBE1TA/sbgPLcYGKuk
	 hzO2XUyPtlEsQAjip8DAdUOYvCIT4NRoa2C23fIhCmZ+ld7DOnbe5vWoUmLyUSp4Zc
	 STkhOKdFhc31mNXybKyggiKp6dVprMXhhe7g5wald8ncUX0GrTEp+eJLaXmlznIdQC
	 onsMJFG9LyJX8q3Q3Z2kb22hSSBIgiccV6DKD23HICANngxjEFDZhVtNKEtAnOSO7h
	 uZz/1Y7zyMebw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5B7FF885A
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786585368.30224.1323922824517343165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70acd14d56bc5988217f7af2a302f2aacd18527412d64471808b45fd38dfe238
Date: Mon, 04 May 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777865853
