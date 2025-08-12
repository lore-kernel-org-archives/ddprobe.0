Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571A02D3A68
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754978994; cv=none; b=NFskvq6G2u9LRAmfW+P0QKtAbjSJLxid1/gbeFCHZVMQTha0MQeaMJfVc1+Ee7aNYzTDEkbB2QA9MzyX2eLDOHHuVKyQHK7LOQKriYn4mMFtxC/CnqsaCH4c1j8C1FhhADjJZlSoeEB3oROyIpFC13k+JlEbA5GhKEpkGfoCn0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754978994; c=relaxed/simple;
	bh=nPmm1lqOqWtnD13zXaXsveiQQzYTutApBgfJs/5HHDY=;
	h=To:Subject:From:Message-Id:Date; b=oI0zYHSY9M63L/vPqhX1Y11jXIBOpDTTvT6oBiHSShOwrD3vt1+OFY24pGJ2p6taIlH/3E3AGeC2VFc7i9y6ztrUq3c4MfpHE2gqxhpyIj3qskIrybA/LZeqEPWnYrkRAgskioQ8lWbCCvyHMn70yQSjPPWu2IR330fVIkEgHsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LF7bLQ6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LF7bLQ6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE84DC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754978993;
	bh=nPmm1lqOqWtnD13zXaXsveiQQzYTutApBgfJs/5HHDY=;
	h=To:Subject:From:Date:From;
	b=LF7bLQ6qlEBT71S0j0q6SfQY12WQD89aFV+BPkiPukdH/2770ZN/SSZUbseWFhTFt
	 PhMeklxqHbwbZCtksXT1eH3WQPMThCeQrurAUsymbO9v5OB5VJCTRLGxE1s+p9+iow
	 laNPeeVMRppcmPnLkUI1bdXvwEndxtDdHg9wsBhYX6TAnRFO1DxpvOK53W3sReJN/u
	 Uwux5xIKO8p3BFJ3uyQpQNtBTebKb+tu4U0UNEyMH/4r256rUCOvMK1uZL9dBfhQKi
	 KqIZhkV8bSVDlCL/3vX7d0JC4jRqtMLd7S350uSV+cl8ftWT2djDBXX1t/cL+P3Qv7
	 zGJwyYtVdOCtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD3DCA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175497899363.14797.362177724670151211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0bf6966651cb4938a4764f1cc077e680581f3acc35ae7e2eba87a557b50f69
Date: Tue, 12 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754978993
