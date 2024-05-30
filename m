Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5557F18309F
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 12:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717073063; cv=none; b=VmBN/lcLRY/zMBkEbn1pweyWZydJoKt0gOEH43IzrDcV4stArKIGgW0DQKOspTp/RulO8dBHkXBllQOmWaQBAa73D6jaBfA90glp7CNgKxud0Yg+D1PPO4HNaPHc2iUHJgVwTcg9O2SgWZk4s610zvayz1V0jwpex/me/4Y4SpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717073063; c=relaxed/simple;
	bh=IZGtZ3NabA+dSothHvZzalYQfyu29jx+XWpn4ZfdmzE=;
	h=To:Subject:From:Message-Id:Date; b=ObZ7pT54ZSkQNX0MvFHFJuseYVyxc0Xfkwa4SDX6kCq8kh5J7uWL6Bxu4Ysh+DXoK/zHJ+NT0UGs0yZCezh9ETc24M/ZgdzwiZ4D+Qkx9kE2U2XXezN6VSJl1cB7JqG4SCMzUj1S92fAajFZpMN79VPXhMRGlapBPdqOV8HJY5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AOJop2c2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AOJop2c2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEEF5C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 12:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717073062;
	bh=IZGtZ3NabA+dSothHvZzalYQfyu29jx+XWpn4ZfdmzE=;
	h=To:Subject:From:Date:From;
	b=AOJop2c2qbZgovuR6szOO3anLPVNHhEI6SsnaOl0I5GENSG9X5eFOiamBo5OTCn0a
	 Z5hDTOLpnXnMhlJtBTAjdkQIa+z1aEVe+o9B3PLvJcF/5s8D3vZnrAy+uRYpxDptDN
	 yDSDhs1YubUWLP1lfqJRsptLWxOVvM2xWIM9lVFvzS9f9Xte0IrcBF7TSzVj/18OIp
	 XhGeqMv5EMaH2mMq5OrBiPQ87pbX6huYLfbwqINIwZxUbfQZmVeRZPRBNXJiZlEdmj
	 IYkp36eMg7Azwh/TOSJY82mMrVkeF+zkRN3IBrQFmf9s0K1TnDNHORS8iGVRAfZZIG
	 XK/uGCeVMpLVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB45C27C43
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 12:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171707306277.22736.11953882282145344552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e128e0f1359ca0ca59a202f5703520fecee1935241a3a85b3c9f1563bc9e8ff
Date: Thu, 30 May 2024 12:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717073062
