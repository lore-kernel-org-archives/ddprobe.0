Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2B8A18DF6E
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731710153; cv=none; b=kK7zHYIpBkK7eVpMWLKVtGHPCLwunaNeg+bKCCBO40KUj4p4UuHVH6OHkNmWdHLNR8DLYhpTcSVkpStzwFz9Qj3jmn4G/7UUNgNbVnNBXiwv2KaJr8lwCiUz9gqJqzBlLdhGNV0+HjPAnFlGTdocxmKjcz1RYOPEC6S4Sda/5Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731710153; c=relaxed/simple;
	bh=+FixtK1QJA1gfJHm94EwuJnMs4Ge/17DFmRVpWudUR0=;
	h=To:Subject:From:Message-Id:Date; b=kHdJ1fhDUS6sNhJm0uChjaxI+U7gay4Wi3DPv2F4vzjYd4FvzCOcd7IZn2/D1vy+FltZ92+SPxhF84J//f6rVeld0L50mvObEsjFVJ7grHFcUuwuB5ZOGobSKN6+fLy9UsHZAJ/BROreitJi2yTFpeycgdmQyF0/r89dDoL/U2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVkNKIum; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVkNKIum"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0C1C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731710153;
	bh=+FixtK1QJA1gfJHm94EwuJnMs4Ge/17DFmRVpWudUR0=;
	h=To:Subject:From:Date:From;
	b=hVkNKIumsCClPKlqTqq7vTCeZ+XG+QIzVOunUY1JAB/Sh4+2DvW69W0e/Igu+fYpQ
	 XMNUG3c5VJhp8aYzLgC1lOjZZB8++Mrecxjc8wsDCnCq9aZi1FMecxWrWMA/OLiSTP
	 +B4ZQzkSpzLuP8WkJIduKM+wSP/5kqZ9f1S8DzvRbtkXRiAnoto64VDDbSwpLfljNd
	 wUkgLQVqRqToPIq+qZDH0dPyJjAJl3P7BH4IPiKcyB2g7gVZxyQnStJX/nHT9V/Fg3
	 PdNtGcAvHoh/FokKJ/NzFgirJU3ORY3NfOckAOW+E1EwwlkzE1cDPNuU/PzWhqU/wM
	 EelNiFCLghJQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1192D68BDA
	for <ddprobe@lists.linux.dev>; Fri, 15 Nov 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173171015364.1835.15489893210410858533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e67e3bfa07549f57b687a97d61f0181edba1e3130691f952713ec34964afe437
Date: Fri, 15 Nov 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731710153
