Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D476179BD
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754360994; cv=none; b=JXr7yjVOu2vkkYhBMVUYn8cIMCXUjb7081qpvLSI3ZcgpmeMuAO8zHK82Jr0e7izECrKA4Q9h2loaNyyvGS9q4I23LRJ763qvvIXZqRf/AWyfpqspTW5qpsTkHME7+kmLlFjbieclQnss2GGcqHPoRLwQBqlv2+2c1UiGAA9H5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754360994; c=relaxed/simple;
	bh=fOMhE9tj+c0ISGpnLF2H8Uw1Ket+w+pWAGIkIRepm9Q=;
	h=To:Subject:From:Message-Id:Date; b=ZkO8yu9PhVSaEI2CDpyG3inciu6cydS7XGoKAu/pNEcHHqPWadEq1yvkejRvQ7YQeDDLgUg0+qJLEmA8NHHbGHURfpqQ+0TQfFLP77GL/A2y+x0NnbSAWIqRgEAtKj/Xje6PTGBAxai1VitgqC9Pw4Ah/uqaXgVHkBQWSxmVQ8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VbBsAGZu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VbBsAGZu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DDCC4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754360993;
	bh=fOMhE9tj+c0ISGpnLF2H8Uw1Ket+w+pWAGIkIRepm9Q=;
	h=To:Subject:From:Date:From;
	b=VbBsAGZuaNMGUrO20lWQLwZa3v9T2OaqwXCvCZ3T9BiN62WPuQlzpQMLfdJSdg42f
	 7lzgSIaIZriGRFAzCynwk/QylusHWfb0t9QcXrSkTBvFUMw1u7YJFnJ/VB+aNBXMJh
	 ctalZ1N9XzWxn/oNKIv63IB7Pkw2VU2qOIza4Whe1r99H1NM1+6zkbvFM/YovMjxP5
	 PzqZjogxX1J6cMseIFhxIl2jEy2ytbmvb0oKB+NFAaVkrEHLxl15Gmy0+hR+PooBYf
	 NjI4czs3AQ/4zVXKv+RpZ6GmWa8sUHkS59kXU9ceN0cW8uNrvjDs2GbOGCinS5NUaP
	 YQCatsr+jj9YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F219C87FCB
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175436099357.13044.13820145813014535430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcc4f5d79673745eefbdb0d5da320036360eeeb7b9c548490d59de056f5208f9
Date: Tue, 05 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754360993
