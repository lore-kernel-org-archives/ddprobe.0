Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194222C21C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759457394; cv=none; b=eiy9qtbSDKznSVPoyozJGVdJSo9cfGxjWAHtjS1gb5jX1xidCW3NVogXaKnFdpRzZjqMXLHfSuYSiqEKnf/JGeVAmu/Z/Ec5tryaSUOPmtzljAdVwAOxxy3JohGpmKReygaNigeFDESmpYL2nDPTv4fzuyT0sZrKziUYOmh+Lns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759457394; c=relaxed/simple;
	bh=RHnd39Ksk6OUE3FVVynvO9xbB2LQd3o76E2U4o0DmLk=;
	h=To:Subject:From:Message-Id:Date; b=BKaUSEsDbLfsWCSi/JE7JwarFPS5hMVUR77gMFvQH6VvTYEMxahB39nAzItsPd/8sqivhbIoMDiDG4/K1UQgEO8TKFcpLV3mPm5u+L7hOK10RAN0At+yMTecZi93w8rB8TgLqula+Lf52UNQQdIWJm/AzwFm0jyLN/8Ljze+JAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TWHhK4hk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TWHhK4hk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E9DC4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759457393;
	bh=RHnd39Ksk6OUE3FVVynvO9xbB2LQd3o76E2U4o0DmLk=;
	h=To:Subject:From:Date:From;
	b=TWHhK4hkze57mGCiDPDVcxV21T1BVpaacZeZdp0nNjxmvWGc8BK9v5S/zANA0QKbT
	 5slDD/4zDppP/Jqfq00suxkcg2IOr9iEcBe8HjdNxldevJwUx1BD5qIFKbsgQebZn7
	 Nwd+l1OAKZl8jLFUNW9yjIIeGpMspmhWMSzG6l4oR5CnNWcIQKDRYwjU0fCu6SnKRP
	 mPYpietBlhF4k3fucIPe6QEUmYSoQRGL/dm29b/GXqmR8FY/d0HNcKGpz2FsHXS3aT
	 Ef9HMuBMjFuNbDSLR0qxX0fSVso6J14CgogBIls21gSYESfwwBWwAMa8++w8QOp26X
	 GIxjTy5xwmcPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C08CAC5B8
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945739358.18073.816223988798496310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4888c1ee0eb9c490dc2e19a62466899ca62255e06e5bf41dbcea9bfe7b114fb
Date: Fri, 03 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759457393
