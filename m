Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0991727FB0E
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773861294; cv=none; b=YDXUrc6qKWlV3Ioix6ShlpEkdfs75SouDv+jvIeJOSRJ0gjy0tKEohUF/FCDqO7d3Deg2fFwSdo2P8f4G514OBx+T6kgbrzULEoaV83us6ze/Da7kPT453pFIWU+fGRvC/YkPUXeViBgBjTh85H5fq11dT7Tzf91ozeyuGaIZn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773861294; c=relaxed/simple;
	bh=rRcvGYfDQd7MjvxD5pEzsiQcDHsZBMywIH+SAUeDiNo=;
	h=To:Subject:From:Message-Id:Date; b=NAP0iCuPWPNCJa/+2Fbvv4BVr93bWbLcmAY29vT3JbLZrkGsUtUP5gmxw2X+Fo6MBZWM5A5bvBJWK6hSvJB8b6SLHYUgi1unbfZwc8w3M8Gi4XhOoE4vUJyHL6LQbgEvCarS4vu6oe0OCtIAg0FrZ77/OK4d44HUWbXz9G/zcUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLDMDG2W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLDMDG2W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3DBC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773861293;
	bh=rRcvGYfDQd7MjvxD5pEzsiQcDHsZBMywIH+SAUeDiNo=;
	h=To:Subject:From:Date:From;
	b=jLDMDG2Wqk/O6/DFnxnveAQwdAdzk7Hl1hTVBO88bavXYxLsWAdEpZQyQ11pz0GIl
	 EseaP3gB6JvJQEAwE3R6Y0BigGCTXsfXq9E8qzWzhnIA1bmPJmuVtzHDvn2GNZndL4
	 NT5vIg6UcSIeWgMhdBedyeIu5CNamReEykvZgxq0Ey4bMcBbpOOhhpB6g1zH01meTb
	 gAz6KE0hn8U393DbWebsjQ6JX2ltwCMdhFJAz1ZW49JOLUpCTL+mWEEqiIp/v8/GQL
	 JVwiKVU6HM/d1x6Gq3sGqikTs8hnv+lMoeCCjvFLV9syCW9m4iVU6HYlIcqXUwN62f
	 5ZF74k0UC2yzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9031077604
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386129360.21724.14228164457231083017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b005d4f3da14c9f06023cf5c91c22025e753033ea1b7ae620f8d2507ce7ad4
Date: Wed, 18 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773861293
