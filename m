Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB766FC5
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785178234; cv=none; b=hGqEEfa6J6CYgV+CB+3vXrUoCmqvBFAprSYCXgN01iGG26nHE0VinfKDqfNI7/dNoBvXhENc8Fp+WD8B6UO7kwfqNtVRAcTSQ45Fl57mHG1qZr6gJd1aTsX7tdjm+j44GA3d4IDqEDdtvDTVvxrLgJpIOpCCk58hz/YpVHhPOfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785178234; c=relaxed/simple;
	bh=ekAD3PTq+FhdxYNMdDgfc4HJnM/rPdDNp5rHM96cCnQ=;
	h=To:Subject:From:Message-Id:Date; b=ocPzuKrErnIFPkmCTWWuefukvWqiBJ3eGGBU1UqUOOD6dSCXPrAKSbniBkrVuk49XMqcF7hj6cf1hdvLCYIAhh+rP0iPun15hUJfc+X6dTdicDBibWnBgOl7pUlDstT1BjW51CL1TXNRIOO2a75/pggCMGSzeNdUSg2LIgQJGpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XjGEZ8jK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XjGEZ8jK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E6EC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785178233;
	bh=ekAD3PTq+FhdxYNMdDgfc4HJnM/rPdDNp5rHM96cCnQ=;
	h=To:Subject:From:Date:From;
	b=XjGEZ8jKKWhBZRMnZgn+815F5QZXbdGms6wr00yyD+wgEc/STca3/gqrhwh+rYila
	 pqR5y5hMxTdd1I3jj5B8umil8KQW/jSUz74ZDvagXBdnNhGszeqTAaLkkxR/gztWka
	 LpTxYjuFKpPD46mac4ubKe/bJN4GLP4j2il5qC089kxoAm3bj8T6Mw77zz8xU1NZA/
	 2CjO/TlGj/q2pI+42X2NVsT5lG5dsIFT12LACEW02Qc/xvNm8EdFQKcJ3GClDc9w2y
	 v9x/Q+CGnCWtmDFii3BJsyoQ0h1kQNaUtkE2Q/tw7n6ibxSoakj8UxjjZO5m1dUjD8
	 e4NnF4IDuSH/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D9BC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517823368.560.3230099544847092881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d5f16ccd08ffae71389f6f2eee3776e06be523a3f3aea42ee3e88deae2c33c
Date: Mon, 27 Jul 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785178233
