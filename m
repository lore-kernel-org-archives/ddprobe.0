Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB4D26A0B9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783273714; cv=none; b=ulx2pwwWMgZCGAiFVS+BVa4T3ieKh20AyW20nvqi9VePx9E9r1zpTSJupdzI1LlmUNuonf2JZmnPgCvSejAlKS391QwMZ204otqeO7P2aDwUwN2oFLXOc7VcxtU8fsy/pVVXxSTThwE70YuekabKEvV0JeXKdi2T9hp5jHQBelU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783273714; c=relaxed/simple;
	bh=CHsCfGgYa5x+ij+t7t4OO1niubYfG+6lVv/f12RtzY4=;
	h=To:Subject:From:Message-Id:Date; b=sNejP1WUmPIzC4M2nKE+1qhH1FvEXR1YAncesGh3fwkwrjHyOqz/5aoVNMAkGJN0oFwmqhrzseH4CSTFwwJV6R9tFnSKwQ71sCc11m5xm60a3PeF71J8cYoHxoH5S9Dwu3T+mKdVSC9d3xOORL9cswsCQXIz1UIHsNm0gXjvey0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jv/sjBNH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jv/sjBNH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D06F9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783273713;
	bh=CHsCfGgYa5x+ij+t7t4OO1niubYfG+6lVv/f12RtzY4=;
	h=To:Subject:From:Date:From;
	b=Jv/sjBNHjlMH5cTNtbp6OFGUO0Qes12nYLqGgZHE8bByt9uybs38k34SQJHZcyHbL
	 RjFKZywP81XJjrVU28zhRNiDiNfzVI64tYm/Bua9Q+K+mDTHMJ8+53wvvYLSkLSv6Q
	 VU4PNzJZpJdqezBPnL/jB4DTGOte0X+6oqx9bQsLOBUlN0wbZsY+S5X4z6reeIb0UB
	 lE6KQ17bx+VqFld5TMIsFz6DNitxz045gdKl/njgm1ZPKTNDd7fGC0vdcfQKEBo96l
	 rtmj6yIejmW+XkLb+0e/YvGK6imtoGf0fOGnnYAvbj0j0SsxCArKvbSH9G0ssTsBwJ
	 Eyj+sXDkGmu3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFF8C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327371368.14159.15036325714125295159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdd4dffc15a95ca53f7bd0584440a0052cf2fa707c1c05b5a18bcfa4492c154f
Date: Sun, 05 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783273713
