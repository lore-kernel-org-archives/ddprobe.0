Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25ADB33A9F7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767966234; cv=none; b=hy08NyQ9Pn2EdqoqKYpXT04+QSC2XyEUTWtWr/k/az1bw3CLKqEhIw2Gykpdg5vg2kWzrEa2Z9DVujWv5qpQxzed6VKRZatO7dK000W3paewmEmcOYkVwMNuAZJjtJeB6Idp1PC2koouutXsT0GVY8i6vne/GfhoB/lS5L4kbLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767966234; c=relaxed/simple;
	bh=vstwU37ICTxkdckL0qvwOAo/rt8TYGj3cftQYTtLh/A=;
	h=To:Subject:From:Message-Id:Date; b=jnaCpNYVXblCGR41LLPxfuriZKZWeM3yn79w996hqNK3rnGksSKE8LcZSH1YeCe10JcqoWgdMpYxgVQkAjBgg6Jh14dZqMAhRVK6GNaFRU7M4kcCV/Pm7e5V4Sl3A0UpUFQ3Yk4QheE4lJQe9ktuhql92dPM7qHeQ6Yo3ADHUdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgcsJhmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgcsJhmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE77C16AAE
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767966233;
	bh=vstwU37ICTxkdckL0qvwOAo/rt8TYGj3cftQYTtLh/A=;
	h=To:Subject:From:Date:From;
	b=BgcsJhmOdGVs7diGp9qXYsEtR8YDg+ajKHkFd3HRp2D55eWBa06sdy2+gwLg35zip
	 GfxIlzK08vUpLP3Z8t7HtUcvthVvhqJdGng8C6j/8aIWfxizbaoMyq2jPpYEoKx3Hy
	 UqcKA/F9DDEIBH5PUGbdsy5sk7M4/Na7fJfhZFWKV7pQm6H/0kMhv81CuwjrC7sqrr
	 DnaqcrIuwFZV2Pfy9WD751glNIbkFnk9LZeOm9mVyBDwJbyDpHTJGU52pOxzTolzoL
	 dbE34/UcViPULCDYjZ9LE59lmwvOUlWlo5eeFkUxrfnRsFM6T+zMuQBeb8otBk1Ezm
	 yvmAPc5CkUezg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46CD1A627
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176796623357.22550.3936709383590045882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85947f22e4b50fd309c79835f138526abe62d4ad3b80f4c4f498fcb5083af356
Date: Fri, 09 Jan 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767966233
