Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D902EFDA2
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760471394; cv=none; b=eVg2Gfi/0BiOv0KMlMH8JrxNFycfkUiNrZrRmiMkc5BHxCqpQxZI6sz/i4aEmqYiz7CrWvrAGKq3m0L2djJxJzKjBI2xMGSvkg57wfEPm+vW+UD3u6q45gPEs196hhOfFWLAYYxnvKehxST9hssI1B78XdL2c+ZqhJ8wmQN6F/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760471394; c=relaxed/simple;
	bh=ggYj1qiIkCrsxrAbN0XCXkRiO83oY4zFY2XQTzPUoh8=;
	h=To:Subject:From:Message-Id:Date; b=RgJ0/2C1Xe3YPeSegmlWeoKhY8kEvSRjDFM6PHHsxK8RrF+u0+/KtYflk5jtqv3R/G2yCSUJKYIdHatCPjNa3TIT9OQ1r5TqIxRFS1O2EQ/3DdgNfes4aOF2vwPspewB6k//0R5kfvjFjR+DO16k01A/8I0Aeh3fr7qE3v3KAKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gyeShBB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gyeShBB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF63C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760471393;
	bh=ggYj1qiIkCrsxrAbN0XCXkRiO83oY4zFY2XQTzPUoh8=;
	h=To:Subject:From:Date:From;
	b=gyeShBB8wlVEFQGVDRCQ9Sl3pG+qCdY4szydxj3++XT0xJBY0+VPV8QyyhTZ3m1QQ
	 L7sPEvGpyBmDCkdmboNYjC3d3jEnabVVYLetB5TjwR3tZqCctAvkCfU8wri5dqKDK3
	 ++gNhfyoFmGmS7Q7QS7iULWqJBfil1fwdXzGgE9mWwVTEVNHaa4Ytndiviq3oNn0bW
	 cf/19euS5Sd2R03VUU66J4h5v5yu0e+AmAU/qXyJIUfi3AuIprP/kLQH3PyZMgf5VK
	 EYBM3hTdIWm32aeI7vadrnGwqI5dOL0J92Se1X1vlRouUV1rd3KP5v5vOGX3roEjMl
	 /yoqLj8El6j+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96442CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047139358.20069.10058011178002835439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bdd07ffdd9794c5cb0462c438ebd438dd31e855f3ed776284d13d71f5f1fb27
Date: Tue, 14 Oct 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760471393
