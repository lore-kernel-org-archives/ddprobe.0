Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0AF3148C3
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756718394; cv=none; b=oWehR0G/aghuyHS8lOwJ1uxaJJpEHGcZb+52R44cOSGi/ZxCogeEPiMaXpYyK2YMC6qPTNg82KeBitduih69fQOuHp9wwSEOSGF06nsVuLPNcuLxQMOvWE48J6mYf5ehZGM8sw0buAFuHDvK9rigDAYPgtnOyDG7UCjaF4L+5r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756718394; c=relaxed/simple;
	bh=4K2sKA3QTQBUDeImBeEz5w2B2bD/prxhLEqT/T+6e8g=;
	h=To:Subject:From:Message-Id:Date; b=gYo8fVrMMBvGYI2Rs9O6M48DfiFe/XyTD0yFuc5sbgB0H7rx3Vo/jlf7twuJ9cSZa44AyZh2cNf7QjiAXzl4iONL+HNhkpc8Gr/G3yZCudICpTHQ7qzN5tSJXflxkLPuQIqyil8QToOnBgvCrX/SwTwnGzS2pLDYB8QZvv1Bgs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UvHXCGyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UvHXCGyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62CCC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756718393;
	bh=4K2sKA3QTQBUDeImBeEz5w2B2bD/prxhLEqT/T+6e8g=;
	h=To:Subject:From:Date:From;
	b=UvHXCGyLeWV21W1uu+gTYIchqNW8fF/DtrOvP3pMC40UkDDGzgC571Pz0M3x6iob9
	 UVFBqejAfNIE5UX50O8SZJlbNhFfZBJ6C9bu9lc9PaKbO7EKM02vXl4f2Oc+6k3eT6
	 s1iiybnfpRsnyJTkxCZ7V3gxypmq4GMt/gH1xgwDDOdBGDVKXH6X0zptnsg7gZJDW/
	 vRH2GQlxgydLUz3l77LlAHzpUo45mdTBmZ+JQ7TD0pM9hOpgffPI5VkLg/jmFKHkL+
	 62mTEBYVSqzA9DQ584DemUGWXI3El6ejX+Z+Q7cqqiuIhXbrvOPs7Q/4gm2kjv1YZR
	 aj0webqa6y6wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2A5CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175671839370.2311.12716746239453803924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9de8cad6ee730d9f1b0f492ddb309ff8012f2f5bb55104c1a5f7ac03e8c4e0c7
Date: Mon, 01 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756718393
