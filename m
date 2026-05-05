Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEA630BB91
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777963054; cv=none; b=sc/A10OxGTAxx8882xTxN/IMn8+4flc4Pfmh6thNHYG6dzDdGxjM4ciOH36e5cuoWSj1JcJkSU5yKEF8zrY02Xw0BUWCeVdIl7gsTiSvW3qLZBZ7uLM280p4CU16Um4DC3421vjg/ueuzrEILB5aXtEgMOgGrHiK82TVrWZq1Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777963054; c=relaxed/simple;
	bh=xumGvaemE9biKbIDe1XCCk9j8YHemB9KoOJ8urnYfKk=;
	h=To:Subject:From:Message-Id:Date; b=CIs1PuTZei6wo82qBx1iZJZj+tMlHntuoM28TKR0g2+e6nka5afjaCqce/xf03jX0kVnaFmvBLSjiLzwqowFdBVXTYgSm/Hm4VYfOAar3NNj1DhrpO9L5FWuGeD52Uun7c+mvgcca7H79+3avIwosM3gPOBlsPjLEbOcfFq2MLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=roQyamZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="roQyamZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66D4C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777963053;
	bh=xumGvaemE9biKbIDe1XCCk9j8YHemB9KoOJ8urnYfKk=;
	h=To:Subject:From:Date:From;
	b=roQyamZdI6EvdM61cpSoLaBat7LLLsCjDWFeRVMgCfoO+vwJEKWmT6k1KBXcuAr4f
	 r0WdrXi7iunz/ssN9zhdvaSarX6UeWInvJpdsFjZXfQ0CWuQ7lwfX4zBcr9F3nlzuy
	 62RTPzGakX9ao2o7awdG2Eh39wu4Sk4YXzqmuePKRPRy1zef3bEXVGDZuRbDjYOzg/
	 fHaGY7Ri0CjPcNYhy3JKdfmBE+xUrOFKSAMviqvNB+DLXTHOnmJjLzpkZET4C6weA9
	 zakfRfgLcLx+MJEcLUO0wzjVzvHIhfI5urQjHi3zcU4qJY01V0lmMkj4q9foXZTDX8
	 PZkCMnkZQJWVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93EEFF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 06:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177796305368.23262.2104206105727632040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d87aeae92e36ba4ce7befa251f6f84d9437678f5e96872803e7048e6d3fe7b
Date: Tue, 05 May 2026 06:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777963053
