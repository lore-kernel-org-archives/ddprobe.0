Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC241D63FB
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760168394; cv=none; b=B9IOg21yaBKiuQDk2mXUZN7ON2gXFFf2JWLVzrPRdNA2ooSfQB79ry58T6OgsOYhj3K3VNgSy9rBPHjCrzBVmQHmY0ZzVZEYA+15SCOa+MAtVaTZGtYlMJisXXUVyi1TY4H7bSQQbBKrM/KBRYfHS+1Gnrb8vEIw5XEueWarOz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760168394; c=relaxed/simple;
	bh=CZGIwtEyhZ5bP77JfzGNXp+VL85g7xDZQdARtOxUtUo=;
	h=To:Subject:From:Message-Id:Date; b=LTN73Iohnoia/9L6kuEWtVnXBuRwdn2pj9n98FqDgC/1fZIvwrhsM5eUqWDBbceae2grpxWnw8aJkOS99t0NEicQqzYdZ+R1+hxtUyxYY+9Gfxgl6DhMLqxBO7Oxde8FenAdTDJSOtYmQrXNn7NLzvLQzkyFSVlWsw51IGJFwg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmj3Q56S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmj3Q56S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23EBC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760168393;
	bh=CZGIwtEyhZ5bP77JfzGNXp+VL85g7xDZQdARtOxUtUo=;
	h=To:Subject:From:Date:From;
	b=lmj3Q56SBsn4RqADtaWobY7X51TLXDTm8rn5sz0aX7c3H1a3ahKTAhDQ7pwR24Hl+
	 8t7JwwBI/4IAiMf7kcW3fNLmJNHcgal/58JPjaWS9wo4bjBWxZ9txr7t2GzUd9Ignq
	 svF0Y5NrnE5kVa8ndRmhUI4+Um3Ja5tx7UUG/ykz7h8PprJlxpfU/qnT3xIuQ8tUUY
	 1EoDoeerVhRuIyYtlVFwxuzyc6Zwc0kn1M0dc+QWPaJyRAH4j7it8BSoqav0tTeLuM
	 7xFClx7Ggfang/DIU2Z8jYICkJUfKXiFCe6/Uq7a5BrrZWKSIEDlm/+liVZ/YwWT2n
	 3CX92wsHKofvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD15CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016839358.26087.7299369091585964636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02c97f0ff9b446c1d2123fe907f08e5d5025996aa2cff81427ece50a55504834
Date: Sat, 11 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760168393
