Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2C3315D49
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791745234; cv=none; b=WSov99I8L/AOxZlnvjPNPNX+aW3HSaeQMQqkTdNsjmLYdy3lYxr7nJpsOrDTOevcWxiu/qru3+RqjexrG5ROFBMNHqC/fyV1d1dK9SbsWUxjxavE164kTRYR1t9S255gbMWdT9kCTy5NZjJJGFu1hn65hdGzeTST9Q8ewIoY3sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791745234; c=relaxed/simple;
	bh=NqA2lMfPLTskS3sBE+x/MSUWKfIM4SMDEYGPvSwSlKA=;
	h=To:Subject:From:Message-Id:Date; b=DYjbjfYf2QuYLgcjyGmCtL102C+Z6WexGJQXSHPuLbvGmaz04/cjg1QqHs7qXM74jqDIvfc03yGwcH8pVqGGXQ+q8Eb+2ZP/IJltdueuRnPpIDOl/ovn0u9oyRFo7FmSICv5jWxYOtHlem1fpS5X6zgXCpRumKCxAKJFZm9RLYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qZ6+UqU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qZ6+UqU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3391C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791745233;
	bh=NqA2lMfPLTskS3sBE+x/MSUWKfIM4SMDEYGPvSwSlKA=;
	h=To:Subject:From:Date:From;
	b=qZ6+UqU84imJY9xbigrfXLyNz5omKuKjbzelUSgGELscLFmwsH6q2y/MTFDfNYOO7
	 tnASr8IIgBINTaT0zuO9Wl7VsnafDyDLPCYEWt9zJMwEC+4cfJVtKDQGH+DCnDNiiY
	 eULEfr0kuLSWAhgjUb7YBvIN8RsJyjS15HDAlbWo6ehCiv1rpMnkpBPebbCVC0L/qA
	 VMkurGAsXbkX7mTQT678hmZulP4J1d3u/9O0WmmT4mMkY1blgGcH6bboy4qIvfqsV2
	 TwdGsw/Xj2wqVQkSfar92EOeFm9V5Dj5wrYfw5Z2g8C3K+y4QFp8/8tomrPkfMMDSD
	 6hYvnlip+uUyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE025CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 19:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179174523368.14523.14533801305503866120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e99f6ff9e9fb5b3bafd28ff9956dd1de2bd77e164474aa6d6d0612fcc28e7b1f
Date: Sun, 11 Oct 2026 19:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791745233
