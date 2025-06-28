Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4CA1A257D
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751154595; cv=none; b=VHCNQnGQ5jIXFBZR7aapQ8wzsXbnydG6A3VTvaZhkn4h7FtXmWP/ogXKytLZJSUOa8b35joXl9bvP0Y7OHdvY1GIudsGGjvodtzSjxopS+4iqqrlUzNtxpSMVjlth4khooU4+z4YRkRLd0TeOeAzRYdDiJSlAQe+m1pZXIlSD6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751154595; c=relaxed/simple;
	bh=gr+MVyEFjVFTsroiu01aU42FHshJ44ZtT8Em7dkwtOc=;
	h=To:Subject:From:Message-Id:Date; b=rFnU7bMqiy3NCdRGrqa6i+W6s2q3ANjrIgqDEU/D8WWSHYAWZWskvTR6YEpdTHrbGbn7sK+4sBuJEtdFD7RiHKrZsoepiy34ap9bEPunOq23HsgM3en8D+tz2U2NSqu/HSwW1OYkvIHfv1TF1IL0EWez7hyZkXVpc9Fd5+CfCKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6l7fzHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6l7fzHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4939C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751154593;
	bh=gr+MVyEFjVFTsroiu01aU42FHshJ44ZtT8Em7dkwtOc=;
	h=To:Subject:From:Date:From;
	b=e6l7fzHBAIhchko8WOnHo1e4yyXExRrVKMnz7c1+MHdceM4UI0VFvCpjYD2lRD3wV
	 BRVPxvRpJjUHcMyBJRckjlh4J/ArtEddkdv/Tz9ldp/VONwhBuoPV4ZOfS41NP8k6d
	 ly6Q1QRXTr0SgCZQd9bNxw46JoW9IYgKCO/BiJwoJoFV52maOOuS0W+vU7xDfgQeL5
	 DD6wKx1Nqmpegxim3IEk3EtmUeJK716gmBbZ91B93PGMw88FtCmC+MAltAVg6ioKa/
	 vegqlcSUNuX6E2mz6YvMELLxZ6AqE6mwt2WDgYK2OIYrYE631+Y61QtgqmWKI7RQhu
	 60NFTI2Vvut5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92381C83013
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175115459357.27407.14868622163206755696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92bffd9cc5e1fdec39fe7132fb24ef8370787f05a78ca943e70e0bcc1f3c0e93
Date: Sat, 28 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751154593
