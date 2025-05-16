Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4063A41760
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747417794; cv=none; b=fIOFUEiYlVfFOMAAwSgj39g5FUJPm+U7WL2SJAUGstsBmC3/LIVJ4vQoVUuGtDdP2Z1hs7BwsY8trrY4PAc/sxdBCc3yO3SjmltOIBldOUz+hT1cXJVDYAEkpEAQhKia5A7N3bKfG2B614ksiMnLmUCgcwnLVz6hfaV4dMkjFZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747417794; c=relaxed/simple;
	bh=ITPQv5ipMpUgtd79oWEB7TonW3d3frTs+XnSSyct23k=;
	h=To:Subject:From:Message-Id:Date; b=steXW6c6oDvfIEEM7bemOT4bH3Eq32TIn3Yz9UhxzTMj7VLiKw+6zGpkHYjQ2OUEnuc8/rUGg5jYXRR0R8dq7bfA63vrfexPGWQ+w41z/sa1Hik01aOTLxhKjEmd7LMj6dBoGoE/akwgWq+aVklh5kSCs4+rAZVtD+la0GitFok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZhgYZ5B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZhgYZ5B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A530FC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747417793;
	bh=ITPQv5ipMpUgtd79oWEB7TonW3d3frTs+XnSSyct23k=;
	h=To:Subject:From:Date:From;
	b=fZhgYZ5BL8uYhhwjq5MQGmrI6Ch13JzzJrqZcEtJhaATgoIgVcWaCYFC5sr4KYapM
	 T4/4c6Gis+IbO/tCDMVnNdJ9wzJbqgAuE3EjmOC5VaVfkXZRAvMGtTsLe39nSh0W/2
	 pjGWPTCwMDv6YmObArqalsjxYhIG62bhGd14DR6dKmNznRl921kc1AhB7CsFm+o2CS
	 6jlyNIz6TPjZuFAjf+eaDrQNnFK7TospSZx4qX7yaHW9gv35uBQCO42dptvnmfE439
	 yYdnAKWqk0g/hpBm7CxaQFxvQKZMSnEyXjq0xMyJwAB86IXNLfagEzsef7fZJJzpbI
	 DNHDqr2rF7r7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956C5C3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741779358.29803.4385590861129642625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0bfbeb6d47bb9067879ef418b44443e24c21b984aa386c51e796c5757632a2f
Date: Fri, 16 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747417793
