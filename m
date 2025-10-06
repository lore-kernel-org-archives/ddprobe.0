Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C722323F42D
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759771793; cv=none; b=lrGI+HOqVGYKBd+0U6LPM7Eb1ir9CNL5EtDu98eoFoh0EtvO2Qiqb78rTl8wDmaS3ZK4tw+EXBNiBUgAwzk32sYXLYmmkkQef4KhlLz8//y6veiJMqBD5MJiQHje5qKvFNwhIn2lf58PYBHsbWyvYDGVwAjOucz3EBuWL40uciM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759771793; c=relaxed/simple;
	bh=tVWeiDw8JRsWbtJW5GMC324GsWAqH8sjRMQWFd9iTlw=;
	h=To:Subject:From:Message-Id:Date; b=AOul++XB3mzLCf87yp35ZZPtpkjPgTrBVBkLGfeIhr7u0yn/Osrel8Mqa3qFOAgda5GCuG04GOY5sMGuJ3qmAxqbwmkZ6kSxCCr2RFHAdIFewPI8Z/w9Ws1nvoYejpbsyHhxfjuQfz8MzkspvjFpvcl/S6l0Ou9Q1bLnAB06xRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiFS1eDN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiFS1eDN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E84DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759771793;
	bh=tVWeiDw8JRsWbtJW5GMC324GsWAqH8sjRMQWFd9iTlw=;
	h=To:Subject:From:Date:From;
	b=uiFS1eDNZcT73WdTmW7AElHNygTi5PsKVCJMyLmK1y5lA2JSabVGpxXKl1xh5nHzq
	 WO2USFb8uvW8Nhm7jsEbkXunDarVWQo3lWBaB/SH0vzzGzuPFTzu5ar3EePMOr517j
	 0kYcJZG+eHtmLr2eQy+2II9i2ryW070tYN59s69yqiPkcKkE58dMiueqyhQ4wARQfm
	 VgfT/us/W0wu2tJAbnPQCXLXrhz6KnSqNwhlu7fkhNORBTRkMp2DJGF2xvCPuIdy47
	 /Oo4gvlWXmwIiw8EA0liLEXIjt1eHR0POyHJW6s3LoPXgw93tucXLFvtISRAO2ViBH
	 q2XG7jdyoofig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F500CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977179357.24903.2244546912933409996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be8b83d7ca017a6d67e7040028207523c0bf6c47062e081f0f46f7f69bb00442
Date: Mon, 06 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759771793
