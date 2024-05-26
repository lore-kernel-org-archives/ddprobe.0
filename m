Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B6B8BEE
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716710063; cv=none; b=hwaNAty29v7W1pjuqqrXKonvXpsAWS4KFhF5IoZ9WkiJM1gpBBTxEOlgXZnt9tUVVs019QtD+tIVlW1hBwX9g+TXdSq7keMhRxLkJYzgdRA7SzUo8p88fg+20tbSPjCrY0edjT2kKZwlEsWD0KGNlKp13UrByFJoUm9VIvr+Vok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716710063; c=relaxed/simple;
	bh=6RwvYGzLB9oDuGxEMcVKHnNDgefJR82YC5JUmZYtRZ8=;
	h=To:Subject:From:Message-Id:Date; b=j7h4P3U8G7JlnoaEt0OvwFuRW6y+DZ0LS0nrzHvHtt3NboqwC8Al6sRfLJPGzBUF+IvqEbACxJOxdiQ0fCkLgoibtXvDRIkffmrLmqhMxdbw9bJ+k01aYqsYW0VGJOolBlkG0qAFQLDs2KWf+vRGgd1t+0FjWngwf6h56vW6Guk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HD+BNNu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HD+BNNu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3760C32781
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716710062;
	bh=6RwvYGzLB9oDuGxEMcVKHnNDgefJR82YC5JUmZYtRZ8=;
	h=To:Subject:From:Date:From;
	b=HD+BNNu1EqfvZ8tmR11ICjjqGysK7YBUvPkfjlgGfdn0jMWyKJuSgKp8ZbzZmTRG9
	 L7drtZin3IlSVyumRU0yKOpGgSPOrl96WEyn3Owz1REb2QRDkhnQnl5m16YHpu0Ci1
	 gTFvRsPphI7LBKpEel1r6X2HaLYVmQnYo/eCl9/kGoCmWcVaA/donD7HunkgKZqPf3
	 ZuqCf5zdhn2j1Y0f3vX5nitaZJLsiV/u/9XY2RkeEFojgRvBDCJNkwa2jHAdABywab
	 c+Zg+GsOhMH/gzZheOc3tNF57IarW/yL/rTLNMfYc37MebCQUonFLGYlZl28pFx8Nw
	 hlbywweOe0CXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE97DC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 07:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171671006276.6677.4431573610634433393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace87ed9e6d240a88c2b340550be62b20982b87dfffd1ca7d79758b1145124af
Date: Sun, 26 May 2024 07:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716710062
