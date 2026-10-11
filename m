Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CDDC28D8D0
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791714034; cv=none; b=qAFYCc/4QJC1cXGoYzyYpnAH608bT/vOShH4z0xN7CHnaVNpD0VDqJ4x47GnIETmOhdDnvXj1GpO7lqv993XSltHg5cS246bsvJG6qnwC46AD/kYfNVCwEjSoPUUjqycJyxatoXxWkG7XBxz6zs+PZ5pSZVDQLpDcLyiKSSiAHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791714034; c=relaxed/simple;
	bh=zClwYT1yp8mLe7GKhEV59w+eftKTWNGGUEu4RfgkE0E=;
	h=To:Subject:From:Message-Id:Date; b=Jkvz0Bw1VongUy9BvJZrZr/MDJxDxILXhnGP3MlUN/VdAap6XdyAYRc5Suqn0LAYtTZ+nhtOyGZSPBo3q+j85RvV8uduTF1Hmm9aHDQ+4rABWvApxlCeoSk6bFBIGEk9IjbsQaxbUcqSaSqCYss00ZUOHY7FsTtP4SA8ZVaYyqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c7u9z9X8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c7u9z9X8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD268C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791714033;
	bh=zClwYT1yp8mLe7GKhEV59w+eftKTWNGGUEu4RfgkE0E=;
	h=To:Subject:From:Date:From;
	b=c7u9z9X8Le4jsYH9raB+gDUOTT+JCZrsflXrCld3bu3jwukWqAWCBgrWtYRu9BaRj
	 KJ0IQHIii3vMocXncQHEkB0sVT4Smd/51jGgKU0ldv4WzMg0qleEmvhOOkgbXTS3D3
	 kalCN8rHkhNfRO0F9DL8L88049Gdj7kzLTgg6ai/UvCOHAjXFsTUbDX4D+K5A9ovm4
	 amyiBYiqinD6e80ItI32sHDG9BUY1bM8cdlrUa16mu1U+rvCogo1BsxZHuDRhenieo
	 nvrRQpEZ3TJZ3ss/EnVwc67v27FNhwbG8wBpJR12qvMCzE8pky4uSO+AKLVSUTxN2U
	 uBgUdEbUDsOPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DD5CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179171403368.2873.12075972746077474567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2824fd3e89ee2efe1d32214c622da1a5c2ea05f1275c03a421b3addb9f827b27
Date: Sun, 11 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791714033
