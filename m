Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4791684A4
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774177494; cv=none; b=dW4oT74aCBf0hEqlF8j6bk0+p2b4c7o67rK91g4FZxjSg80OG7MBBJxKlGUw8B9wYqi+x1nhzpHbxK345iJQHuCuaiiz/84H5QX+UrPWoyZfk6IV2rCPPOjj9RPLYpFjDncJcD+MuwWTSs9iRFlJ1rJweMsIsB0sdxO7wyBW8qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774177494; c=relaxed/simple;
	bh=ENc1KiOxzZDwCFA0Xic7Xl3OgnfDEIFvHsrumBUoNxo=;
	h=To:Subject:From:Message-Id:Date; b=lhLj130L5u2rw1ITNp6TUeI7xKxbv3EzUpkp5AgCxJXMgWHddvf3QPaR3a6dgBtg3WpxVD/9oJI52hpVdxCI30YwxoiIUqF23VKwRxy7O2uyjuGvleFea/ze91n+zLGybzhEl+xt1Y9zjayQzRwY2/+rnJwOqcXzSQDP/BBAT8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDav0Qi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDav0Qi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0E9C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774177493;
	bh=ENc1KiOxzZDwCFA0Xic7Xl3OgnfDEIFvHsrumBUoNxo=;
	h=To:Subject:From:Date:From;
	b=RDav0Qi1S8qawtb9o/+zqACsaJQsHtVUjmtSNasBnIV/VzQanonA2Cfslu3SU01KG
	 VONq0yRtb7Cy5ENKgV6mpY4iJTBGjIa8OyO3M6ur1N7NttyFv2uSvI9ND1aycjunkX
	 dnjFTu5txtgEboRCgdUqsQ+EkxBpc+vV0d3hp/ncLsJiGcJxa3l30tgc0mOR9a57fb
	 seG8CmhvORmhMgfoEabYSI0Uv35qi+z7L61P7rs473sFQTcffhikfCPP9Axbux7L19
	 kuZWYv/HjayCUbxvWdQTMBAolrASnFgpEvg3kYcpaQHBU6j6JFuZflI0onWQfJrIDt
	 rkKsn4lKp5YIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93192FC72C3
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417749359.759.13711115543618161976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22305430fbd2129b6b4a2c1f049dd88ceca08299f80579e293760e6f3da95bde
Date: Sun, 22 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774177493
