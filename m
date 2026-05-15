Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DED6B2737F8
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778805033; cv=none; b=Cc0L7KjQ2Am5z6+vmWZJkbuYwHqgZse/2sRSqGCkLOq2nAqWOcfkTebkU7GL8qBdidWO5qquBrYIVPxtFzvh+64IjxlOnIBuDXs9gyATjgu8My1ymUz8vyw0Mtxe5l6CZr5PiudEwyBbt6le/JA9qL+lVI0kpQpdld2zRJem104=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778805033; c=relaxed/simple;
	bh=9RfMsw3fmcPi6zomYNaXbSplOkG1BXRmav/uPfVKqIA=;
	h=To:Subject:From:Message-Id:Date; b=pCjAvbG/eYIVkdNvQYxi3nnJ/9IR1+FhiIRL6gNCQMKdcFzviA4Ai8sQqyGtRjzE9GHqOO+vZVGTch7XzSoxeIqOg7LcLRIdux4LYEtdkUaO1PqhI6n6UqpGIh/y8WENM+qT6xYU7INBCWDMDzvBiPiLCmzywHjMEagTwvAYaj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9Df+NLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9Df+NLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D69C2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778805033;
	bh=9RfMsw3fmcPi6zomYNaXbSplOkG1BXRmav/uPfVKqIA=;
	h=To:Subject:From:Date:From;
	b=C9Df+NLjvpqm1R9uDoEIqpWWoYf9nhsB9muWoKKyX3I18bF9BcIpRGv+GfTjEwkiQ
	 ghfnZQGztg0AUzWhSvgH2ISOIznoDGMwZSLp1JPvCD6KLN9OTzqaQaQLKOXtPX/1fS
	 +IU1qu8yXPgsSLzcrBXxcHrQN5H5j2KMiPMtAGAVQztHxsNk6HpEUvLeQUaWHpNG+1
	 cVRjh+ld76OWI1vzxNuVLm7e90EMXAGtL2HSC5lxdhKyutg/VFNPzXZS0nLVJVdL30
	 KyaGLweCle5ukoxXC7A8J4Pi2iNsEgWmNN3HNXgkE3XHQmGBVcZ8RBsC3AWYcFZjfc
	 SrzCczsoSZlZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD0CD4F39
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177880503368.19180.11509855839787934823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8cb21a2b9f4d1145f7737fe77c869da00e26481bc9f495b92288b00844f517
Date: Fri, 15 May 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778805033
