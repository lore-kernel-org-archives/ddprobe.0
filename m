Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3143C1DC994
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759284594; cv=none; b=UtwX0HsPx4r5sTao4uTmjZxRDp5nww70kQsQ+W9BlELZBI0rIX7GUlEvy2+Q8moTsgbM+lr7WwTb6ZehBBhjfgeWCw0zkeaaPvxwLob2kGcxs7MUKdbXsHssUNscqVjc+eYbhh6uSlIi46lPKubfHjFXisjE5yy7KSw8YlVJI5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759284594; c=relaxed/simple;
	bh=v3yWmYKkTsewymO0xwFnhtxTE8GfqeXsWZNNH30PFSI=;
	h=To:Subject:From:Message-Id:Date; b=BqlK82gmEI22I3Itgcuinre/mcAK04lCr4Gu/+sitQIuhMwikMbzKXM0R0VnDokSjiBke4hehSjKfXmFhm7K82ns3MCjh8js2k3qa1GkErxZui3NXIbL8g2lXfXxt+RwRw1aCxMIPzoBl2qK+EMIXS99aGVdFl3IoxM7E0534Xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7VtUP1m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7VtUP1m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79ECC113D0
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759284593;
	bh=v3yWmYKkTsewymO0xwFnhtxTE8GfqeXsWZNNH30PFSI=;
	h=To:Subject:From:Date:From;
	b=j7VtUP1meJ3m6RWmoN8VRuXTKNtl0yXfPiN2vpKkdK3PLsWzBUUwOwZ7TiOGhvWep
	 9NqRMvNNKvNsu9YzcVT22VW27UTg5KVd24gjUYRen8HuY1ZLLyVDOPYh/OsGP2R9RI
	 QPdYz4QwpezSh13mkNpglmypvVohTWEPhkfgq8ogvx7xItT7nlw7XY0pRvZtgBoi4s
	 8qWso3rHH0Qe/0MVdSJFZDOYkYrW4mRRYvVc1AapE3Z25ll7eZxB5mHUq8sGTIKSDS
	 8cJ5bYO1sMTycoKRLPyV9yXbTp7s/tw89ry1neg8W+iNvYHnflviNLvHGLHvIx8rng
	 +wUPfkjGCjieA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95286CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175928459357.29799.120127136357226860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93032d4e4b7afb54bdd1ed1069c5cb6724cbf91225e1aa676799f1b6140bb883
Date: Wed, 01 Oct 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759284593
