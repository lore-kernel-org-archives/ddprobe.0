Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD1236B92D
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790499034; cv=none; b=jugsNanEPbEE7hxp+ZgnK/YJh+nRtF5nK/1T2H5L82pekUQM9t/8U2eXUNpBl5m5ETRDS3v2g8JkairhR74orexpEfBSD2MgSQXK4ffdyeAmxx6c+b0hkJCMgn3IGXt2mMKBHBhOcmLVm1e2p+vSS3UchL2Igvx9jo7PCDKqGQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790499034; c=relaxed/simple;
	bh=YUZ06hrkmiBF7IK7xk/Qgq2Fl9cSTzVgXf4NtmMa3Ks=;
	h=To:Subject:From:Message-Id:Date; b=bNc6RidLu+S5GtJY1rCcDYqBLykzXXzz5vSNGkRu6GRCEfydGXEFwlPnb10Pf4U8gskGGB+Jk17ahxVl9zi7C1qbV7t7kw/6OLghFm8BC7nbd49ikY869IcJMMM8IXGZy6Xt88KRV7lv2adTiUShLZCRBsHXiuUu5hl5HJJ42co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLZL+ir/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLZL+ir/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BDEC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790499033;
	bh=YUZ06hrkmiBF7IK7xk/Qgq2Fl9cSTzVgXf4NtmMa3Ks=;
	h=To:Subject:From:Date:From;
	b=VLZL+ir/Y8Q9V6WMY43525Dqxzl6710leCxenHOSmNHR99Y0oU6XZFTScWKQ5R+wJ
	 kMoGNBoy1AmNPbxyPBXQ4x3bMogD0nIqFi/DLihFQ5UTvzQd04MC+wh6tT1e5jtDRh
	 v4lHE52rBRHQvfnvOggeEBMmuyYiNoAPuDr6a83dXMdMqaxOQZHd78yKvnTFJyVpPF
	 WYpeSL9P86r0kmEIbgYtYJTkXX6BG7Ho9pOyJ9uBprHjPvkbzH2NmTY9wFlAVMDAut
	 HKOmatP551uRuf1KX+ns8j8/rIDHmoOoMsVQwbJFci5uQjuku2HJoYtWwblbhGVCLZ
	 s2tXWlKrWc5VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0078C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179049903368.29437.18045001057159418471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 720f7e071e4fe4e03f2ba060537191b6a7fdbe8857643ef890daab7f23057578
Date: Sun, 27 Sep 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790499033
