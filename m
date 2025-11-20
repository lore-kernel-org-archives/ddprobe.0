Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164C6333722
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763641314; cv=none; b=jK+54Adp4IRiZ3sv5bVVjDj2/LeaYkdpH/Fm1fr41mRDWDmbCAX9JjDxX5ZYoHFYuS2jEnq75vUOy/pMbf+ZVfKdKHFpmdQcA29DkRTWlawLUMxVpJHorRuFLiqs9HGKqEQfe5JBK2Ln5kc07MNBYdZhQiFtw0A8sXgH0UaI5PA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763641314; c=relaxed/simple;
	bh=abOUL2ZxxWEtbUPf9rx2WWHDYtqzyrAnphTAd7iIu5E=;
	h=To:Subject:From:Message-Id:Date; b=gTVIlxG32lU7qiYlnAZVnXcQJmDERXdWt1rsCoAr7SH0Tfh4OFumZNlH0VGVejc99dlnYMaBPq2WrRKZCEUvbO/aVSQme5mtGcNq0vmJu9KqUIV0HfH0Tv18Hm+Zbsgcbab9r/oigTQW0fogw/SPLbsxGZqPsHpm1XrUD20V20I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hOQqdd14; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hOQqdd14"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47AAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763641313;
	bh=abOUL2ZxxWEtbUPf9rx2WWHDYtqzyrAnphTAd7iIu5E=;
	h=To:Subject:From:Date:From;
	b=hOQqdd14eFrC0K/OiBCHZoU0Y0O2QvzathLuyyWCC2cZIGoLmmIFmlilo9Md/W0EX
	 5w/XYEn4AnsSyR9w1ApxQAA2d/VL5ohoOf05ktnixySzHrNRFoYFn639btjebr4YiL
	 oK/5DN9MBl7j99kpOqHMYUfTcgfr2JeRSfsVDAHRHU+jEOumHh5F84uPiK03Zx65lm
	 KwtX9e2+jT+rwoMEPHveAYxpY9cQ2i0+rbk5bkSaxVa9EUAIDQ2/nBYo8AdF0ZxKFQ
	 saxwYUxXyGCsd2LIRGsNmHvNdd2NsNxWdth38kvlQQC3RscRAUM1F4BNGSIuJt5JYu
	 T5QiF8JQVzFSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941E4CF884F
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364131358.17561.1046785783272933245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37946c86fe4f46f82708551ddf7986deefcc2406b7d224147ebfb0b86c561c7f
Date: Thu, 20 Nov 2025 12:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763641313
