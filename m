Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C80663D
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 19:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711222697; cv=none; b=ofIwTurpm2vkbyM4oKZUVPWS/atUijgXCDheuhUAb0CeFFql83tDCJ2R4J5C4XhDE3P67gysD98SljNqRK36z0PEFyE9y/O00COysgHNAY9wubK7dCPEl5A3wZkCcSWTE8ibf/GC7d3fq0ymzsTguNTET/XEr6o2akl7LQJRgu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711222697; c=relaxed/simple;
	bh=NfjlmWFvgeqj72qwLXzyPRwk1rhg8o/Mu7ThgOVtZhY=;
	h=To:Subject:From:Message-Id:Date; b=mAR+oxl/WEPX2Yj4+WQ78G/EQojbupunSYA6Fq8a6OhcWdfEgv0K6cgZdFedvHqzGVotTh2wHx3yIUxo8LXubOv4Pb2mnyTJSwcz6mEJo9xurtAz4w25jwtMiKCd4FRg0AVxlSQkx2FAKyepAgacYFsg0SkbqwIt5LrH4iQXha0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyI4jHFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyI4jHFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92A93C433C7
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 19:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711222696;
	bh=NfjlmWFvgeqj72qwLXzyPRwk1rhg8o/Mu7ThgOVtZhY=;
	h=To:Subject:From:Date:From;
	b=cyI4jHFyAmddGGtQeNY3YPfDeeWZZuUJF8TSZEV23jja8xWEG1ykQZg/WTuwZMbND
	 kWT8fToqEbp/z13yKLmXH7gAEOHCUgc7R2LPG4G+VIof+tW7+0zSKlUT4ubZwkhQtV
	 OM9RyskneT4EAKL6CWKHcvCzHdwAfA29GFobPFMvJYKYekp5bYO6pQ+CiDMqHqCoOe
	 JFX60j6VpaRcNWXRnZecZHo/PXwzuH7TrogLnwrOsdtKi+HZ3OnK/WKdULuLD+92yK
	 iJxlSM1I38FzjASKQP5w0R5fLSWBrW85pGIifeyd/Kzf7svrXjPX8Sd2RTKgqGDLVx
	 l2tPVWYYxSOpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BF44C54E67
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 19:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171122269644.15104.9100486962761322497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81d3e8d457558f8f8a640b928635be4604b7d24855027469d6e7416bf8fcaba6
Date: Sat, 23 Mar 2024 19:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711222696
