Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33FBD2CA2
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726812354; cv=none; b=jAuxLTjH9T0dn0NH2x0f9tdFZpMxKE/k+beMUtZvYis3KF1WTpkt5q6pNd9w7MvcMgPIDQxWSugvR8R+0n98HYnmliFyvmCW09LIO+nEftxGAQTvtFrbjoF1I/xWS8DsQKjwC8DGa1hKthzEcldTLcKFrcf/f/lD6wZQtoFTCJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726812354; c=relaxed/simple;
	bh=FeAwj2jBTKhookFh94OhyAo4BevCL2QsR4uAJjPad8A=;
	h=To:Subject:From:Message-Id:Date; b=VP1tIiKf5gcu0LljRtYln3JKwn+Z59zeMb8b19VORLEpd277tC56jo42ygwQsFcEiZvUO6cRNKuRRTju1bx4Q4ebX2CWfmlPzz9IyyoXcruMTh80TlFFeCQb88J9D54a/di5QLm+nIYZntYECNCJBOWkwmKOTb+0cEuZRagvH4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FX4Es3AS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FX4Es3AS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A347AC4AF0D
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726812353;
	bh=FeAwj2jBTKhookFh94OhyAo4BevCL2QsR4uAJjPad8A=;
	h=To:Subject:From:Date:From;
	b=FX4Es3ASyBUpKKaezx18Qfuf672DJRkdbbcU68bJFJWtgca5ZMFgcJoZiVCX19MG/
	 uOvQXELr5gL8t08lgHiURcr1tJlj0CX6/zSPPCkrA5/kErAvnvIhmHPF2xw3zIU+9T
	 7CrgTB4OhhpEOcG6rFqGfMKYvPrvmEUb5J01HI+azIv1CWDaMDuPRzYhnYZY24M6N8
	 BSHUFe5+O0ApshBBt6QSrN2ImkVY4Ccw0zMEoOW/ygh+MZfROO40/BMCL/UgNYRUy8
	 xbu2n5Z0fwyf2IfwwJ1XnL4B7/e2xp/y5iFFuuABReZetaF2ml9LCgZMld8s8PsoHy
	 gjnRVn8Rx7/ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C58CF58D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172681235358.8064.12992696142080133805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7497576c0a822c3b28852c20fadb3d57d94757abddf2d2b5d29001e43be5a84
Date: Fri, 20 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726812353
