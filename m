Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 522CF14A0A8
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748678394; cv=none; b=X8HajfcmGLdIIasKLYZG2QUkd2EVwel4hYrWT/MZ1t33QDIN9cLYIiGDxG+bn04OBpMaE6VALol1IyV6jFUICoosE2Z5faWIPK8jRrCtBgH3mSwqBcShLD7tmOAzFerc7hWwouGZsYcmvpTif9skPLRQf0P5028fonf/oDHK6+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748678394; c=relaxed/simple;
	bh=r+VS/6zeuiFF8bUEj48AzJJ1pZfaJKs/5LZsq/MfMP4=;
	h=To:Subject:From:Message-Id:Date; b=aYIF45e1xrMcKvXF9bhSyAG4kuDCQOf1Y5PRLaPNmeL03A0s2Dg3F6ORKFJ3HMEaKtJM/YqDwqhip7B3Hlt+4raTOtdeSD5NbFLfwJrdDkmCz50BIP2Nrstrab3Nq8s0qsybARwuDKzID1c7Yan30AeSUlsf6zHfNj49nW9hH5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6uSOGK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6uSOGK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB925C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748678393;
	bh=r+VS/6zeuiFF8bUEj48AzJJ1pZfaJKs/5LZsq/MfMP4=;
	h=To:Subject:From:Date:From;
	b=Y6uSOGK7txWjyPDwrr1tpkEUSnPom6U09JWKW77cap8xNzIcF9gfEUUYySM+tTM7X
	 NpEiKL6VdVV2Hup82l35aZHtF9mFXmWzcPLVAZq4SMrl4Kuu2SF35pGp0ycwShRUoC
	 ca4aLG3QTOMX2W6rUuQA73gJ87tz6R67iGWHuGSjh3QhnBk5EAAR0R+N5beflhHWTq
	 AJl4XbzwIjfdffSntEuslrTs7+sZhNNThOKq/Mfcf146pBuBr7u2I6TZlVBirtA0g5
	 q1kTjj0H+m0Dp6j3IqgZ3CMUepDZDVJ5iSA8QQfQ65LXMXeoPCIWXjSEkLUbWs9aBC
	 jQ2uI8j3LUKvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C7FC5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174867839358.21985.15513881956590466974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f65307d188a385704f8643809c7c3bc5b7da5eae4028a9562df128798da9c03
Date: Sat, 31 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748678393
