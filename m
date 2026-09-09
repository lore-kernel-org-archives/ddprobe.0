Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441A930648C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788929434; cv=none; b=NFF5mysSjXY/1qvDINymtKIl/yG5X4MLEojqcViI9TLjGETtit7yTE01HOcYgkvzrFvTEatj/S0/ylbJSbEnwkVxHr++pY0YL5v/ef1A0HeHIk39d4h8GXj2gT6ARTcebGSr9mSZe2YbUSmkHqmE7PQxH14r7ijyI/Fyr95Coc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788929434; c=relaxed/simple;
	bh=3zMpyVHNtWCcdpHI2Oj41V6kIXQx9lf2oZKQPlfrzbw=;
	h=To:Subject:From:Message-Id:Date; b=cdgmlpXWIOKUlCffFi/iYvTmjEOXGPUtpi0T4ZT6Nuji5O+0DIvkSVE9Lop2qIx/P5gMwWwM88103Mxck5h8JTv2qcg3yfEQwE6Nm5nHwxC+GZLf8MgFkkCZzDA8jpsopPhal+6RsJMPggAXxFCeqbF8JfH51Ny++3XN/kVBgPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHTesIMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHTesIMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08D8C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788929433;
	bh=3zMpyVHNtWCcdpHI2Oj41V6kIXQx9lf2oZKQPlfrzbw=;
	h=To:Subject:From:Date:From;
	b=UHTesIMcJaXIfQk/hziBekrLOISugJP2irjzrlO9YdnJrm2Amt9NCG714E+nYurMu
	 HQS1tQrE2k05ZTeqmfHeyRDvyIw8lR7ScWTVEY2xbpn7N6+s6GETdwhmPCEBLuKAGi
	 eNZ3VpuEKqo1oEj7El66jRS7sQ33lkPU+4Taf062VvikbNN6QjVCf5uhtBziemsga3
	 iUmgEYYC9YvmmNxJ4l09iXuGjlIGbsi2mNfQsqABP4iXRRC4MSVgq4JINg6EkONO85
	 IU/dqfwgYKiLio7JThAe9CBbIFBnj6aEuFAcyAkN8ZZbj726B2bUEdffJJvC+8lPKO
	 fMuJtR2Fg897g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9D2C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892943368.15863.7654490740180234036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c4611e72eb6cf6b285f0a3c850e3513a001f2794236d006755471149b22b7a4
Date: Wed, 09 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788929433
