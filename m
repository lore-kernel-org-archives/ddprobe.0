Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CEB2550DD
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764693174; cv=none; b=TOMi3XR68RsCtdI7N6l13f8KIl2U7HoioBH8+9RDI4nC6me0XrLLkBdqFRUEhA/Slvbfu1KaNcfNdqwjuwGCb851dc1Njw/UH+EcVqt+pceZ2hSqSz/s0mpDUKrc7hoQqJI11b7Z6u4Fga1AHruoUK7Aua0+UC/Lo9+qsoDLA0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764693174; c=relaxed/simple;
	bh=MRsxbmTHha0RtpTDFF19idmdxApsSglcJ2j49EGlpIM=;
	h=To:Subject:From:Message-Id:Date; b=Oup1p9X85NonruHcAY4YTaLjSEicrxgK7wczG+4AKNuQXtP/cP8PuJ725nfWD4BtxiJ0hKfC1Yed0u7Pw8xmDIoRUFNE52enFMFiTIrla+fuG5IdYv4Ocnwc13yGScHJRBFEpszXwnKlWfZcdd3EtKGI/DSLTwOnSuQh8NdQCL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBmgrvZK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBmgrvZK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19A1C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764693173;
	bh=MRsxbmTHha0RtpTDFF19idmdxApsSglcJ2j49EGlpIM=;
	h=To:Subject:From:Date:From;
	b=eBmgrvZKRsePSwP5DuxgWk6FquZ6Sz+AULycTjIkJ3fHX61PTS0ZvnPBEXwOCkGT1
	 kRbgaGF91sjXc2WxjMqFO+3eBME9mwDQs5QrvpaV34CkhyxZy4DiHVbZFZ6SLiHxTd
	 Wt9XdRNJUdiRevJnY4JBke9l7qAebenxJNmz/7QdRxztW3TjZS4Kiu2frQnSZfZGu9
	 VvS7P/H0FVIm7IXXd7DwWaEkSIGHDlMft5JwdjSkhxkJ20925VrzThRpLfPWJ7bKG0
	 Xd18JNLkxitImS8p6qpJhjGtnEg2XMxw8H4rmB1iFE+UASwT9RBB3rE0M3rVS6/xSY
	 lcjKivjcVn6zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9292CD11711
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469317359.29961.611252244540729314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85fe3a8b6694dded0379306683fdd1464dddee50af46de4595edaeafcd86d92d
Date: Tue, 02 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764693173
