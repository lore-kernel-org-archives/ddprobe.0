Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49FC43B8BB9
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791840034; cv=none; b=IBRY8aCVklcxQW9YCJg6xMVFRHlmMf6T2XXW7q5mDM5GqM9s9qyf8pyF9rKq1Vm7u+TvY2MhHR0ZszRfO+DNTZIAtSoHrB+5pjl/USqGYGPUquRhRoMcDVOUY/UHN9DMXeVq7p/2WqKEWv6WCzYt1QoZb5bil9NbikrUw+nmTAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791840034; c=relaxed/simple;
	bh=qG7yW18E/C3RTqGBwUEEkfnaGGLbQP6UFosquHWfgj0=;
	h=To:Subject:From:Message-Id:Date; b=HpBPV6iYGq2Dis7GXk6v5SR2eYRjr0QEfN1ClmLT+vcI2D8BKc4nHHNsaok7g0IMGzrnrlDMF+k6f+5yObcsNcV97OXy8nQZFPGkUnaVz50X7FZuOKkl2PEAJRCxkPCxA64SB2CCe+PxdjEhtTTajJguEIsH3WruQjIQ8V5MfLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoItEdSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoItEdSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4966C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791840033;
	bh=qG7yW18E/C3RTqGBwUEEkfnaGGLbQP6UFosquHWfgj0=;
	h=To:Subject:From:Date:From;
	b=hoItEdSXyL6edNvE8kvSqNi2dUjj5aBkeOg6wRYC/WH8aLmXxh3bNB0JqgyMmv+1R
	 lcCsNA5MjUH/nKqdk7mmgfSWrhilwXkERlcIUrM4BInB3/QZ7q4CGi9ELqkPuAE16B
	 NeAt2j1klasw644n4WlKzoTeUdX0MM8uB+izM2j6Ufr1XgxXG+kNxwW/R0JLE/UTCN
	 gnvu4Rme6JxEzsJjM4IVr+E1hPSVskXKkAGlyCVfAQJUNoN9P+2BhlFlIBZzohXNP0
	 9hiejGUqwl+4/fSL9yjEe/N3hb236iq2HAc5lDlfSnj/p7QH8K+iPV9yHWmSSC3tv0
	 ZXCkO1K314s4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C49CA9ED2
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184003371.4246.13993806590785258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 632fcbdee7de4560098d3954ba0e38be5a32cd5b81780f6e33a51eafea02d8fb
Date: Mon, 12 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791840033
