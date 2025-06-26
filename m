Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265DD1A0BF1
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750918194; cv=none; b=OvHC6acxNaDZpas0CdbU8EA7meEzXOeGvcEeksWeU+Ts+/c2NviJh5fi45pjBXHfd9dg/UKU3rDYZR0ma3uMa5eZzyFRRgeqwPZYkyUhRDiJtCBx1E4OgwBfVKRFlTF8vcwZic2zQuV+9dBS7MTAi03T3nH+Npb1s6tRhY8ggO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750918194; c=relaxed/simple;
	bh=megIdJlADI0gfhREefOdJKEM0I6117h1wR0RKCyPdE8=;
	h=To:Subject:From:Message-Id:Date; b=rD2E580DrAn4iBg6CFQ2y2yh557fEivVsoNCytOZbFnkKvkLZVfKsaepG8BFMLseH+spCVcNVNzVt3UHDH0PBFOwsKcs+rmSufaHJhj2nONPEx47DwEH1uqqyh3cPpcej7QP/W15q0zD4g+u0idaMAPx+q5pxN6kxjsvC+FOYTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWs5CnDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWs5CnDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8105C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750918193;
	bh=megIdJlADI0gfhREefOdJKEM0I6117h1wR0RKCyPdE8=;
	h=To:Subject:From:Date:From;
	b=oWs5CnDoveSbA2XMVD569zf/NIhPB7atGrD8fn6aRZMvveZNCBGlxNmsOsxHQyNhD
	 +T+8nXWI7/wrymmX+6FS4eTifdi47467f8kDfHlS1SwXOcKIz0qf0p2DY6Jw8LbwZo
	 rct4GA7XPJzUfa0SshRhd7dfMZOJTe/i8CUU/DAQoJozs7qTvXchl9dqEQgm0yvmCm
	 JFW3A5j8dK7/cz/g+R16UwmFWpmse0gP/t7Hm2zZiErvk+Wy3DqoWrwTzkC3S0zAtk
	 FTufsilk1NYPGJqiLdgsBN/tsJ4mGEnX3gU43ViSaiREl4NU5srg4t0JklFhGYiLqS
	 B+aZS3/IIn/VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9296CC7115B
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175091819358.22804.16130724373545539769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98254bb1e74b8f2e73bbdd29d75568b6c765fad6cd45c19628f34db705edde7e
Date: Thu, 26 Jun 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750918193
