Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B9D28DB75
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749032994; cv=none; b=kVYJWZnNXSBOgZeFjypdRme7eK7v1M/YMM44ZQWUtL1mW3Be1xR/PkzysMTKXvNwN6s5X5SigZKntA+/tiTUzpmXODQbVJBkuMzsVJCqwAu/5euDaVUui5udVBOEdUGY2Zt69TsMu8qPEEU2+Ia3ezfdPwf9hrjNA3ypjs9z0Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749032994; c=relaxed/simple;
	bh=X9Z1hlPDWWWrIsZhe6Gr/oz3fmU/9w2a5SjlfR7BKz8=;
	h=To:Subject:From:Message-Id:Date; b=bnQPgXjyfGYxHS2asKJjEzsRt++h2A0o1UgGr7NpV1LaKnVD/ily4b7RlvH6q1SKXfKqBJHFKIPRq/yQjettIK6Dgw4H19AXTyFsutwoUO2DO94cb3omfEsc3JJwTQWNtSRXfMLoLifp5SlMkZYfhqP2KFGwP9/E9w5FAXeIsBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCxfoC2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCxfoC2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5181C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749032993;
	bh=X9Z1hlPDWWWrIsZhe6Gr/oz3fmU/9w2a5SjlfR7BKz8=;
	h=To:Subject:From:Date:From;
	b=rCxfoC2v3Di5hdGDhNhnYNF46dF+LIsVptSGRDW+S+5RCKnv7REvt9+5B5UPrRHfo
	 9XE0WTvYvuKFvx37XrYV4yx5RY5Eumbds0y2j52/1Q+65wznRmtMW7ZLSYSmEauMyG
	 j/nQTyYg/Gp9vppLA5ZgYrsY0qOeW4/i9qD6sphdHme1kjM/OGvSDL8Zl3ZUBqGdXg
	 STMNCayHR5KZDYvsI3Fzcc5Prq4lc8t+Qpi672cIvyOYaYwpVHNJKVmzx++2XYPOhs
	 hqWQZQ0BAZ/OzfObwuTQ41lCodoQsivfTjzNqwJtvFMuOKj2vmtqmchoBSWFYdTSvW
	 AOaJZLW3yePeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921ADC5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903299358.5001.9799267972941955921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a0d8189d5d0d55f58d30742be69ff8c662957dc0642a418b147ab24516d8edd
Date: Wed, 04 Jun 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749032993
