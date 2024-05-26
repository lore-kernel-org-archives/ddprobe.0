Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B831FA5
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716698663; cv=none; b=pGsG9Vb3yuRkk528Wt1wnIIqAsNYvhRurt4xF04GZdWyAQaV9w5bFQHEmwHHerISs9wo61GOxi8IRz/sPinsRM2nLaVd8r3Jv4URvPLKPJW92lQ232vZFcYN597jYsPq+7USuuvm/bqsm77kfG7fIwndzT792Z1mRbEa0yJJ1Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716698663; c=relaxed/simple;
	bh=Qzbwl0J+4BWp7fmGPit7Kn85jA7xHPRP65J3MJHCjzU=;
	h=To:Subject:From:Message-Id:Date; b=rzK1I9Ub3AXzLlxQzlmuI7acMIDFtyNW83abHVFP+JcrN23sXR0yYhO4hbUlXU5M/E38NBQBS7J4THpQuZ1TvdPhHNoazuyS+0Gmpx6kcUFoEC8HuNB8nXI1yzzrQLJV4FT0KQdDVho+b6HQ3GZ8i4vLrvEO7MuCWVetBmdRmQY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmgNl6Ya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmgNl6Ya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE09C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716698662;
	bh=Qzbwl0J+4BWp7fmGPit7Kn85jA7xHPRP65J3MJHCjzU=;
	h=To:Subject:From:Date:From;
	b=jmgNl6Ya27iZTCLeo6g/TTxq0R/pjztZGWmrHM3QovLDFMNKLM7rskPOUSqcX4Vo5
	 BwoUFbw2IWrLRRCwsdvb4DDh2j1CvVx2jYWWkA2Th/jMbLo8obTl8E46MFWCNPv/uN
	 hq/EPKW6ow84/tF5s1vYAxEL1h7PcmYiAyY9A6Exiiq6gmIVKkfTTVYqI2Pa16jl9R
	 fHiC/PPQSncBZAuyVIPtlxoZGv4pvN72bb2DN560+c1OE874jfsC3x1yflz01br9xs
	 1eu1X0mau5poM+vZFYBk7NTX1fSKpA4Zk4J1CGk3Tit+3h47nMl4grGF0YlD6hG5Tz
	 TjSFGr9jf7SsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2C95C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669866278.19681.10973001470182413896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c8621014cdbba5a32487a4da7129ddda1460ec11e7958dabc75dd2bc0fcc96
Date: Sun, 26 May 2024 04:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716698662
