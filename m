Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2524F277C9B
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759965594; cv=none; b=ISZ5vhVo3FNWpEv5hvLCFp7S4ORHl4+R5bVEjXJ0XRNNvs2jCMfJH0ft76KsU3K9HcdX0ys1WqLTkgkb0b1TSX12IZTNWUzrDXvts6aWjsKI5NkYgVuw8h48MCte3wpsHq7GZBwKa/HVQO7LrwdzEPFADmvBR7C7E3OEzsMqYCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759965594; c=relaxed/simple;
	bh=7TWe69dvX4Xh7yQKzGJg8Ox1YCoq9rkCQR0DUiCFGp8=;
	h=To:Subject:From:Message-Id:Date; b=iequJ8Nb9FUBhiDfGMiJ+EW/wbV26hufLO0z9fItUAs9JGbZQhv6ba2MEmxIMssH+92mZkmFzc2hLPRPcxGkXYDG6rndXPayMMPaFIFl5ca/a9pnQ+oA06VC/ejAFFvrIdjDpNZQefYDor7wyBJHySmNiCJtjOrjIol3R0XDihU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSI+ymmF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSI+ymmF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A394AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759965593;
	bh=7TWe69dvX4Xh7yQKzGJg8Ox1YCoq9rkCQR0DUiCFGp8=;
	h=To:Subject:From:Date:From;
	b=fSI+ymmFyh4tZTn3knIoiefjT+iA/cyVXw0gFWo78eilh0FQKxdNwGsBgfmtaNQrE
	 feqxc0zyioJToIR2RAYtTUWejjxgNNMcGX6Vf7aWCoWYyqAvJwE13aFlQyGiG6lfMm
	 NUhiePHNPWRPc5dZez57GaYvx1r4PpxOGqYumUqD9OHw/Vzeq+iEv/cHPmUgvMlZgM
	 3gZj+gV7nwwB59xdzClEgBwB/Dyii0SrX3WRjOCZyi8xCNVFjjyCAXD2VU0odxk8RC
	 Ib38/Y0w4yursER6DYA6+wXHezas9XQuF74XGkvT2qe5Rxjw0PMyezil5j0dBRANvA
	 e1CWn/1u5kjVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91370CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996559358.6765.17147900684602904259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ba26cce39f7217d2661d80a68e495b6977626f034b732c25bce5f0dc2aed49
Date: Wed, 08 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759965593
