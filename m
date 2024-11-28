Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320123FD4
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 19:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732821354; cv=none; b=JeGIlk+2KqKOAx7AkgVq02s3NAlQZax/DS5iKIjC2UvRnhLISLSlefBvVpcDwCXqBTFd8Dzp3plwfaK4fmlIwaxKy8mqGneYw+qAvwp0w1Bl6EYKrBogxg2FKifFhVyIio46hw6GYnZE4AKyeUcl/jg3vWgz3cEmwdDPnHKakeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732821354; c=relaxed/simple;
	bh=5SeJQWJK+DQLacOOrNCvmHSULcSpJUEvd8hsDlouy0M=;
	h=To:Subject:From:Message-Id:Date; b=YxoJvXo7gY4niYXP5Nj//eqnPHwLfUGuQYsTp7oFKDaK9gYqDO3vcVQ7YuaBSqCpaSBY0gTkjiyPTlyyci1tLB69zL8H8j4pwaiDdwVAk123HEEwF5jVoXLimwM260dcfxihMSBwyFyL7iMv9dyHOZd+hG666deD5z71SvBKwiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lEnyIZ3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lEnyIZ3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B859AC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 19:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732821353;
	bh=5SeJQWJK+DQLacOOrNCvmHSULcSpJUEvd8hsDlouy0M=;
	h=To:Subject:From:Date:From;
	b=lEnyIZ3Sml0JhD3y+PDo5J+9EiYVPtZJo3koVJ3sszXkwjIuNL2TtJZQux/tpmOwS
	 tgXeCC6CtrfbM5A/JYwxmuyXhd3KDp74xvz4+Mn/wR7idcZfp6c4wjCn3Gm99glboJ
	 n9/bZ+AvBRQM/3X1GeDWDjFDVQCI5MJCGnkShcvfK8MWaj0txgtki5Zuqn4ZZ7dPV6
	 R+EGMGbEZrM0T1+NZQvCa6QcLNphYS5sG2gyMA9kYyTCsaw37Bl3rsqQxXH86ZfUSZ
	 MWFyVR3R9lubLoRe4pz2P/HZjeYLq+oxK1JDMJdjEGBe1fH02XJGtZ0Xe6wsBSKgV0
	 IfZX8OzqPag9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A15D70DED
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 19:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173282135359.25954.10254340625554039147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c144a4c4d79e678b5efc0ef241cf9ba58e53b41e9bdaa6c729d75b4ee3b5f7b3
Date: Thu, 28 Nov 2024 19:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732821353
