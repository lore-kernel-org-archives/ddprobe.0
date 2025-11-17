Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46309191F91
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:01:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763416915; cv=none; b=HHE9DGlgGYEekvnlpo4hn8gCjk89MIpXzqRjdhGK3Yk9aQzqPiPKP2XIvdoDHQOvAVQKJN21LQ3T3bwY+RwCIvkLS+7CHmLKYnoxjBVHvflX/tJRpVLIrWrJA7gUtR98Sq2wue0KknTSk8/xVe32Pf7BJp7t69pmDjU8HbV6qy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763416915; c=relaxed/simple;
	bh=zKQQHbqD0e+q5KZ7wyIkz+/6ZdogWy5weqVrzXSfhwI=;
	h=To:Subject:From:Message-Id:Date; b=sbBATI0rGAcI56z4z2xVRELZ3uf271bP+4XGRgGsQTAQy1v+t/RBLryKiroCtGp9Yg074h7ql7OM01YTcFLyaXlQY1CcvQwpxoolLAtXXhQGI5jLOhm+Lr1KmZaM1OIoRLj8d3h/0RJ13gyyMXyBF2vCNnFgUBoDqFLVZ6tJQRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnHFFscR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnHFFscR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A46C113D0
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763416913;
	bh=zKQQHbqD0e+q5KZ7wyIkz+/6ZdogWy5weqVrzXSfhwI=;
	h=To:Subject:From:Date:From;
	b=LnHFFscRwX0Rn00o7D04mCza8JHGjY8Dip3VEptUfmVsUyIIDQef9LgveWWjUfWMi
	 Pfx70IPcWVW8Rd0FY27LDYQF5oRhDU0jjeALMw9v0Q/h2rt3Iw1HwYSD6duIXlID8a
	 Jeenpk/UYUq6GkhvuGNs3IoImqCVrEv4ISKXWwipzAvIhlXyaTuQdiztCzNGFm/6yn
	 beDSbxxlYcNP8km6T+de+VLqDNYMtNk2L/euJPMGXb5CIa4vOLcBMw2UO6lxD/XSln
	 CtAgQtalQZ684HA7cR9BeIeg2dkI3CdN8tkgEadFPxO2Zq9p0y1w0YWbuQYMcvJkrQ
	 F3wOS4YHPTIYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94659CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 22:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176341691358.10940.13522147247068385969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 968f2a381fa9ea3add5c720600d6c1ed34795355938dc87a02b3374f36b67e7d
Date: Mon, 17 Nov 2025 22:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763416913
