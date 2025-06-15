Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3262E11D0
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750027194; cv=none; b=HWBsGMVSQ9qurMWDXUyH4P52WrlGctW3etHbyQM5SnJm7nYyB2PrK6ha1V7RE35Vwgy8OYTAfRDFv9nR275zVp4N+biM5uccHstsaUMdJd6h2yMxJrut0fqTFadIRDKPKTxtDpAzBBatnpz2HfbXwQbQWH2KRDhWhhPjo2gyNE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750027194; c=relaxed/simple;
	bh=m+iNPcogr9v5SB/Svaf4C4KKBPItX/NjSYPb7l3f5ls=;
	h=To:Subject:From:Message-Id:Date; b=N5eHPNvOVW50eQnqNY37M55yPgPKXFTr4YJ3PdM9NS1DLNqWA3zpj4uxYSEqx+RAkA8dkXQW3wJ+5zDj6K+7xuF2OS8qP42mQHze2OBrcSZOt6OCdQ0u5yVHINrBrBY1f2yNdIx1ZCBiJH/fnra6ErSQkJHxnTfo+fC+FsGx+TE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CA5b7KAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CA5b7KAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC58CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750027193;
	bh=m+iNPcogr9v5SB/Svaf4C4KKBPItX/NjSYPb7l3f5ls=;
	h=To:Subject:From:Date:From;
	b=CA5b7KAkIzBfoju5bzKa9cv5LZiFqvEq3yxb0xXa+NcEdEjrflCyVcdaqVlOvWiHA
	 zD4ZQCiYboxfsaL/Aatjr/3pJJjmZ8rjoOfP0QR306go6/rs0N3WGPpE6zd/Nfs6Or
	 BQkGmIOvsrWqxP8RURlmk76mKn5GbdolNJT0O6CTp8C1DF6/49YIhXG8AAm2lD4t7H
	 5Xl9g7kMItFiLvlEvkZ9P3jdPTdD/6CP/0oCQ7+7hMaL0Clsq0JUe7zAVYXiQ8XXhd
	 Tv8lKBH3VpehMhwWZqdegyhwutFTqFQ6/4WZMz4jMckdDeyv9XY6Xmx5lIWPSYXbTJ
	 9l4y20hOlArCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C67C7115A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175002719358.7328.13623205374980888008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9b2789181f09abaefdabc07ba4ef46885599ed4044c520757843ff5a1e5f60e
Date: Sun, 15 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750027193
