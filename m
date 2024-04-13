Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D403E462
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 09:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713000563; cv=none; b=g9NARG6dEqa4qWdGWn0mmStiBMtrrcMWCjLXSPvVNMYbqmQvuwunhJ6vuj0SbaflC5lC0bpzub8c2BviOLBJifnC/oRoiUtiNdLM0CtK2s5oIYQG09hMUX1nRMYzpKfbJt3szSy5cwQrPllZT3tjySTxKZuvEI3zLqh+MQbXLSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713000563; c=relaxed/simple;
	bh=G0xrUi1MjJgV8r/pK8R5WK5xeNxFZaEhDsFgdoC1fAU=;
	h=To:Subject:From:Message-Id:Date; b=oZqTWGcEDJii4QbcdcoQkolLJNJPeJ0QD12dXJN40XgY1BnBhQDb58f+eJM3R3wBjGbhi++liH3neHsX0iRI/uxSV0sH0fH6QakPpUps63tCAwILjHewGGT2hCBF4IISX1Esvya5IdRZhydaxPR85G0O9cggvSpMkZMniBTlce0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M79ONTb9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M79ONTb9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1616C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 09:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713000562;
	bh=G0xrUi1MjJgV8r/pK8R5WK5xeNxFZaEhDsFgdoC1fAU=;
	h=To:Subject:From:Date:From;
	b=M79ONTb9RBBKtJmZfqp2t8X3MJnen0PruM8qLMReWDSJS5pnRMfkd/OK6OOEekxnw
	 XCKKbv4QZzRFygkeAy+I9YyVduRlVo3osjkNS13dbeQsN82+Haq5XUpPSH0mYLlTmN
	 Wzq9EsJWpZZ/eQbr+2d+RsAzlOVuYDawwv5oBC6Y1yfk4sE32rc068TulAEx2Uo9GZ
	 puDpEd5Q7/bk8cWiBRLmW/Sv9x1zmVoPgnGCeuaMbcZmlLsiU7VbCOmLmtkhobHmxs
	 K+eLbwkdpAXsTaTj5jrkUHoT5+4K+bllMgsxx2TWSeMd0Tp93fApJ63wkqy019fILa
	 tlrgb8s9sdL+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB467C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 09:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171300056275.4824.8175659900413665432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e08949bc70d82f453398797f970fc6591a8f4d79d119feb13e6acea83eeab30
Date: Sat, 13 Apr 2024 09:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713000562
