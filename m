Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2255716D4E6
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735881354; cv=none; b=fUhU+EF1H1/QxPggsJ4ClfD0Jq0gDZWnk80qBXmO2iMSftU6SMRIV8hpiLlV6x1KhSa/KP0rinGu5atP/sSsIDOKWA6ANd5GAp0qZEE9mBGxamq1Oev9+AHfop1tuMIzQmYLjJAxZc55DMaxQUCg11ayksdgTXXMSKKj/1QLsBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735881354; c=relaxed/simple;
	bh=Je2vP5Y5yj1yHkxxJ7pk3A5AlO0C13h0dGpBHNY3PBQ=;
	h=To:Subject:From:Message-Id:Date; b=KVHGm2FCwPcTibUwoyUhnia1Tfe84Eb4JaFh2q6hd1LVW36xG+o0fAE7Wo4bpUMEzdKjYNhiHXI34LMbuq1sQbSw0GVGGELGIurLeow6c7VnROJ0tBpqvsrfQ1ItQBxbL7NDqle9ryGAM9/T63VBTjYrRwzpvu0rkK3Jr9a7A4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bALOTtl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bALOTtl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADD08C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735881353;
	bh=Je2vP5Y5yj1yHkxxJ7pk3A5AlO0C13h0dGpBHNY3PBQ=;
	h=To:Subject:From:Date:From;
	b=bALOTtl+mYWCnyD0eqntcp5+KfXztzvvEfw3o2Kx1DvF25un0jzq2b4OTSm7CISMJ
	 /kvfiRGUi4CRMhLAKEOkY0KPi0xImNm5ggV7S7tA6LXWCD0btPiqxzphV0Uehmu/GF
	 hffaerc0z28CT5jFsu18GLGAj/srDSAWxrWtR7JLRszsdjLikMos5sgIVuMq9WS6lG
	 BYXqelRaqL59Z4HDMsz0yjOkrnaMSBGKqRlUZtAio9Qx5MFUXVBJrjMowN0xyYWptZ
	 9tKZWkRldvZdz+s1t4HX8i9LflykB/mkaGE6DSnZ2mI4YvE7ABxsJpFmrzpHJ1yRYL
	 pRYGib2aZJFsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93423E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173588135359.2033.16253889154753367488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd02599f9d90d14a0bd2718c60f327c8d76dfb86f33a1a169381f15e6291b29b
Date: Fri, 03 Jan 2025 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735881353
