Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF3644F578
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789979434; cv=none; b=FO9P4Ei8ylKWbdxU/iwIJw+0HDADr6aCgDpqCdkjofea+Bywbt0lnzsi4wZFFQOpvxzeOHAxuNvigw1LqLoqgMmsOG4o9v64PN9StV0M18w5uepMPvvD2DaAWQDg3dYufiydoGfEhWkfliqavJRwPcNFokPwJpVJ0BT9oawvBHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789979434; c=relaxed/simple;
	bh=MdwOyLRQ2qBbCDp086FCZ/VKQcRg2Ywr/rDj37MRFSo=;
	h=To:Subject:From:Message-Id:Date; b=dkKkI/sfXkRTW322XW9tmSXeTptePmcbeVFhxXKOL1XLvT63rIJI3k8M0mCFSavixCfwC73vWbT7FL3uuiCFdTQmvVNXWmkp23cLhOe2X6RJjehQXPtAGEl9BPlmZUPBBfuTRifFiCMewuXI5QjlPowdUt+aOVuPfFPAfUVGQYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jd/kOi3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jd/kOi3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDF3CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789979433;
	bh=MdwOyLRQ2qBbCDp086FCZ/VKQcRg2Ywr/rDj37MRFSo=;
	h=To:Subject:From:Date:From;
	b=jd/kOi3Q9A+aFiQ3SJmQLgiulJjvEPuMU0fHSjKm9G/0HUnwQvhoHqBnBvFUKMsB5
	 wXgcmS+V85Z3luxF6ZhwIO6bn8NIMr/UMnyknM306lwd4RlZyDns0wOHSKJ7HW1zJY
	 kPi9kGfbDjhDaRHkwMY3EWjPR+U5bKE29CC8YeUMKSU1vxqCvAWCNSx0PU9anjIGhy
	 rn+dLHVuKAiIBkfTZhI9liFfaLsd8DTrCO6wWfMcOsNVObub41CgjOXG4n8kX1iJEO
	 JWf4SQCrxERH34tIywN9cbjk+gFohMoaaKr6wRrzxw5MLHrjKuysNiAvTZGCXa2cea
	 +gQAAegbbHCEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA9CC982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178997943369.27070.7086579200043327083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb274d51f0ee328767dc0f043d3255e8490f8539fb574e65ad4b80a86b03526
Date: Mon, 21 Sep 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789979433
