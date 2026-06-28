Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B0A2D592C
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782671314; cv=none; b=ADeugx+oGFgbYuqrkj4bdSPb4etzl4xLDED7FM8+sA7dxic94Y4LozZBa5tQMxPs2AUfPcuNukZ5sP0wWHA6Fg5xMe3clERHJHyt/zT9rXDMh3Os6PR7AFWWRur1WGqewySFKKsu9sDZ20cG735pdOXJIN8pdGTXOPzAuvTeWUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782671314; c=relaxed/simple;
	bh=tYknvpLCGUE0r+F/HHpJVqg65D3zxuXB1yTxC8cwVzs=;
	h=To:Subject:From:Message-Id:Date; b=UT2YhP/1mJRsuM73DdgXF7V0s5HTfuyH1qbYPm0NteOlMueHVKSJt5BfFk6m1ERWSZY5wvDJdQ2L3UiEgNM+iFyqANc7kBqO1kZ5pN7jSOi7ZO4OrJ0XbYT2n5LmPzLUvP3dk4O24xqnL2R9OhfChSfGFBwQAa6hAKrJvEueLmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qopOQ7tv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qopOQ7tv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6060C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782671313;
	bh=tYknvpLCGUE0r+F/HHpJVqg65D3zxuXB1yTxC8cwVzs=;
	h=To:Subject:From:Date:From;
	b=qopOQ7tvnHR5DL4TjFHawNILYwLNBYtYeC4BehxmodjCZvL3BYuT1QhZW3viJ+enC
	 FfjvOPhpv5BKo87t8uPkvlS6jtBmO6AGrwDPrF2BrDJWSSNxdX2QY3bEgGKQIo4tFg
	 i4hrY3TqTh9TW1iqMwuPajXCTnb2poXyiHxj8leHwFzXs2WnPb4L5yQCIGSP5j3/p0
	 2f9yyn3AUtA0tljl7OhfDo5EIY86BqBVoRV6TSzvLzjANMW2PYDnbe2gFlq2l+BKPS
	 ePOtqhjzZxWz9jNn+wr+rsrw7kQkQRQmrbyrGd9DkksXEj01BD2Igj1PCVliYYC4VG
	 ojV9sEeS90uhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA40FC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267131373.3681.2738996332316391920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26def0c7aeadfe11ac8312fe0b3f451a4b059f139d984fe36ed14ecbdabd2f87
Date: Sun, 28 Jun 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782671313
