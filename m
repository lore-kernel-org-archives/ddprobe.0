Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A49A2E1722
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757739594; cv=none; b=d9JmElyD1CHWuCageFtLQadJ6lsR5/sapR5RpgOIyTbGNJQZny26kQW23FU4zumRenENKKOgOwqNg1t37SsdjUvmx8KHhdwIhzLDdrEtVB461/z4loQKriKfQM4P0weTyGtXbD5E1eSEZYKdImzyO8JLcCdLkUynRI7FsnrrurU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757739594; c=relaxed/simple;
	bh=i+vYkUSeVmYwtrQHRqd2zOu3uYcl8Lmeweo4IB4B2Ng=;
	h=To:Subject:From:Message-Id:Date; b=and8nhdHYD4fimhsJ2YWHeSqumDyQSmrr9GWFHKvhlNxd08DW5pt8L/2qfG6LT3AYwDO0jOIQcHN1TL9/0CmjaYWKyslwDH0fnas5ZipI1Zz48RSC7xTZavvWcUMQvPFN7l6Fm+67JQHftjxoYG61q0vLNC/w+4CrzOLbDhCuEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J5fVNap4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J5fVNap4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CE9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757739593;
	bh=i+vYkUSeVmYwtrQHRqd2zOu3uYcl8Lmeweo4IB4B2Ng=;
	h=To:Subject:From:Date:From;
	b=J5fVNap4MwT15fkWtV7oC1xVtvKZel7JFMxovJD3ff7lkDpL1Vx/8bdlarEqD7sZp
	 ZhDK2mZg1FYRCfGHZtR/58VSQDdOawoEUb1pGzYEHqoK2/x+sAHEU5HAYaUM1DUbUJ
	 IFdSV92M69bEM3xpX9idaQWD+Cc8mKYXFJeu4QNtdUwBdvT9GldEpHXDKiv/mSLHq+
	 m4V2It9H3JKgGSTLxXIX6B2LFGkVbtXP+CnUgvYsQKVbmJwjGxixFaAUV2dVV7spGc
	 W73B6nZ/SM2V9KolZaZThlb4YWe6q2zOEz6enfCzpkwMcHEfuJxSAgUhsB7rIjNU/5
	 9jg896jMe+9ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93471CAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175773959358.5327.16203836683665757668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c0ea0f69d729152f0e2263b5279374b6085967fa6cebfbfa55af539c9d5d11f
Date: Sat, 13 Sep 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757739593
