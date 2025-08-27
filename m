Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1C21C700D
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756261195; cv=none; b=WBzX0nCbhTwrx1PFTHTAt91CEb51OL9Pi8dWDd/4PSREfcTFeLnzRlPv8+5MRzApcKD8/wesUJRVihkgp2fvaaWvtZFiQ6qsfPHuZRC4C1uRxd8m3sqGlqrMtERQy9uTsrLsCXz1EWF6JLikLN6VNIcBL+umzmTBGpLyblnrlZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756261195; c=relaxed/simple;
	bh=n81JjfRZnlKC6JP3nf4J4dPGs5hYqmUmaFnwEJes2pg=;
	h=To:Subject:From:Message-Id:Date; b=q0YquGqus/L6wksCLfKAkjJzfB9K7Z7/bsyfhY/zA0FSB7DOfyJJ9ITAukcJKs1EomcU+SgBFs5vN0CFS40ZYLYDZibKJ7wfp7npn7vwhYkGMLXKSCTZsGESTmcmWsRV1I6eSZfH/zisYQnyj1jIkSCSX+faLZaZos0ORiPp+1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5sQgR6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5sQgR6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F524C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756261193;
	bh=n81JjfRZnlKC6JP3nf4J4dPGs5hYqmUmaFnwEJes2pg=;
	h=To:Subject:From:Date:From;
	b=b5sQgR6lLJeWhKgJgKZQ90155cJo8K5perkIQoxxEZeootH2p8gCNh2voQopDAjiR
	 6FXPUzJNuFiweu0SSNh0bM/EqjtYQWZnc2N1UDJo9O3v5jDKZcTL2YFfQef7CE2l1N
	 tJ3xpfd5zgvKVKRl45DvZoJZGQp3/3pVfJz9VHOwGOZZnkffdQe4L64TekqVjSrW2c
	 20zq6DabxQf8WLyJuTGenqgYkPB50+WLmGmhEXQp6hyjDH+PZ7YqkDvoBnO8GX1BTE
	 yhq/C9HRhPnH7pIB2ua/76wbz/XpFr5JL5yZhpdgd2jePx/jcgIk308y9bcJS5G+No
	 5eL14J8f44SgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5A5CA0FF0
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175626119357.14135.2472933459480459682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1594c68018d5ff6b3a71ddbe8fcba7d3e6be391a30a875f01376058d95bd4c1
Date: Wed, 27 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756261193
