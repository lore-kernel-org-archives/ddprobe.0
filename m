Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3668E13777E
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726604154; cv=none; b=s46JzlRIUNMsGU14lEaN1ecGAjQ6P4iUTRFxPtNX1fd0zdj1t1BPlKeMRI/2dDdMlzezLrn66pk4RTXLeK9+heXBFPU4LmfVAvHwnkyZt9k3KnVLIg9o1ioihROkkrpx7iOdj/R65DRvR2a+1ICwgr9Igbc4omvxvMXCV1JxwTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726604154; c=relaxed/simple;
	bh=90ey8GAD62+aHmTt1QV8HZwDRmKJpjfx0Xe2N31pszA=;
	h=To:Subject:From:Message-Id:Date; b=etl4lyws9HjvkibPOGlqIoA6OHTXS/FRI28jZkbK95H2J5ZXKsgMeII36Swku5D2eZIlzqamO58U31Pj0g5sn2FeH6acEv9m+LXcYbsLBFr3vM8rH9ZUnFOv4CzPGxV1fmVJhIFg/NvIEMbf9+UyFKD5Goz/rZpcVA6i5PYTsi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3547XiU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3547XiU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C2AC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726604153;
	bh=90ey8GAD62+aHmTt1QV8HZwDRmKJpjfx0Xe2N31pszA=;
	h=To:Subject:From:Date:From;
	b=g3547XiU0K3fN/M1zEBYU/rjK3FcZvG6OPyRSllMRrdXh7eFA0lrvQO5wESUXCFZa
	 3IAvdCTCk3sE8l4OYLNWqAGvm3DiCNFIbNgbXuFMJMNRJt7ELTWBhmxlT5gK1+E388
	 uIJjuGHDZJQLh5uF+AhhjSNJP4ZRxb6ZA4HeFTy1KPrKRpF8hESbY5hmb6gZuJb29o
	 Od/mI9htWWpR1k6PWlfCvwAGj/jpsvmHrDh1sWAQIEYf+TiWcdOOvKr5A92IgqBWf3
	 XHVD4TnQJb5FNRNDfpw4f6EZeK06I9dEToM13iFG6jEXcWiXzeVcYly8RAvHSo64MF
	 742FnJgGvIZuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98694CAC59F
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172660415361.15934.2753659254988481444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2307098e55f2a862959a8238375d6389611606323219191ba4903172ed1616f2
Date: Tue, 17 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726604153
