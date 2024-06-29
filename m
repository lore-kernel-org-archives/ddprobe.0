Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537DD381C6
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719702263; cv=none; b=OIQW3bZK3JjbowGryKYGScHeMtH+SjfHBPsCEpb14KtB2BAuscxDGhhXsCc6QbdJt0T0PpAnKE0cG6PBY9StQpWZTDxrQj73bp5dGgAOro22sOFwyh3A0w4fJzQeWNV8ypb8HaNF8d6pzy1aFoq9WwGC7y0oFCfOjeJRMvMsetU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719702263; c=relaxed/simple;
	bh=gWio/XMSRvUJZY4roWhWRgZCpoa8bFH+pw88BbsqFVc=;
	h=To:Subject:From:Message-Id:Date; b=te43dwkZaqG7fKC6gcBGGmCWksQUBslS5cKPOUWWy+NouvsoNDjCdN1VJ2z/4CIJoG+nMXyhvLpN0GZl2/edD1MIIpsp00lA0ZJpEx6xEghH6+v6sPh06qjP6MCfvpi/wyYUA4nBa0uvlfYvjtX4IhhGfHhow5UUrt1nBbXIEJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdEFYsMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdEFYsMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC7F6C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719702262;
	bh=gWio/XMSRvUJZY4roWhWRgZCpoa8bFH+pw88BbsqFVc=;
	h=To:Subject:From:Date:From;
	b=hdEFYsMpLHu9AMSvSEwGdagK61elrd1QoBffXwP/5R1COOEoLXTf7F2MC6MdtLHws
	 g4+jY//4Rhe8sRlc4e30bHyQ2euzyWrPN1xp+Prei5eviTLeqosyODgDVLJpDpyAWX
	 bFk7DBHIyN56746KgKGSCN+b5EoHMCY2vlLKtz9z2sUTOWDhZF/QxKmQbs10ctVTvS
	 MYZcXJNPJN2BTNqdmqpcgmAtPLi3WazXR7fFvs/YklmlCP8Q6ZQGjtRTEzelAKQnjf
	 8+KARiO/0x+R2xCT0HvhfvHHIn2j8JqyzpgIhDov6dG4AEAAsW4DRW+HmKIuG0RC8j
	 qzi1t6+Gk7Gxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8D89C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970226277.3340.6587563194321287024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6b2a4d05c72ea068365c5bf19eeca3cdfd8a518b5c6123e0bd945c03aef6c37
Date: Sat, 29 Jun 2024 23:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719702262
