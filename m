Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47A3E374D1
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750313994; cv=none; b=E+sWKazHsdSDBVV71ayovAW59GWgqObJ9T11KMOYIdW/JQux1M1Tybqi6SXGZ8Ya84ci1DVMhRoCQjW2D7le8A/GFMcC/VCofAqGFxRsYe364vu2lhDogdjCNh5J1H3bVav9KsGO075j12Fgt0UTlO0Rlso9WRH6tDT5ZK6S7Ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750313994; c=relaxed/simple;
	bh=Jb0x+f6994R1KSy42S4U+uC3ttDnwyS2IyXehgkRJJI=;
	h=To:Subject:From:Message-Id:Date; b=R1Uey0VeuQO8kNpLPq+tAAqnfv9Cc3wbcecQNR5EOPvhzmb1xf0OCjF9ULqwdoR7WqCIv/9yexabDoPlvEEGL6c0l181p99eprkLSAdCxKfyNdvUJA+ZM4xqKGWPX8YlX2c61wvnOycRVsL1fq3DbXX874nZXccx1Q8fscAg2VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4vZjM+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4vZjM+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E39C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750313993;
	bh=Jb0x+f6994R1KSy42S4U+uC3ttDnwyS2IyXehgkRJJI=;
	h=To:Subject:From:Date:From;
	b=Y4vZjM+mwbT9PJkWOwYcnJulx1HwgugpgcwDyQui+M1HZehqPkQSaTVHBZyVsTnH+
	 McZqqsZcJS85JqF0BeHIyQyc0Mrl2nsj83vgeN/IMtRfgbb/nQ/pWiUKa/AxpEOvAE
	 f7ChNbtWzy6HpygLPU/OItIsvg5lp1w8HnEHxQiGWIG9cMv8K4k+eUq8d8CxPUWqsp
	 6+Cf1/2oXpRx8qpbfpiSDPO5fNKdYVCYXAKOMlijjjJqsaHt9AL5T9u9dr5jpHFibq
	 RmviL7BtL5/8ZzRU2UwJl/eTOjSl1TU6NLa/Z/r6jkSSYlS/2pKcis14HsljKI+THl
	 BL1O1fFVsMDcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C1BBC71159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175031399362.10259.15324343626361219712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba68e86c5b2884333ddd2333e5f16bcaa4853765753f00435ac633c9611495d9
Date: Thu, 19 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750313993
