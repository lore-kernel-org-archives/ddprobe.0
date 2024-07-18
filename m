Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA6E5B1FB
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721342154; cv=none; b=hG2JpS28mLjPcBXQgMZaz4kilKp797Ddkl1kymxhm5mB/tUT9RuIRLowsK5CfxYYvayZnBRMn+98F37vZuWLuhbEjK2T6XXzMvOtUnY06e3a6gkRTy0pEkBzN54txILTBPuE3B93dD43+BXCuOnbCgHUhN87pBcQSHKZfZ/wutk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721342154; c=relaxed/simple;
	bh=pj3bcPusmF0XX8AFsu3qn27/Wf5VTinGQC1LCMLF66I=;
	h=To:Subject:From:Message-Id:Date; b=UZZDWsFYBqDEthFM33BnI/FHmeHpS7QogeQOuJUfhJVU4jGJIOxKuqY2zputsVGEcgRbYAeM/to9GNIIK3PtBNFQa2XfqAnHUaK9KjtvJaint7ry9PuqmXUGMmZirbKeAQRY2Jf5in6b7njJBlxQDuXusjuGTb3WKdNVosJzrmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnexGO8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnexGO8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0747C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721342153;
	bh=pj3bcPusmF0XX8AFsu3qn27/Wf5VTinGQC1LCMLF66I=;
	h=To:Subject:From:Date:From;
	b=GnexGO8d6ORsdZhSXBLKrUWJFK+oDY1jY4jsUVeyOGtF69FXelB0xH7NwfPvJCfQ9
	 rlki7o+bS+nzzjmR20yJhBDA/zZ/CnhnspFqk3PfHDXYxRo/n+bFEYBTSpUTQMGFcN
	 ig9bANN+DYNf8KoosrXo5kqCgAVwJJnB2wItZv6kOLMfx+lBY9JX5mCQESECrbtXCM
	 yYbaF8R4J8waim4FRJtvGlCA39TK8gu86J8Lvi1Yxo6KVigxR9D5o36kDuFu+D+p1j
	 vHGwkzGcQWzlA2akgYmvMapUXS5xjVLqH+cBAZddJ9sShr0lQ+8FNIC5AcY8r4UXc2
	 4i39gsrM0LcTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8A1C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 18 Jul 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172134215358.23404.14711250582185615479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce82635d687a6c9870776003c799a344d994d20a155b58db8cb74c10a64a6798
Date: Thu, 18 Jul 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721342153
