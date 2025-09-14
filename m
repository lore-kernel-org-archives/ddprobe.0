Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8641684B0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757840394; cv=none; b=OdTJh6am0RONvb69kLL7aXkr1J2hCddCs4Breh5BEvD3UZDjothPRaXmbI/UQIenPglS8WCKPxJGfKFsiwpm33hH/C/99w9wL38/crkjrOFYbgR5e9Oz6gzC806OddsUzxKFlLHT1yNkd6bhP5I1YCnzenQvY3h6JUftwc2MzPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757840394; c=relaxed/simple;
	bh=aPDc1L1Pih2jG0KJYN/LjLXsCZTc6bKY3vl1idtspfc=;
	h=To:Subject:From:Message-Id:Date; b=c4x4mI6Nxli5qPAbhLXtiFn8OByAA4kZFZV879b0eHVJZUtRrvlvdmuOSc1KPSjYC0OE7oj62TXTk2n3ppdlvVlYNItA1TnQzt1l2FzIJiguxoXv712WUTlCiOyF6zfjTe1fYhUcCVnrtsyQecyza2oZHaG12+oYth0/uxgb+mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qffm2MmH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qffm2MmH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A293CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757840393;
	bh=aPDc1L1Pih2jG0KJYN/LjLXsCZTc6bKY3vl1idtspfc=;
	h=To:Subject:From:Date:From;
	b=Qffm2MmHalK7avDVIcg12RAmG+G6X2dXOXWAP3lUwh9VviiQdxAk8bRstFK6bldhp
	 bRM4J/I21dCn36JBwzN83M9gczSBSzs2jfOJ5xtkkGASVwlDgorYfXLMX3Ib3Sanha
	 T+jBsOwubfPj+P+dymRRv8W9TRGIPQikKg7bgcPNjXJIm54MXNZHyaeDQX+RIXqTlF
	 EAZqH2EZ8Yl9yyLtm7ffzWY2IwB61ukYdRcwkUMV2ABRh/sVCf/AnCviQCFpis6oRx
	 Cooq+B1JqZCTGjnkbdoQ+ekvATkuxtq66RGTNxkp5PJDnaO4QQFgliFE4Bclhx5LDQ
	 /qnD+IBhndqyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E5CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784039358.29975.14691172681519100398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55ae9d6df28a28fc20712253e4619cd80f0ea79016efe67d955da2ed736ad322
Date: Sun, 14 Sep 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757840393
