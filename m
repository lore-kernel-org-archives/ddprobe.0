Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431B618E1D
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 04:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714624943; cv=none; b=iAbye+Uhvj/EkKw/aR7oe5uz2m/c0vRmjZ5qEbDXat48X+DQWbjhlSc+rY3r+JJb/BoL8Mbcm/xy7DPe1ZbmY1/hoIT23IK8nbUNWLL/mm5rdznOXKnKnbD0+JDn15/4j1t3l0zyAZOnnDnU2TCx0eoy74xQAuZiNDd2mq2ZRTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714624943; c=relaxed/simple;
	bh=NZ+C6uUy5TPLnF8U79cx1kjTacMRTOsI1SW0Ud/X2AI=;
	h=To:Subject:From:Message-Id:Date; b=Orz+fKO0sgSGhaoExAnOxSnFVGv1se+QV12gAUltGmyCPSqyL22Nrn2EufkoUO8yzs7Qm7TV6qFD16nc5+qk2praUfix4RUztlSGdd1OWOQEsEfs5/8hcC+a+C2E8WarymvZ0i+cpZe6V8IT1YvZTTQIVlGir2syF+Vo3c9FSuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmQyLnc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmQyLnc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2264C116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714624942;
	bh=NZ+C6uUy5TPLnF8U79cx1kjTacMRTOsI1SW0Ud/X2AI=;
	h=To:Subject:From:Date:From;
	b=HmQyLnc1WupGm/h1r8cldg2j5qRhTTrc4J01fa4u/hl9BruxrZ4BwQAePhxYzNN6F
	 +pIDd9lhWGUB6GJti1XZT8L3kLRZV21ys6bRlEbpzwFix2Op5hlLY2nCR4/v8R6m8d
	 0q26j2TC7gTQhcxPCgkbEE9nU2BJE2KU2n8jl/xFfCsF33RojPrbZGDwdreu7v400+
	 2YGeQ0iKmIvNM1Yn4zMGvIVyS4cuf/HS0V8WEDeuGdiX5ZIw3BizMqdpsJB5onj6gP
	 6UrrQHvq1Oixx/Rl7q4Qy+yx22Jzyj7N/937ZkAKwyJMVid/0zXQRDQ+tHKrMLFSfE
	 7308e++Huz5XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7A5C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171462494276.18701.9961301749757657901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 304a81c1ef30bc551a9357aa7ec956d62b1967aefb96c899d05fa49bb97272cc
Date: Thu, 02 May 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714624942
