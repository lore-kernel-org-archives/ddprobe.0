Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3177013A3F7
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759108794; cv=none; b=cIXZeMStP9qrh1kIxGcMBo98TCEhPCdN5TyAs3+nAf7hHLCT3SCGY9dLCRWeDfb3YzHQgTn+EaJzkGZI3hQ4nY31RkVgtZwXodmKMB+ELLXAfv5Meo+0n2zfXQSLMMmj2lkcYsae1hgBwMaBuPkw4J4SHxZ+mxZg0amv/09hxhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759108794; c=relaxed/simple;
	bh=SFzU8MhRuiz+6qIldSPBugZNjai4oP8mR0ggJyWypAQ=;
	h=To:Subject:From:Message-Id:Date; b=jOTq7YnVQYL0RkMf8Rbb/lkoN4BLvMZfRxNPbNHXUSpT3D/GYesmALxJ3IQm9i8wv3qJ64kd7VoEWYtWLqUS5l9eQE9N5t88tq0fBC4aHXkZh4kbTZ4XFYNzU4O4dklh2CqnjZ0HtHBc4A1UjaReXFqLC0g1M38w1iUMe0ReCTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuVqC4tW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuVqC4tW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CDAC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759108793;
	bh=SFzU8MhRuiz+6qIldSPBugZNjai4oP8mR0ggJyWypAQ=;
	h=To:Subject:From:Date:From;
	b=WuVqC4tWYDj8AhL6l4BBOGgxLEiVY+mnnQA8fRYjPr/3uzu0n2lS7sI8oc6cPz/6J
	 QrLrLCDbE2+Tzp+tX89Xj0Xn0uR7u/D9I3caGsExgFepBN4nhgpdbTW0d9AVoLWUv6
	 Q4UhgMxcCykaxKi8nLv1I+heh8n96IklM7uQcYPZJLwZNgTtvuegtkaLgWLn2P2/Kh
	 wh8WY/nDcz0x0l8ul5Y2UmN57XTIsZugp35cAvsinpp+InbG2G4dXMucq8xg00zfum
	 jWHJXV7nfYh5yj2jxhIJl5tijpfGAYSkL5EfBE6kEy0+sAQ213lkrP+eeDhCKVQMTV
	 izQb0QN9YuLKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9081BCAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910879358.11237.16965445772377532337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c078dafdfdeabdd697a911eb788b6dacbfaebbf0d0dc4de182a8f063c0b9b296
Date: Mon, 29 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759108793
