Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A11A4499A5
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783625314; cv=none; b=t0heTfI8m/rLCTMYOId4nxLnjPUgd/Z4BdkhKZraBEESz81ujEiHBjCRQMZo8CmE8Jlu4Ig6ajEFQHmCvwjkQ7LuhXRzgaMR/R3aVZXtTNvKuyURQveTwXCIOMAivf2Y+LFtodB/IM1N/oPVXgXvAxAZPoD1D5j6aMPa9GJaUcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783625314; c=relaxed/simple;
	bh=ydFjHqDEsfVCTSf0a84r9YNhVzwzLLk9vllPGFq5ZaY=;
	h=To:Subject:From:Message-Id:Date; b=QcgygS/KPM7Z/2jGPYlN10U7emW9lfW6kWi9hLVT27gr7/XcXN7kxeSkSfXcH6tmW4W/3sfZH/n1bj82snvrMMmAe7eiLgFWf+zMe3XpbEgII1akPHqAmIzKUQPUL+8WXdfK4pu4aIiWEs+Jh9xVvgNfynre9WnwRZUNoYAGl7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCxNDsEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bCxNDsEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5E1C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783625313;
	bh=ydFjHqDEsfVCTSf0a84r9YNhVzwzLLk9vllPGFq5ZaY=;
	h=To:Subject:From:Date:From;
	b=bCxNDsEN4bjOtgOaaqduy3jLtw0bGtjlNTuBoaNQXqWqZuKsjHvU13qt/1b8PM05n
	 vZRETyTZv6N/f+YEdwvjpuNAMl7voN/tJ0yPY1M+rDDY1heEiLaleqSF9WNCMvAvFE
	 T373XbnSHZrzU1VkiCXjxyagWqNQSPXzEPOq/qztCn9o3Q9keOyHlsphEOGVDcwiQh
	 Y+UZ/tP6SXtGKFwq7sXSVIZFGU/gBZUslLFn12Xu95gaU1lMcIIaMEjdoyT/NUEDCB
	 omjO8TVpEVxKhh0pSHkJwogHcId2/2/J4UU14wQhs5GBXaoO9uGBISBdI11UTWhjJZ
	 B6fXW7/ZmVSiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E8DC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362531368.22977.18178498570423236350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 599166501480eaf6b5d187ef6380ed44e73b4f7cf2261c5fc41076ab2627ea4e
Date: Thu, 09 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783625313
