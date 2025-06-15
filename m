Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA96257D
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749956394; cv=none; b=XCcZ7hg/LL4LTcWOmKOqzTW0peuL5+44/olpgMhuTrS7XiCA+B8clcYgUIqk2jUBX69ixylPt73YoEgEylteQHspee8HRHyBelKdj1w9FhWj9lQjx0WHjjYeQf3mTmPcf/+zUKjIKOd3S4GW81fA3t3asGIuT10jLq8IG6lVUyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749956394; c=relaxed/simple;
	bh=UQ8WAwwaZlqhps93PpqKL6V+A9hJL+xofrde0qscbxU=;
	h=To:Subject:From:Message-Id:Date; b=qNERCEMsoSsLhrExwQyDxNCH3nCp8qTLYfw7OTuwQEoFDwTsW0spmxm51NrbCaUeO1UYVlxmgFgxERJhX+nf0LSZPeLYV/Ov5QmdYPX0eogO43hBgx6EY+YhOjDOPYNlswwx7usodeHG6L05va1M9oMdxB3NXGX3AtzJiERI7D4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzNe7HLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WzNe7HLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D40C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749956393;
	bh=UQ8WAwwaZlqhps93PpqKL6V+A9hJL+xofrde0qscbxU=;
	h=To:Subject:From:Date:From;
	b=WzNe7HLdh1MlKnMj/iT8vmuxnOQcMr9+wW9mrTbWEwNp3KgvdL0e200FIW8Kavr6U
	 DOJWO1jzIHAuLmrD/arjAUG5LmfkdBwOgmGFYbK9W6mCxIwguGEel7R7ZszVyncoki
	 UhwEwMtRI6vu+4ddDHm1OINjVJD/3pOQvXaoSAQn0B9nuOgU/h52Dx5L3klVmcbJEJ
	 K0ieA57043ANMGOZxaHywqBXpEolOlVWbSebOo4anFaJig0KBCUaF7h7UWpeuDZdyc
	 u6Py1I8olqjBZ0ZrK9p//q/dVW7oWfSdBw/VHg28yX6ikjbVRImmR0yWJNeU789wyZ
	 MQ55pXkccv0JA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA18C71135
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995639357.29080.9277082286845332641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff1b6366b62b13bff6d62399c27b1d9d89d9733f21293d5ee3b9616e3a7803a
Date: Sun, 15 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749956393
