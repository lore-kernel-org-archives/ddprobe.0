Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C1F470813
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743559194; cv=none; b=Fad+q7BnffDIyHwe8QeYH22bFHMSN0TknyHsIdkaE2KuTLvZ03ej2Ls47rowK/ymKeSPQWmIrLBrHwEWFsJd4rn4Hz8XRZ26npyS1SqihukxFFte1leXtlrCli8OrZxYnx4uRRuEIPo3DoseH1wisKLEeQ2WY90D5AHlai9+TNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743559194; c=relaxed/simple;
	bh=Xw03LZoWc1aWUMrwZbHHiPK+yhHlif5buEetYkhr0rc=;
	h=To:Subject:From:Message-Id:Date; b=hntKxpVXQAelZ9937MN/DFuFTsGHirVxFD/hC5BXgP3dyBblpUp/9kC7zxDTHPzkF3eB7pVWDGMZuvpDn/o1OVbwsj3iyAky6o6fL9gPxJQ1UsFsnL46Cne0EnsRQQR4Vpd/mtvJQeXTvWQO3LBainV4Z650BRpJP9In+DtNeAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4LbDijI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4LbDijI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC83DC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743559193;
	bh=Xw03LZoWc1aWUMrwZbHHiPK+yhHlif5buEetYkhr0rc=;
	h=To:Subject:From:Date:From;
	b=b4LbDijIzjvWNkzUt/rXwP4t7Kyz5phw69kX//ROcWyrgAbuABKOYO7KIeLLf0Mlu
	 Jfb3bPoRCXzd50Us+yCuiZXJQaW31QuQptlVHTrGSrYw5EVIodpIHcAk4XsfaFTEHq
	 DyXPMpk7yfhXAx5mLRUGpnBLpkVBdEQ7bDAmNumX3AobJY8ZE3j8rSiTWE9cCTwUWe
	 J4uJ3HUUbqHd9YxK54ZPe6FotKDjSRdwgyfEUgYONy5GRaR53G9fSx91YPZrZTJGWK
	 aK9q4driESYtdREtLpcW5ATJRZkIUVDj/YQMfn5qQ2clZeAGmbW9JGwxDfby6X+47K
	 MNbdWsPG0u8lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9552AC36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355919360.22953.1652284454478407428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8deadba811b0df17809a6c5c8e31b644ade1e0ef39ec2397fa257130fce10153
Date: Wed, 02 Apr 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743559193
