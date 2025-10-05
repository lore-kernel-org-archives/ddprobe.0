Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24728275B01
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759670994; cv=none; b=YD33w1kDqFnih0RDdcGAvTs7dIOYH2Q2pk2aZI7o6Mui05OcorivLNZY4tXs24by+yG9G+Q4A+DVQVIOntQgSwGZkwYy5c9U0jiU0W5twvHuNa4hwnrublZaXXTacJi748C4e2aQFNLJ6eePLVa8iBbAg8+no9gsQevo0CRnH2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759670994; c=relaxed/simple;
	bh=yXBS5cz92yJLSluh8fmyB1BBl1nh5PVVg37AhHvukE8=;
	h=To:Subject:From:Message-Id:Date; b=FfD6cpOfGd3ESiQhMx3/FESJqHDc1kaXx63tq1B8bTdERFmZU8zbWDu6zSavzYPK2iNjSC5ky4LdxI19nMTRb84AmV0Xcc/fLk3aaBgfnba/5GEVkiUhO1Sr7+zjbBycWLWckBGCOytSAZxKXEy7e8qV1nmmMRlJ8PN+7eUgqXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hRvBjC2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hRvBjC2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62D6C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759670993;
	bh=yXBS5cz92yJLSluh8fmyB1BBl1nh5PVVg37AhHvukE8=;
	h=To:Subject:From:Date:From;
	b=hRvBjC2MSL2ao6TerT4hipdm8tRorpJq9/TjN9cV6dZKXOuDskPc3XCyTwti/BFi3
	 QufBfjSvGoHqN/aY3NlYjOIAkYrxxXTjpYo5Q0r03m+RaU4C/tO8mzD/aYiDHdJzZP
	 ZY08t8zWCwRPjLo6A8FOQ79pBN7wUZLTiYXrVL5wrQzgxZ4leCKK/41WCDZMcZxsJP
	 LKccgP4NuoDx5XbexoA7rOhcZ5WNFbElZ9XlpjCd1UfAJm1NFGo+bGFSgq0JtS+srb
	 eTMe+IboKilxg3nQKVyGSRZ7mk6cmLA+jpTsMPhQRVluF3DL6VEnYQJabzr38NcaGp
	 B0lO+py/kS/BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B43CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175967099357.32676.15419491511121127918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e24e29be40aef9b09d27b898d2bb1d685f537099bf83efc753c2d1a08ad3036e
Date: Sun, 05 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759670993
