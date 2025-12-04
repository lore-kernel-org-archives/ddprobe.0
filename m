Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D4D345730
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764854574; cv=none; b=WQS2DQJe48UW8XuMKfjCwFHO/FBQCBxWYdKSOieG7MGM9h1USuu/ziqn/L1e14otiTcv3eoiGkJUMfs0MZuMpKErJfrRNvwbC6hq8OKA+MT/xw2uI43pK1tqRI/3/4JPsHz4CazNxL9xc51F8k2rlk+fFeOEWrXnV8+ueVubCCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764854574; c=relaxed/simple;
	bh=5LNcZe4KHroEkcgD2B8eq5nZ2HFeoFuCo21DWY9DsPA=;
	h=To:Subject:From:Message-Id:Date; b=Z0KDNPpBZP2mlg39A8eurh4Yzo0aAH2q1kZ4ZL1tlH4lL43cgH1njWp7MIbbxxVSzXmUJhClLKHKPFmIazR9WmAXPKSh9NelBJDnLjs0c7fuWvuDb4Q3QppdbU9cRZQqa9K5mVesgZ3qDH1wbztU2KUahAaIJHbxHU+hcPffeKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZG4bXmag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZG4bXmag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B830EC19424
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764854573;
	bh=5LNcZe4KHroEkcgD2B8eq5nZ2HFeoFuCo21DWY9DsPA=;
	h=To:Subject:From:Date:From;
	b=ZG4bXmagoYAqxm7ywGVKSLB4hyl6JTy98zh6UbRp7iMZTjIl7lptWr6vQdHc5Lwch
	 Zs6OrXaZ90vjFvTj3E5o66Luh0JWPk5B4VCTOs+EYIknJOSUlBhCS3KAbt8blVPsiH
	 rmujAmePXnbEqiHeF0Kzay1X+j84Cn6KmusVXHzJ4icVZB7WsrE0Ne6/y/u/ZzantO
	 cesJKQQJrRwnSMNjOziufP1lq870ejSalefZsbMgQ4BSrS/TeU+mgx7iAVdPniNNco
	 4jTzxfAZ4NFGoSdzluuZDxzUapFXnxXzoSHFVwvz6rnittqwrv2rkFD/+ZG1vjHvMA
	 y3vKxEdCW52Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C6CD2068D
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176485457361.26651.3453795928609696411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36b9502cdc9165e23bae90ba143e4cd01b354887685b78c6c0f9d811b56255a9
Date: Thu, 04 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764854573
