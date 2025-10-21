Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A05350A2B
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761088194; cv=none; b=c6/RwLpPeNkFAu3EG0huDKo4aSRT59Cm1FbnDai5QUycremazBJULnoAUowDcA31XGnSVJZy8iDwPnoCyMX5HY1/BwBGH6HqSwcXQ2f2H2SPUjSR2yvUszENd2MnguRUDlikA41gproirsdeULJvJv7bTpMKTp+Vjx4qr3wPKfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761088194; c=relaxed/simple;
	bh=C/iokgRWns9XAD5oWLBLLwUdwfGBLXvEaLuTCI/kU5E=;
	h=To:Subject:From:Message-Id:Date; b=s2ju0UbZ2DjjZvoVmKGQ48Q/NoCZdh39Psp9nftxRaLjPojj8J2RJ6XEgzh3byBtCK4XGoO6GlXtSOqrQzEcBI/u5UN8Fy24McfDYUS0pq5thUXTjRQBzvSuDVUE8pqU/lktesHg1VPRFu45wmoT9cmxflMq25wnj0IMK+2J2q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+gVIVln; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+gVIVln"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A630FC4CEFF
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761088193;
	bh=C/iokgRWns9XAD5oWLBLLwUdwfGBLXvEaLuTCI/kU5E=;
	h=To:Subject:From:Date:From;
	b=f+gVIVlntGk0rI9dRIAbgLOxTJEhOz2yKQdkprm2QlOwPmQ97jEUZtHXL+xwzWExJ
	 GDx2aRdGC+rJ3176Gh53YogJ/5CrheX/K6YdQeXw57bfNj8SSgR1KQegof1W3VjTfB
	 efStHI5YGvPqSEmaYLHw/bii/QMlWaSYkhBdfAweTeCR6xfauV/llBxI2f85r42xxp
	 kRdkrAUTZgvuDMyvNLAJBBJqOsnfLc/kA3js95AflM/68UrE8xR231D9Za+oXA5et9
	 NJcARU32q4hGVeTq7KjFk+QpYVqoreYOLBhC5HhzpS478ysonatBxyqyfQVC88nvRZ
	 3LosDnD9W9+4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944BCCCD1AB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108819358.3881.16355566381200131425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89682147b4357feac9df7bb9191a6876bf570bdc215e6c4e1724595aeb7d50d3
Date: Tue, 21 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761088193
