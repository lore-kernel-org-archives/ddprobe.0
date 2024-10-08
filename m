Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE511DF73A
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728400553; cv=none; b=pE9A6D3nxYiX+mC7Q7tR3BeA2A8E7Rz5DnDVNpDPEbxCvsQAZ3hWwBgMT4agdvr6FNjSEUQS9XNtw9gWktfgKv4BuuqrMFs9yIgjwNvxccZTTPyeTQlxf+G1yjB5qzUwM0BHXAdJ+h17vJp7cZ+2GCZEJj/AqkyF9owQ68vmLXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728400553; c=relaxed/simple;
	bh=3+EJnkVDzPZ4JyGDNZNOsNMlf6SKi4XLIrUNHZrjW7s=;
	h=To:Subject:From:Message-Id:Date; b=btpGzuBC1LXHIF+dj9KNOvvqam1Qagl+K9/nDva/WC8x/eEO0bzTt4BaMfadcpJL5rDn+OrbPvf7PVY2NPrsmiYfgCaI93JB2F65rxQY85tjjSBOz/U5XwJt5DQuQlmvXJCl/KuB2AIOTWOg9V1EPDSFdNfk5XvVytKa1huz67I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6qPbejy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6qPbejy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6203C55DEF
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728400553;
	bh=3+EJnkVDzPZ4JyGDNZNOsNMlf6SKi4XLIrUNHZrjW7s=;
	h=To:Subject:From:Date:From;
	b=H6qPbejymousFXjl8iuPozsLI8cl24EGCpVznC0kaS5RBIMOF7HdNx2PVN7niX4cf
	 2GmctFyPFetcUeZkW6gfUoqfG1fvIGf34B4QyFzF52HN/iv2/MLPCNcwRNht6qBbhm
	 dMKw9EXB0o8uVqVqtTtMzpLWKozMaVrqZfEM5b7wj/OAMLaEvIcdLK52BohB8HptTb
	 isv+mF/Xei15QOLhQmq2YXbxZM7hqXhnAaNP9LZbwGhtxNRC83Ea8HI3Mq26QXGzy5
	 AuDSOcsc0FFaaqbux/ch5o0dHbGa865qbkjjNREfXtRgWdOStw6nWIB4b94KYKE/1y
	 74uPUkFMavJpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95102CEFC21
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172840055360.25368.7316118233320177378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4af10255a9333a32cb0feebc429db3da0f3378c6bb77f3e00a4df3722972f5
Date: Tue, 08 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728400553
