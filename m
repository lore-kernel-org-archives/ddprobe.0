Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE072F7F02
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792112434; cv=none; b=mHVyTPoi6czjEsHXDGQaOTdlL174Ey6sf5gxFApQhwyCpWdiDcqKsZ4IxXTB9UGXwK3c5Ult9zAEWN/MC330Yaai/1hdXW3hVQxVrqayr+ngki76LBFSZ8sCjpfVxu8IYqK2R+YI/LaJeodMWwth3/qdUhAOA4yH2of03qC5NHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792112434; c=relaxed/simple;
	bh=aNnhSIktGsJj00pDBiSc+dpImPJfbbfoMfgJD1z8ahM=;
	h=To:Subject:From:Message-Id:Date; b=l70a8Bjbx61Ezbyv0ZGsTRB4zEZvKM66j3ErEj/mS1JwsFg4Pnh8QU6h24vu965a4XF68IJuZl0PeVQ6LEfc/G0Q+uMUvKU0NYkgzSmL4gTckryl9B6gf+UV5zGT27UpTWuBzedJlNLUWidlH+XGHwGfNd7PNXNGwgoTNywPqAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tXN6hHgv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tXN6hHgv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD599C2BCFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792112433;
	bh=aNnhSIktGsJj00pDBiSc+dpImPJfbbfoMfgJD1z8ahM=;
	h=To:Subject:From:Date:From;
	b=tXN6hHgvD1cZ5FzM6l8xocOAdRQMKFVE8sGtm02C60hanPjQeNJ4KiOir0PgNUZuU
	 0mw8G07tuvDVA/7UCQHndlJU2g1DYdoXUdgbH+2nmVokG2jYbVzfpuwy08ko1oEJTT
	 99xUG1OpduTJ42jsvPtmxgjWojKyEJicRrc6f6YJTN33X9oWETULMPocK4/X1/Xrh6
	 63j1BdprknIJVd2mkrZXluAtr+372FfjJjoMidCepqtWGRw1cwrN0aimFDt/3MoO5r
	 USkAt6heJ923jntzBuTdTSE2RW/0Fi5RAHXtj7rdtsnb5MkQR56i25yUikU2oi07ew
	 LJ7IcjqkIgqNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC9A5CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211243369.32248.17947726377531469762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01607d1882d576aa3408f187c615ac0715fce55da70cd987fc5f02b11d3c373d
Date: Fri, 16 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792112433
