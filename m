Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4BB79DC
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725558954; cv=none; b=ezsmrrXUKLiGCm9S8Jdzfvm/BRKyIuIT3ECNJUiQCZGK5DJM9mgZw/cw+F8YIQwUFmt74C2uVhl1rFqMQNjRuSjXoxQL2XshucPGBGOs6krUgVVdaNJaVJx9QYMhT8+m9B0Ug3cZIhX340BbYYDGL/VHAQ2hHANQB0RKIf/ev6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725558954; c=relaxed/simple;
	bh=sG9k//zfOS1PXVVMejAATQuFBGedSluJ+1R+xBuf8OA=;
	h=To:Subject:From:Message-Id:Date; b=AdzAZwLqL69eGdcn4a1jelEJK0Yspgzm66b/mbIjWEpY9Tv3Tk8Nn5RJhMLz0FWjzl6BRy+Bl8xnGgT195hff3W+rDSO6mHrizNool52Hs6oj3PKaIG76CELx5L/xTJ49FGljXvyGD7+kPN72I8rFtJgPfaeFpGwedf1cDRHD3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3aoAsll; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3aoAsll"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F81C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725558953;
	bh=sG9k//zfOS1PXVVMejAATQuFBGedSluJ+1R+xBuf8OA=;
	h=To:Subject:From:Date:From;
	b=n3aoAsllrbYdU5V3H3rlICwdtUMDAzjiTUU4zbJOp0YhOWPycnDWRfoekANdpAdlB
	 +rPkcQkMHjksq5vuNxcJXTPArhVXf3p2w40YsW05zz5FEpg7GI5AO4L1rG3m1BRLqp
	 B4P21dr6qwoxlo/bXEyljcNphti7rS76ItybfUPwJXwF4g2Eye9llrg73WkV0RmjK3
	 ibZOzUFO9VL3KoXf7VTC88Ys91oeJllhXMhWifGgO7Fah+jZ2U0FbPKwfzOk0xGgOS
	 B8g+RinnW0jw0T0WH+jx7QoEt50hKr7+Gq6YwaVG2Cm0qgNbjXdEO8msiOes05s9HZ
	 Hf5ZBF4tgS7QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9918ACD6E74
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172555895361.28861.6052495240370151269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed1faab80b56b967227e34b3f7d5f1a667dbe7783a6522e2974c65e0413f491
Date: Thu, 05 Sep 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725558953
