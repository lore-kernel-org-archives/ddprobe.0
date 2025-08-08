Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E009367
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754626196; cv=none; b=tel59mWp3Gn67YwHZCcrjMvVOsfLShCWjGFKnSicbrFwWXrX8jD5wgfpHjzPVaKhsanVDMzd8Q2UrlO/SMV1201dOZqpGxajqvUN7+lqpZg9TyPV2CafRTzWPvSdhb7ZqyY2FZHIx/nt952xhTww8/GdkJ/jeczmllFbq2rvcdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754626196; c=relaxed/simple;
	bh=60GeH8C5ZQrllACy2VbNNeoR1xhFvbK19EltJJtE16Q=;
	h=To:Subject:From:Message-Id:Date; b=FDoAh4lQD9Lr/+3J8mTpBIeiw/RvYpwFi842M9wwPPuhS3jWkJf7y5VznBMLF7vnmR66QoiFfmcdaAQJBpuSP2+cxv7G5Zxo34A/3ZB9xXKlDmCPfTsSegIbnHFMrMRnENSrOHExUrPhu5KooPb15I9OEmIKRi3OWoEihZ7oZeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XefaRMK4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XefaRMK4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C22C4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754626193;
	bh=60GeH8C5ZQrllACy2VbNNeoR1xhFvbK19EltJJtE16Q=;
	h=To:Subject:From:Date:From;
	b=XefaRMK4NBV/HwV3l/qzvXvcrFAdkUDa7eGGX7DxvmvzWiFtLtl4QqG4LGJGPNtnl
	 rEZ3ujHw0NGOWnfg1pmX2ewKBIvnm4q6NwZPso0y6bzan/FZJiKRxSVc06VWuRCcSk
	 PkSFKyTZyD11fivOtnXH/95QdtA/UvwHM1n0EwFSLtbnvNxpSHumuDWZmAK0pBd69c
	 7pUiq2OkFFZ8vHzo9GLJMUWXBf8lTipbiIggxJ/9e0/V78WSa0LczmSXYIAfHAoKMj
	 PQR6aU4jQe/sUU4KiWmlO3FR3kXJfGbsMzWYxe8UGahMqlpksIZhhWPRMKyLzLA/if
	 pBKWIq//pzayg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE2DC87FD3
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462619357.25412.12799317306298245663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cffd600be439a78cf1a68de029ff198ca7b50f0c5df88eaa88010f97b2879be5
Date: Fri, 08 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754626193
