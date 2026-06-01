Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0AB3E0745
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780344874; cv=none; b=ndFKTb55W4XY7j6LUILZqqU3MJwW+AoO9NR/JRXouKjZ9ORzx2/XcCyGHhxh2wYuVtr1ZQHYHDL/IpKvjiz4lePiD09nBA/ZJgOiri+M7a7cQnyrtxmWAOOPlqA6SsY+TyF4SgVut08tJnh1uzUhMaqob9JuQHDMZK0xZ37kX0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780344874; c=relaxed/simple;
	bh=eCsxHjaAK/5zI3b4sp9kqcb/fXiFGKEcH/Bdtomb7So=;
	h=To:Subject:From:Message-Id:Date; b=X0xiwdydAiOB+B3IeccP9eSAA9vhdpXFuW3Hjgock5iILK1Yobe/tdiGqUlDXCu2rhTn+TpS/9U+GRV6KodfwD/D5tOIl/cMalKWyQU3hIb8N/d+RXH6rEANlbkBFBW3YaolzwJ3R91ubRJ/wkDHL1SQ6F9xwhfAeckHU0YEH8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dymlUO/J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dymlUO/J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FAEC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780344873;
	bh=eCsxHjaAK/5zI3b4sp9kqcb/fXiFGKEcH/Bdtomb7So=;
	h=To:Subject:From:Date:From;
	b=dymlUO/JWkTiV5gSCUfNn6bNmWjT6gBCFHLCJGvzyNrexhWLI3HuHGK5QLkmqA8lQ
	 4VCGFOM85k2daIasbREaFC2YrccDXEyQXXydoacBiHrUOxuV0cMwnIB5UDZYvk9SS1
	 0rHlwMl1/Hh0EAcurOEyp57HM7l8BzVUZHDp2U+oyDVIoSIgoY+XZSamakUmNjK0EU
	 9pvo8hRPV/4aEduqrCfMqQjRZ16p+SVJhogbjLfsYloS9r3VBbMC4Nyl495ka3lTMt
	 BtzNy2okc/vQUEVX53FihAAswS7UjRAywV0Xp+hpFhFIOLlowpw9mnFCEeGuEv92Hn
	 kkHsyHJcd4beg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDDDCD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034487371.13118.14052269799329163308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 860f62db90f0cc378f5a32af0f264fdc4757b9c6d02d3a50eb0637f18b6da522
Date: Mon, 01 Jun 2026 20:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780344873
