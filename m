Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442C81372
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742734194; cv=none; b=GDtMYIuUNSc0EytJIizo0XPRdPw5/vHNyzXoxa6vdx4FQbcYyfXDKCeknwavqj93pv5UfimHeOQgotgOOkGKRD47GuKwApqh4nY9fT1h5CxBCtY0/+ZahAmZIXM/sxPrqMpqppiwqJyppFRWu9HJ2BujsNT1LkMoS2uRIVWBOZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742734194; c=relaxed/simple;
	bh=221+5Dj9BVedVh6lFpo69oEmyfQ0TrjHLGGxotVvylw=;
	h=To:Subject:From:Message-Id:Date; b=VCqf+yHMrZgU51uL3c2thAki+Kybvfzl7yvEgdUr2rReDTsno5U3fjjZ+EpxPvQV2JFBN8F0LHVb5LO8aXcGpsMM927bBqEVff0aUI+RKrbHAU3v/KnGNo0Wa/J29/DD5fb23ldWQfx4i6sFmzBvUpvoROwTu/zmBygTbo/4tiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcK1XTNm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcK1XTNm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BB9C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742734193;
	bh=221+5Dj9BVedVh6lFpo69oEmyfQ0TrjHLGGxotVvylw=;
	h=To:Subject:From:Date:From;
	b=VcK1XTNmLxWYT5U+XZi4jDn1mqxVwKgbVZ9DQUJ0xFMVeKxQo/WO+0p4+t2p28Mpf
	 ljbUAFnyWIsxTc5OYsIm3+aq1RUhKOrjlFix2odeC+52YlJw4tEuLMEjBNUH5xolOe
	 dqvVeg6+EAQDT/cw+jR5V8zVQNyh0f0kDG0P6ApUiotFW0VOYsN5DPPdAo19MjYZ62
	 vs/cmDPdFjyWlZcCgiXUnl3B4tJM1npbZzynhU3I8/inHzrtil0lfPjzBo5pTfp3W8
	 m2LCgmZg2qV9UM673IL1jweArleSWxOvGNOnS0Oc53YxY36elbbyFiXxdowAdCg6+x
	 6AQA2Lke6doHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EAA6C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273419363.11464.11770961980763222408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5363bc7891d3d53d39572559e6616909fdfccc5017a1d57bf92ed8c62987e718
Date: Sun, 23 Mar 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742734193
