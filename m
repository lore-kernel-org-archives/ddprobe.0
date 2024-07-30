Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227164683
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722303954; cv=none; b=dFkbyZxiGVfIrHh9P0ATmHKDepXl3nW35pmkovMj74aDx6rQygHTs1qV0RQp6ijdqyUUAQfMmWaXSvRe6BalTvNe40T6cUYJzjZMvY7T3x4+j8Gw5j3vgTFdq6uXB7rvXUDJLjyZb08nhMmnvWnUfTwDpsNpnJ3W3Nz5/5tmamU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722303954; c=relaxed/simple;
	bh=+gw8iUyBBOfyitqwCTC4d78ZuQ7hweufzVcplSjMnQk=;
	h=To:Subject:From:Message-Id:Date; b=ROb1Rjn1CzL6H/wN/SkjafYfCpfvKigCuSlJKxikZYM44XNNunJ+JWRgjwPOrgs7rkQK9FzB4HmbOUmSzKPitxJJBJ8ytonC8fIeUBRIyLttjDYtirQ/uJhnaemBQbs1S9vd8OQiC6nFmGsYvd+nWgoyrjPoElN4Au9U2fk6eQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfN604S8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfN604S8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35B2C32786
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722303953;
	bh=+gw8iUyBBOfyitqwCTC4d78ZuQ7hweufzVcplSjMnQk=;
	h=To:Subject:From:Date:From;
	b=EfN604S8HBW+bDrL9NQVC5xnP2ah2vnTFxh/kM+AUJwhqORYmIdW9RAJwgI80/6Ls
	 Rm44frq7gRV/iby6yDCbjGOUtkPhRSahVQyv6TfYJ1abjCOJ6P7z6eP1ONmkcDHp6q
	 /SBrwe4UW4t9h1adgpXEP0D2MkjFtCawgavKEdv1Sj5ftrd9RWg7HmfFR7pBTuvlly
	 YZWimi6LRhTgQ3FLwBxwdpzPVD4j+T07TsByDcttNHU2I/GzgjYm+062km/clom7JC
	 cQ89B4IZeFAFi6p/32hkbkGbmYXStEmU9++eEOPkFDQvRsDwvAdBZfANm0GzMhejtg
	 eP9N9+OOJGUKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F808C3DA4A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172230395357.25983.805713987802698798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5182e39b32bf34ee021e7edf1746d0e5880f3ebb36ccbfedc5f7e36784b7e93
Date: Tue, 30 Jul 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722303953
