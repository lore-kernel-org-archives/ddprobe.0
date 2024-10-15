Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277B51FC7D1
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729000554; cv=none; b=eWJIBtivAQGsnY7rnD39jfRf0nxRW0j7NdfgcjRig3VLmQuRDWeD08WWAg8eEAVgdw0i7NxEJCKyXYyls9zd2kMT9svWPf5eAei4QaeEveFZ7VVtXyn8+olSe1v2W0IF4IiLxxwzhaxrhF3fdMHkVlWSllyTVWyY14IW3w9rWm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729000554; c=relaxed/simple;
	bh=3uriUZng00VTZrRJIXx2iBdCh+zLX2csK2ceICQDEOM=;
	h=To:Subject:From:Message-Id:Date; b=uLlkdo2DLm8jGHMhQGUnEyzxHROXO5pcgQye8qrX9+O68XWdnJiATZRxF+t9MwiEg3cDbAWGpOu3VIwsdCH/NVphf+gcV1o7Nl5bhI0zC7XfCeo0FI37gueYzp2fAIvrtjNgfBEsKqUVMEnPX8AT58YNdnTATR0Lf/z/ThkxLqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=URRFCX4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="URRFCX4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBFDC4CEC6
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729000553;
	bh=3uriUZng00VTZrRJIXx2iBdCh+zLX2csK2ceICQDEOM=;
	h=To:Subject:From:Date:From;
	b=URRFCX4LyDq8RFfOrdGVDhFF9U9cQjJPQacL9Aub81ZmAMT2OnNnkoceuMhdxCZ0u
	 1FlVLTktS/LpFB/zVult+XYXlVJRQzAxG7KE73HrUzDTXj9im9LMbWcRTUCHzyNcy6
	 35YTX1bO4gGHhU24KJwZuEqiU9FYR4SAEA/59LPf14AoPzCIDy9iPDq9udY3k1c7R7
	 UvFIWzwoMj2zBtT6NWZ9HXsr0ELaMBJxN3+cG8ogZRVlkM+uMnrJg3bvJ/n+THHkhQ
	 PvhRZ+KbKUTxXnnx+B7eGjWhoSj40wlTLGmWyoOQTyjVqVhzEel6o1Vus6SrmP++7o
	 +smyVhUgZrB7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC64D216A7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172900055363.14742.2382092280735501130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf3540d02e20a8c46fd7091f5ee43921e2a09fe73ca0502caf55133fbf3a3c9
Date: Tue, 15 Oct 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729000553
