Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0BEAF9DF
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726909554; cv=none; b=GrWwFwGbTdLGMUHtn+kv6TGIwKFlQEOCQ1m/5dqGi+qPXsEgthVUrFuTFP7wTC+9Ba27MSR0IBogbYRugE2rj0/zcI8gJ1EzgzB/uO5mKTJxCW8iLClOiwOIcreRYSbBmP8yoy+H9ESrkIDFN/32LJJmMEr32Xzcv10oK11DPp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726909554; c=relaxed/simple;
	bh=FshhcY0ozz0Bw2DCGiA2q6tTljEfvPSqmJCEXAVM+aw=;
	h=To:Subject:From:Message-Id:Date; b=FdF5wSk4eekZ3hmyVM5Wv58IsXfZu+eq4kagQCbnrtXNwfMc9h4w1bb9xoS+0arJ2kNnGkeKX2pGDrGonUPAR2ow96cPu537oyIwXKWkfZz59ePUVbkNxJsAyRdmnD2+RBAiBpGChc5vfGKF/pitXMg8Fo3Tv1x/grzM6Aq3igU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RJIBq4g8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RJIBq4g8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACAD5C4CEC2
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726909553;
	bh=FshhcY0ozz0Bw2DCGiA2q6tTljEfvPSqmJCEXAVM+aw=;
	h=To:Subject:From:Date:From;
	b=RJIBq4g8lgFeOJ0SaHIqKldTL4xXR9mlkofArLv6AbM7DhqwgdgogcnkuUwP8ikZM
	 JkL18pJJE31JEIqKVSYU8XBxJkRxr4cIVJ8AMbPT/r2wRhduRv8OqW3yEvMC//ggUp
	 ikuJr4iC1m3a8+ZdQPVDKY0j+4DVgOKNcvb58uMD3ErBpnWh247p5qj/DRfS/bNcpA
	 cW63bHaFANk/UpcqqGcuj5553M/YhP/zIKU4Dq1d5PETjwMCQqalpKwbqito8ewUB7
	 huVn+9of1vBfH3TXiTDt26V/eygdCoUv11bjivyoknCjgwWrjFU45ePP1IQBfBrdef
	 0Vlg1VyUr4DoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96235CF9C5B
	for <ddprobe@lists.linux.dev>; Sat, 21 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172690955358.27643.16031243600560060759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 095796da79a11d177947f8fe9cd30c57c5f33fcd648af3a1fedf78acf99c675b
Date: Sat, 21 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726909553
