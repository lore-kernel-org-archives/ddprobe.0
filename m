Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4072125A2DD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783231714; cv=none; b=Qvbe1n5sqdLBVuItnjIuMgsLv2w0EUVhFp12eIX95KgyWWlB3sx3c9Vfo8WixF+f6Aef0D2lDbinR75hUuXwOIwUx0rMXs92nehSaioxOLkD34NNqSoVwpY+/z28sIurew8PGxgq15poeRp5Vp3zcUZClXo9+t1dV66mO/DDG1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783231714; c=relaxed/simple;
	bh=vaNDZdmFESj99bRuSuxtrkxx4SPsv+n+r99f7rupgto=;
	h=To:Subject:From:Message-Id:Date; b=qERy0W/kNuq9Ss6uzjX6xi32EAHBqeZY7jgVPB16xc0oa335ftRpa+Mq1Y3rICHKyJ82pLtRaUg6e+/Ev5dx98yitjB5ecbo2CypyWdiRKV/4IEFRDCp8lgG/b7WuDi5T0au9iQlenu8vNA0B7J/DE5HULSFA8CNMPdS66R5MUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZifoBFK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZifoBFK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04B8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783231713;
	bh=vaNDZdmFESj99bRuSuxtrkxx4SPsv+n+r99f7rupgto=;
	h=To:Subject:From:Date:From;
	b=ZifoBFK3eGAoIv5ZdKcLH5oyLKKOx+xg8iDunz1ua/FiHg9WN4OFuu8i2HHCnde3j
	 wEL8qZlx2rMjYoSkiAeQXp2IS/szFRU0tjghX7fHr/q8JS1aChmN63CXxNaBr2iFy8
	 UC0fv6I49QMpKWbYs4mayHH2j83sTVQeUw5A2E5Swkhbs0PqhFu7lMZRnAdhlZyOu8
	 Bn6vQ/D+N1qL7jRunFlqSzwR7iaf4LaAwVMQ9FKZeY3olWYxomVHXnqkYWDeX53Mp2
	 F6RautY6leIUG940MS62S0pVPARaKd7Kl6J2B4jaG3shkWLdObZnU7tkpO/9YQ67r7
	 r5unB3r7WsoPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A908AC44500
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178323171368.28576.14168335953675250191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa08cbeadc8802963d3824918fcb5f486e3b7a42abd84bccdce76aed964d66f
Date: Sun, 05 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783231713
