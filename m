Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C849274B51
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765167774; cv=none; b=PyT+YNQnDn8hCGyz+Pvz8Ple2pl8i9KE+SQ2yW7/3ywoG+l8umBFNMzbLL9AFlCsNleyXmYfcbixremPyWmjQ6FdrNPrhzu3bw5KlEzUczjQP2wxncaCqkKVmPMJju4gKy10BOm66ekjFJ0OFt96ZOGZKJ1q8ihMoFE82cAY9dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765167774; c=relaxed/simple;
	bh=vUjIIS2ScGXUpvOZBqRlfCSyifr8g7bRI/mHGdhk1v8=;
	h=To:Subject:From:Message-Id:Date; b=tOToejOaQP6qqqmh/N0wg1qBiaoO0Bow7BJ2mvlM5Rogn9odPD/IHUq/vGSLRVlzSMMXSbdYUjLp/zHxNeCKA5kKcgcGbXjz+xYJQuv2t989upOdqHrEbTljyNvEPQHsXpKjMeSd8OJ+SVS2Y2syR1kbiNbG2A6SgIjqvHRaPMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oppFBCw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oppFBCw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB84EC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765167773;
	bh=vUjIIS2ScGXUpvOZBqRlfCSyifr8g7bRI/mHGdhk1v8=;
	h=To:Subject:From:Date:From;
	b=oppFBCw/+aZsrJj/osbfP6VQBl5dkHXniILT1CmbzKqVjeSQKvOg6ipq3CHM0R3bC
	 XUKvCOG5Lugi135mQB9LRUL06r9jpYz6kBk1DSqTUsXo2+fiDjnxXERQXfp2DUhHuN
	 qPNH4sIIX8UtVbY1htfWJrXkApKvndEhx1v0hlivdbJ76F9E4paq1x88p4RPZLJTJV
	 pzfMNtbIWacVYCNi3fS0YxddysM0wJM1Q3PndGaqLhkOqYWKmeXOVM8ymBgf0Md44v
	 09NBFUAZb2vAzfyro3NAg4QFJ5BAcR3+UDou8HyP5BU5ZBF93pl/KHgIQ7dvASS5Bn
	 0QHnJwR4NyKTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BB2CEBF88
	for <ddprobe@lists.linux.dev>; Mon,  8 Dec 2025 04:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176516777358.27487.10897446428219211164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0682119646c548fa5eb0d09dc5ba55a433cdc1775f94bac792eccb91bd9f44af
Date: Mon, 08 Dec 2025 04:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765167773
