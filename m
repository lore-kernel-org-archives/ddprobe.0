Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296301DED49
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757962194; cv=none; b=ExsVarNpDk6atCL9n+lThc/ipWm5IkiZMCR2QoAOPra0o+SB9xxImJj+GYqJY0dVU4XFaOzPX2/dt6bz7ISoUnDsEq1nnMeOqy00ev+HrtxYtqYZzMlXAYdeYMdyE4ab4guwqTVIAVNQEQ20tsqbWEoaoj0BL8rnkiwZjahSYZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757962194; c=relaxed/simple;
	bh=AW0x/fQTl+tvsvo72pXfrf2UyoRheslFnap6R0VsRwM=;
	h=To:Subject:From:Message-Id:Date; b=Q/I1YBGSHPNFv+3sBPo9avuOHQ8UAjwc/vCTrUVD5OiX2F+A2EhYngsrP7XpHR2MtBpK+WRcM17POU3seU6VsDxsZeLCBQjCosHMLk1li1BlOBhhrxA7/8s+AQROKqv9nKtBPPHZuF4u9Qx/E3970UTT6gZGan5ynNOb9AB0PCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ImlB23w1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ImlB23w1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97BCC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757962193;
	bh=AW0x/fQTl+tvsvo72pXfrf2UyoRheslFnap6R0VsRwM=;
	h=To:Subject:From:Date:From;
	b=ImlB23w1JqLmyqv05Us7Lyl+445EdcAbEqo/4/RBuzzvffzwOCMgASmcRy9KDTLJM
	 tZw0QH4CXPgOxVLlczIcF1x49Q027JR1Rd/wjWfnQ8TdGEWqinOHjSOEprIyLrp4kN
	 MTNqrzCHXxfOhqYe/MdJmgXiQc3rfcqw+uUzWGEJtJy8GHpFZ2yK8EB/BBkJVTvK5M
	 IAjc5hAasWTLV01TeqxjJ37IqtkTiamQ6IVxPSfNCzbTwsWATPuwaXmCCoZAyh+PO8
	 1wWshs4plaK6BjGM/ybAfHuNUrOmmBogQEcc97GLrfKwBwuoZsrYrU6pr1NE/HKEXL
	 i9RTQxbkkIGdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967D7CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175796219358.5900.3243679560750100601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b858ef1ece237b477db02caa62ffbcf0aa520a978baebb0efe9704b8dffed62
Date: Mon, 15 Sep 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757962193
