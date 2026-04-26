Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1298E40DFB9
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777203454; cv=none; b=fZw1wzU9niIIm/7KpR0dl8/H8E3fefEOhbXe/AGdwuw+T3/J1ls+G0xky6tkz8+byJXwMNfOyC2w0ENgZ/P8zXmvGGcSd+gLv27G/uwvN3ZBKwlPNtAypiuFUCaiMD/Ud0gGBmR/NNShOkj8PPstXNB30tF54eoU7jiTZoFaxCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777203454; c=relaxed/simple;
	bh=ki/bkc2xlw8fA3xzc1UPuSgo3XIRtbD3SXN6zsamCHE=;
	h=To:Subject:From:Message-Id:Date; b=dYJpvrzhDFAYOsEN4GeP5OAK7RshDwxwasnv5EVVuFe+rDgDHlJc5NkFcml6Q+HcLayd3Z4HV4Wrj1QciY4CUUh1RWAUVHYP2Gu9nG0n/mUBr8DID1tzO9jLQ3SBXeLgPRINUnsWuDk1H6SNkzAVsKLJ/JwbHvo+JiQGcYR18Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NT1qynCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NT1qynCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7760C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777203453;
	bh=ki/bkc2xlw8fA3xzc1UPuSgo3XIRtbD3SXN6zsamCHE=;
	h=To:Subject:From:Date:From;
	b=NT1qynCM5i27OdZqa30ypGJexX5eOC3ksq5dZ8goiFCCbDxn2r0JFlt/wFeDHU6Z1
	 kmq+S0DK1yL/h83ArQxDbLYQBpVHE8mRX6wOJ7zmKhcL9+HMncLD6ASzVuPNyvyQBt
	 EFlXyCGO1Yr7TMY1sRyifVLmlaLIhu3VPtawXzEOkBNoM2ESR/ecwDWRqdg9uRXrKx
	 tpdiYtHU/zyzr0Fx8TUC7jXZOcnOejnD7hJRKmLob/adNPoRqjG6PwRcbDx5iT99tT
	 feRP6F+TCqsX5yG9NEH64JLy6DoOWAjIw1N5Sd8BmHjV71pwjXdwb5iLsmn8yifkOO
	 XWYQUECACqfPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D90FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720345368.21493.1152882449785657313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87c34003f52c0fae22a934e05f5f22c3280822e7b45eb8934338f1f8bcf1bea3
Date: Sun, 26 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777203453
