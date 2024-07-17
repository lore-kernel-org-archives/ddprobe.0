Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3908B17FAD8
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 14:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721226923; cv=none; b=VOP/kDauzHuX8yvgeqHA9k5ixggnUKyIjj07itp+zkBH4R2wazr5nOZT49FYfOcozzbGK30VqSZL+NCYEllrmrn7yxmH+t+OwK1QjfAL84LcUBlDTOd2J+HLjKWuOnlq2ut/2vM9LlJWH1DDFGJznwN4FMa2KMw3juyV7RgWHxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721226923; c=relaxed/simple;
	bh=PUk+p3SKu5LkKgnIoX9EZFN3QQSoicszz/D9LPdSJMQ=;
	h=To:Subject:From:Message-Id:Date; b=mDeafmICTjJRMgm6p4cyhjUG9uTmapxR6W1L+/yddfp7dph++2q6Ud5DV2HEa89M1DFw9WdXf62M+zdhKuX1uwK/NkqBF382m52og8zzRkct64MZV1XEAuTn80WGwRDeRgsNqCiwfPUSpETeYzNTlMGYzkp496sDqPHGU4yPVbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E3JvqXG7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E3JvqXG7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61B8C4AF0F
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 14:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721226922;
	bh=PUk+p3SKu5LkKgnIoX9EZFN3QQSoicszz/D9LPdSJMQ=;
	h=To:Subject:From:Date:From;
	b=E3JvqXG7RBnJmOCI06Jnuf5zzDhdqJ5S17To3Grajkeq7ZN2D6YFaVrdEon6jAxuZ
	 9JDNolbqLy15F4h8T6qeLEnZszBm9Y55JCqLUPHg39B6i1IBPoxvaDoaluswrrfA9E
	 2ZuEGXZObyuHdrsuXSekdOPkIikbNzkwf2+fUWmh3ygSA4ertdiZLAvxpoEaJ+WAAY
	 9utJdDDBJO10fxODCAuc6gObT8aSyfx0SJ5MkDicE3/aV7DoqW2i8weV0P8M0Ian1I
	 pndFBlyNNO6JCrlDd0gxOC+xGCX4Rm4pZ2jkq1Lxs7sAwt3SHQ/q6lsdVpjFbeHjRR
	 C1MhzeH6Kcs8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5ACEC3DA4B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 14:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172122692279.16935.226225039275742174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb4b15bc433e07ad437980adae44087bbee455e0e42b8ff5e36c543244d2bde
Date: Wed, 17 Jul 2024 14:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721226922
