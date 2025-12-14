Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A202224AED
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765693974; cv=none; b=evKI2gqbO7tHUPmvCUZI5QtDWyminvDufxeD4EbrVD0mg2+I27cSQAEt+1XylUxkm3BwfxEdpozeyCaoQc5bvkU4iVg+tiREPxHo4LV5Awcr0vvWqkm3gvlUVZB/coUu859ojyywMGxSnEt8kivlnL0YIQNhvUXXOQd5uKPhJA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765693974; c=relaxed/simple;
	bh=1jbysBfgpJRKBzEboddQ2DkxWk/HLXslKd34aGgk9Xk=;
	h=To:Subject:From:Message-Id:Date; b=no8HcM/fIo8iFw0KMR5mNkEYFoTagx8teUz+fHz/o4k7edoeyoEaYbSmmABbIjmd9Z3BB+ZVvQ/24LTlEu1ojNjIZdC4lYS/77iBPRLnawn66uMMoaHzn32Z+/jAhYDty6kXTdVbw8IHG9hCZiB1v0E8aDtchVTLw/MVFC8LR5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=owF82tpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="owF82tpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC54C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765693973;
	bh=1jbysBfgpJRKBzEboddQ2DkxWk/HLXslKd34aGgk9Xk=;
	h=To:Subject:From:Date:From;
	b=owF82tpUKU9kCWdMlXNbMFFSMkyE7kFmOnH5Xu/oRTJPZ7BqCz6vDTD88JO6+oHzJ
	 omVArGJcA1EDmr6ZuhK9Hfd8LnVdaO39Wsxljj/pxgW428mOzaMKlSw1cjxFpKKaFu
	 8HJvAHvD78Wl7T+oYKcLkaev0l7lDOq/inwqYbo4GNslo6V7zTbUPinPzKsWi4IlEK
	 ffw1rvI6mWbMfoA18BisqeIy8T/YE2G2X71TobKG91X0VfEj3xjHfTYXqTR9iMxcHU
	 cmPNuwj+AE+chiLBaPEoxVFwf8pA0oBLKtvu1L3sdlQ+JMsOl0fgZI/pvlAkYlOdNr
	 ltHUZNR7a82RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E3AD3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569397358.25791.10283702158129382966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca06ebe99188c5e66dbf5fef863b369df3c3176e596a36820b54b2feb268bd57
Date: Sun, 14 Dec 2025 06:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765693973
