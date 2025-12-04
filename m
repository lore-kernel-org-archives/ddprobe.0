Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C51AC281504
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764842573; cv=none; b=n8Z9u7WbsgMws8vCH7ROq69W5ZlEqahTne/l7GrCIKZzpqw9Cj4DhhTBlY1Nfd//+HsyQruTY5zSfk5douSpeuwXzr/KeSCeytaNP17DN36+dQBv365BTqvr86gDhY//MNfHpY6PDZwJs+akcSYzYj/Dt9Nrop2tK8IlcJK+aXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764842573; c=relaxed/simple;
	bh=G88P1EMJ8ggS3v08JG7ko4wmU4MD8BuhzSd8iCgePcY=;
	h=To:Subject:From:Message-Id:Date; b=pkm9bSXwma0/LN+IKDfr83y7OLINsgCPrBWP1qcX2aUTgbAFXXi9ycTxR4zBRKH/f+IaLE/Zz9xs3OC9bhOanglguknllE8bO5VmBZNk7J1SVKcz5A1uD/ksAHClBy8Twp8eR9sk2lVAv9RKAhUERixvlpVENKbHDZz7ry728aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlQyYb/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlQyYb/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BEDC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764842573;
	bh=G88P1EMJ8ggS3v08JG7ko4wmU4MD8BuhzSd8iCgePcY=;
	h=To:Subject:From:Date:From;
	b=BlQyYb/DzWT8jaw0Ywc9ZmUYXEc7bsXTCrAFpxFQhRvpudJeEW+uhDscfpyOcN/lo
	 hdxT2yGuF8Kma+FEsHgAunF9yv2aqKy5Gfdh3IFFGPiVXqbNNe2qLJBVHioHAHUSI0
	 SH3rZzG+ZJOQlOHqVkMgobyMIBdhz0zq0jFDjM4mG10qcrjYSwm7T9FG/yRWnDYyqv
	 pkaEQn6+V2HtGVcE2/dnUzxOM4qmMinfIfnfWhDvjygydZ6OfiAps8HFxugo9A9wFK
	 DycL5GGGMST4NeGdl6Dzq0lXeFODvG7QdkXQhm3AtO69p2nYnh+4spaRoYcATP8dcy
	 B+OlruTC+/CaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95724D1F9A0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176484257360.1512.16752403826061985457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 037238b8d81aa778d28ee7bc323f69cd61b6e402a2b8159a6ad0240313c14a4c
Date: Thu, 04 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764842573
