Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEBF22EE5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759453794; cv=none; b=J8BhGN80JU8P5zbtoOlFtje2HP1uq1yAEd9s4kPviwjGT6UG2zIul8RLPv3LOt+gpfTjL55NdgRlr088t2TA8wQwNyeTVufbnkBMsPekmElKoDk8lmWVDQMWjxus8EEFwDq04E/ymNpgY9C0wPbsg4YnG5o/z7QmLrf09fCi2cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759453794; c=relaxed/simple;
	bh=80LpFv1rlOqoGY8/9YARyn0NzgOIi9Z9nS3r2PTX0eM=;
	h=To:Subject:From:Message-Id:Date; b=BRgb9g+9zHqFfyoNwBWHogA0u9JGJOtJ3chwL+B9QZflGA8j2Q8AfRxG/SVfGinBh/GuUhpWdGYeio2bv2wujvLLBMqd7e9soCQBqLYZU5adfCNi+9KQqzfQ1e7rafztkI0WUSqjFIdElQCmiYGDTxKJFCZ5OHx8DOARWqMKePM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hUngf7KR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hUngf7KR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18F5C4CEF4
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759453793;
	bh=80LpFv1rlOqoGY8/9YARyn0NzgOIi9Z9nS3r2PTX0eM=;
	h=To:Subject:From:Date:From;
	b=hUngf7KRMGxSgZ5QPfjFkYcAtDf3FgIRCA3SBU0JyvAGC7SG3leY0QrXx7XZI6/cl
	 TsKFYi/AOrhU+wPpWMVH3grXrAak8HZ6zZBv8QllogDNbhSuVXrbo/yHJbxdnSiNWE
	 j36/yNhmvFgN6ZPmymkqN9cxWhoFQ7yhay6t5NlOQip+NvG18X7objLW41LCcFqDua
	 sTlhEt5oblqLJbZcy46hceOhLzc8Exd6wEEG7tTEgNvjj8uDk9shjfT8hSn/Bzhn9X
	 +EsKv9g5mq0o8MmvAWCTvd/Ts+xW/cxKY4Ujtl34WQyzcznjjRqSKbwnZ+6O+A1FSB
	 6zBhg1VcwMn/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD1ACAC5B8
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175945379357.18309.1851727294379432482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d966548483c056cbea4c98f7edabce018b23068d33b84b9657bf1efa48956c85
Date: Fri, 03 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759453793
