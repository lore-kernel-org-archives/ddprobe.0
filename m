Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DE97107A0
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724195754; cv=none; b=PQPrrPoPCwkwoQ7lPJ0TRj5nKFL9ZnAAxkVKfoktdGsmuplSRvhWK5SETPEUDKhkQNKjL0lnA1DbfZhOLZHyak+633p4lULV1sSD+wJJN568KK9H9O4CqgoJqMLZkmqpJtFZA0pMGiAEPvKE2omDkRle+yghli3O6KxI2pet+nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724195754; c=relaxed/simple;
	bh=P2rt4jGjwcDa69s10EeIcF+usZX6699i1eR0kPkzTt4=;
	h=To:Subject:From:Message-Id:Date; b=pI9l4FK8uHMUSk1hHYrZQvlADDPfdjCwsxqdiUsOVq36KjjA18/UdUPeb9qqyWpjtFks6no1gtBcNIUJ53Xga8Im0CciyysTIEWaUPLKdnPG/svifEk9Q013TpBT/eI2GKwvAypgi57AZBkToTjx8lFt+vw8rRCEKh9lmMN9ERk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OnEmQZui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OnEmQZui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA85C4AF53
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724195753;
	bh=P2rt4jGjwcDa69s10EeIcF+usZX6699i1eR0kPkzTt4=;
	h=To:Subject:From:Date:From;
	b=OnEmQZui1RjeEltigtJZSJVPGTPdVG7I0CuE8DjeZ81kbqZypfexV6clGpq3lWPpI
	 AM57k+kPtQPi+Lr+35TEca2WrImQBRzWAkbUg8QHXRTFcOUSvN3G0K10US3VxauFN2
	 Q1T6geTeAfKMUEuSStAreHW4bKZbUmVDSUouVrsHp3XQCgvWXYdoWA0lbwEI/UlxEx
	 WBp5pTvDdhp6g1EbzlxsXvDooKO1HNDdwoirKVYAjSa0iA3aFLLvaeZwRwLoigaOfQ
	 M4X+d3kFKWkf6jL4xGctpwBIFzJZTMgS5+NCveCIiZNLQXEQorbqWEPVofx5A2a0om
	 jrCg8aBXgJ9/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2512C5320E
	for <ddprobe@lists.linux.dev>; Tue, 20 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172419575365.31061.8720480001836123232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77065ed481bb6532f29a04d33a7def2e3faa464c01f372fa8750fd7efc4ef157
Date: Tue, 20 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724195753
