Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2F6477987
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782751114; cv=none; b=f1yRKKlL8rebgH67PIn88TlxPTwMK0c8G7E201eV2UPLPYuY1oQCNYpxjS2yj88MS2ziXgzo2XIlHGg61in1hfquCi84tox86zNg3GVPFgC+s3WzjV3gMlO9fVvA7eE8N1j5xRW71Wv3+0yjUaGFiAzdPdhUTxWJoS9D1rYb31o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782751114; c=relaxed/simple;
	bh=Gu9Pz4S/zJoBJjwzgiNTRnFDwhL1r+KDdEFKKmeqQ+w=;
	h=To:Subject:From:Message-Id:Date; b=CBrL3GjCjhK0Edu+7pqfVs3jzCA7YLQ2/bbgFwrX0KjlmG+ANeWDHqbwNDJY2o2Mwn+8wAMBxMHgaOoPKVni8eUdeSoOLD/wopdyrfMmj8YCdPHELeyf3B1nhLaWFbgWGEj3DpgCMM6p9K8xdmjuA2GAH4Ujf4D+Y5nF+4hi4r0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5A2ub/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5A2ub/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10D5C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782751113;
	bh=Gu9Pz4S/zJoBJjwzgiNTRnFDwhL1r+KDdEFKKmeqQ+w=;
	h=To:Subject:From:Date:From;
	b=Z5A2ub/kxbMg60UfyMCU+SixdeIngY8iPK1kOV2kSGRaZ6QpCzol3OlZRMU7HUj1I
	 oeFbcZ61747h92uMtGL/XqNc4ZAOGglieZEuWx93kvxlW4UiSkRo0CHUOd/ZQx1dfG
	 +R/IweW2P8ZbLMrfivmt6fc2giohlXrJy9AEL6ToE7QXUkddoqGfohhRKAlQEZVB/I
	 DX/oPVizFmjJB7Cd6sc0QJf1J/DzwjdsoH5s9Ox6UroobAuPmIefK3KoeA5+TcTz1x
	 SMNynniJwO4zrBBUYz/VDYPmKFJT9QG6WIJoDJJV15ukQVW5KWC+vLZl/54TLLsUbw
	 aYMWUwTDfqCTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F0AC43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275111368.30845.11648239427664587517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d294b3ab3b57e9a694c9bd5253c2ef400f3c6e48afcfe5a6eb4188a9b4dae3c
Date: Mon, 29 Jun 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782751113
