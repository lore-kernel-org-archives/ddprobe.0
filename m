Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117B053E00
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705675697; cv=none; b=te7anwg8ExYBWgmxW4RQok4bh3jLWqXx5E6FK7NKYcHGNccILQX1Q5Tg0EqpjinNx57IZUzfC5ycsvH3MRqriCVStqRGYhX/q3/zR1OE68DynGT2erc/AQQ/yukM4+fFS3phgAcnYwn6lesZhmdNFyvAsq5wBVSVZLpnL2nPUX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705675697; c=relaxed/simple;
	bh=KOkPaDw0ArkoiUxqLjXOG+FQWw/30WfX46ArvLovarU=;
	h=To:Subject:From:Message-Id:Date; b=rQnEEwPlV2EvgpLPH9+mUiFOHNulpYl3mBZPJBb7u3b6JWfOwxZWXCOaC0VDlmKXgS2aIHLJY9bYg+eY4QD/vzZdSY5wCf2cdf01D84vC0RZSvaqjYoTYHNl6GOM6z/y/ltxH1LVTXTwwb4957WwTFmNO9Jfu6ascOiFD6r4txc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i5uASsj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i5uASsj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 788A6C433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705675696;
	bh=KOkPaDw0ArkoiUxqLjXOG+FQWw/30WfX46ArvLovarU=;
	h=To:Subject:From:Date:From;
	b=i5uASsj8gxqI+ZYUYd2HEpfpr0skr32XSz1keQmDCRHMZU/n5+RuYqObOicGn1Jzf
	 0Llsp6LMrRI2hVZk/kUMCfz1DVQ9bc/utxQ2hmjGEnYY6PGsCZ/mfNV/0AecrzA1SL
	 ojMtdd1kynwdaODnat7Ev7aKcBz83cJEiUoHBsv5akyJiGcR7rwVsAy8gAiz1ouL+v
	 lx81dAlxuByddkxzUeps82x27dFqpkHAX7zQImnBhIibZdkeBXSjynByTPPnZ6dY5z
	 XIKuh0mgVkDn/2/QDbnd0x62L7eiiSfQexIObB2FNJiCOCT4ixPN7RueLa3lqs1cKh
	 z23npFJt3+BdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D3A1C47DAF
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170567569637.2113.8494089045053923736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bfad454dd34fcdec7aff4a816393f3cd21564f35b2c14a736761c73d60be40a
Date: Fri, 19 Jan 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705675696
