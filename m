Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BF028D8C1
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747925394; cv=none; b=RFl1NlIMcC4o/E07Xi81Z6WtIOmGhF+eFoe02+qUbmgq66DeBcyJpLrBGwV+WKu82JE7tAvgcYrvJFjiHrVRy/hw8ctn20Nl8poH4tJw2pJH55OknoqEnF3b+BLSqhONEeUFGgtPR7b3lhw1wE66m77XL7SiAiNEmNhm71I8uBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747925394; c=relaxed/simple;
	bh=imGwZEv8Ny09zTI9D4O76z9FJP9VjnjbMDCjHqByjLU=;
	h=To:Subject:From:Message-Id:Date; b=U89jUEv/FXLYt0tyzI0uqruw4+0FYkkQca+Fsxd7lzaQRo+q5ZtvThyez4j7hsqndDsgEZG7PpnAInxiEZWsP33chDABWBMGUHc28NECzhAKvCTIXMJ9MVDK1TNpvpiBGvyPtD+decsquAPAP2tgEXdnFBw5FzrCrxH/dy/TAAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEgUK8f/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEgUK8f/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCB5C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747925393;
	bh=imGwZEv8Ny09zTI9D4O76z9FJP9VjnjbMDCjHqByjLU=;
	h=To:Subject:From:Date:From;
	b=iEgUK8f/GeIb88KtO1iGpEJ36mSJim1lXhdG+glNBltAUjuWi0ovY7abDM9KeXuYd
	 7dHZx4L5IGexOrLmQEJpzhHf5zmGvjNC4reeDf4GlwfWf4IOInGCv/fL1yHyebce5E
	 RnwoYpjMYX5OS2mVupCjnjWjFiJZYIaGyJ8FZaITUEXZMqtNUeDXrp5iR4RlA2ifaf
	 ZoVVF6gSLfRezHkKcq6IIcbIxZNO8twr0eXZgkkSHGeNd+Uojo6p07Fix4bGFHcc5q
	 v3lAxXnpZPpCaTw41slspX24weCyAOygvcSg5lWXGV3KL3QOR92STTu385ckx61SNU
	 glpmxB7NvYppQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED1AC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174792539357.13312.13216458127188290971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 580f566f0912e9c2c4e5c9b7bda8ffaaf1dade9154a62c1409853c3ab4627a0a
Date: Thu, 22 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747925393
