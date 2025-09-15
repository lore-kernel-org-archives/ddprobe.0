Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF8953054E5
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757945393; cv=none; b=f4bPGVOTTCCOOCR8f1ByRkcCZiID1IYDQZNiWGiOYdA+qEaMsLAY2mXel9/8lqqMmGKo/TL3Z9sDVCc7hAyENrA1QAoF+4hb6wq9sejdfaZHP8w03jWChQHid1UvfOayWF+KjVq0aDb3MoyPyUSFkQOF9p2m3KaxF5QXAhQvY2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757945393; c=relaxed/simple;
	bh=a9Sd8w4ZcaShfA4advAVQku9LwcTegRyA3UFbbBKraQ=;
	h=To:Subject:From:Message-Id:Date; b=MfGBcADoG3zCFfaFfrbIg78yEbwmNReveptmv3dp2KSfP2V2CltcOddx6LptXOYHMPYH0Jq7UbcLKBvuvj208KQYPTfw8ko+D+Mc6GC1tMJ85AmeIRvsbhsaUuZ3hNM1ZTWFmcqQzuaKpnmoeGrtEKTo6uyRnvTlV4IFFDLbakw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZEA/cdA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZEA/cdA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F467C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757945393;
	bh=a9Sd8w4ZcaShfA4advAVQku9LwcTegRyA3UFbbBKraQ=;
	h=To:Subject:From:Date:From;
	b=GZEA/cdAzBS3MRGW4jyHDlamwYh79NYD+YC+VlVRsuibdZhpA8AMr5ZyT0Jb/YSkV
	 8GdKZiUnHSo0QxHJb2DaY3s22SrdH7FcOIaDOUtmJVzEoQJTALO0ByiGhqqUAXLP0l
	 uiKWoyMFdu+3ryKzNUyS33W2skcx2A+E+7joQVMXFXxsNnWBPzLDVp3ZyG22rXUHjH
	 GuHmN0F+xAxRfUL1pH9sQrV4cISsKskzMxCEBlUgTrl6fzY5ImWr8uUlZmeFDXtvsR
	 k7MKx5ZmONwE9eXiuJP2W7fmHAc69FJF4nLDERmqw61v1clxZSyDCizTtE4UwCtYQ3
	 l+0Z4ygPO4Cvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064ECAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175794539358.8644.3910462778127834602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a8be60f1264a366b23f31de491f5b826acfbfe1cf2508dabc84821e5a9a8d49
Date: Mon, 15 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757945393
