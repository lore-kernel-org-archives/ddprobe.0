Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B75770FB
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719004943; cv=none; b=OHZWps4j9/y0X4/mBFvQX5i5lIY1AbXKJNxb+KtmWPkCx3Yrbafzbks9Y5lW+WGlGfY6UY5mExVb6NKsBiHZvuACT2hZbQkpqdgGIla9EA9JnbulqQsVP2v7PzL4czskdUixdF9zfSwPhnYtXc+DeyhVNLpCruDXVs/A5ww2OUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719004943; c=relaxed/simple;
	bh=r07eAuvt6A3gwb2dnR6FwolKlzNizChOr5izDgrgHF0=;
	h=To:Subject:From:Message-Id:Date; b=ZDfqE/k2NZp69v7+3cGazFESQsjBE2bvQt0v+BNbX4hFWUMsGBZyNmELsfWJlmyXJvuSFA4jsIXAH4eHltdEiK+eH66z1m3b83VishiBsmqjkxm5l3HRyCRzZOXalYZ3By7zAh2TznnjYu/ftbHLSWUUdJukbw2K2UL771AgkIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4eOjha1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4eOjha1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07548C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719004943;
	bh=r07eAuvt6A3gwb2dnR6FwolKlzNizChOr5izDgrgHF0=;
	h=To:Subject:From:Date:From;
	b=a4eOjha1M+aN8weo2p4Y6a6/MemZNVecLU82eU1JwrNoVsQW5YL87SfgWAegp+mad
	 MbGMcfzLmBQFb5qJS9yDw/yz/173JFzmyaifVIX/oPAwVRnmTByYeX3or45R8yCMSS
	 +AQ2nPqkqr2pWPZk/cZuSL6spVBxGcmHMFkTv1/EZgH1l5NO/4fpS54IrI+eE9dz4T
	 NVRBX1QIT//acAoH+h0VLboyMsL1JBtXhUya3fofVj04N79+tmq/zrWJCYUjVACz8C
	 Dc+eWojvsnO+1sej+RZif5kP8Jccdrxl4hfXRxj6OZ6mN+lBrbwzfliilfUqjLtvZ0
	 Z2bn70t9fejcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5BE0C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171900494292.10195.14710336655126916730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e7ee0004570e49669d04aaf6a52a19232075727a63e3857ef809967f199d049
Date: Fri, 21 Jun 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719004942
