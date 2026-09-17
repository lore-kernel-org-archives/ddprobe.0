Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F1D408600
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789633234; cv=none; b=NBi0vEs0+LOiHE3oko2ef18ykMJ15mky4jvmrf26kHQQRgRgL22knFvz3IF5AhvL9xIZjBSSrMBe5WlARNVeDklEV/goQyyPf4Babe15EGYR1wS13OquymJ1bBpzm6IfmEqM+jnPyYYeT8GGeMaleU2YrKvzLnH8l4RiCiSLbyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789633234; c=relaxed/simple;
	bh=H+YGjKUE/iGElg+QQ291W4vMzsjoOmcfBUcX6AejMVQ=;
	h=To:Subject:From:Message-Id:Date; b=MeZ5UdgXGF982c2TMp9p06Sn+IASg0DQaGrtUrf32FFkLhSspEPdNslyxEZvbWxI8MuU3OR/TwAYeaEqLx0VY3M2f9W4UO94qirToQrS8kWnLZyPmxhlTDqT1vnPMYbmEr/M12kNZrDDvzT+ydcfa+47pMoOKVBX+OTv8t4d+bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmUtgyQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmUtgyQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60FEC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789633233;
	bh=H+YGjKUE/iGElg+QQ291W4vMzsjoOmcfBUcX6AejMVQ=;
	h=To:Subject:From:Date:From;
	b=GmUtgyQpJWlymxKUrXkPg1NE7mTh4Ci0EE7gVGB18C/rlXDnst5cIhfW8p3yip5Le
	 yk/Uw7EL81tUyfzywvGQuEH/gW+Pey5usL0AiUCI+d7liJHsfpOvo93XaH8VdBVYcK
	 YLv2z6XcafmgX15BMg00G/eRfUYTg6/sWNamppuotZoCTGQKUHWg9ObF3iNugtZKaI
	 e/wCD8Lw5XMnx5IAC2UcDwHepJpWZ45bHes362CQL0xynzBXjWb1uWoD10/WvbWl5m
	 9xGOC4WjIgU3TUO0u9Sp4sUcN3S59bx/snbYg6IMgWY/ITW6XrgO83wrqFSlbKN79b
	 lsksBZPrK59TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A78C982D0
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963323371.29932.4913517003386010758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebe4adaa900f2328bae06a9a929fb3d54504ccf2966ed54d6daf3ca631def54
Date: Thu, 17 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789633233
