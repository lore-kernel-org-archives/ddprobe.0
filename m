Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309FA259483
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747037994; cv=none; b=lGcURm+humkXbxgIobfOTSdZYKnRGE01mwPUAxCDNX+/+b2HEqlEEHV0pLdNpOBvZKICPdBIu1t1un1S4+COnhrS+7RnM+sFnVlkKY6iekTnxA3MxlDA2Tr777Nb0myuYtERnxFZTyaTcf0mHFtlY6DclU2dEX76gupUqv2f/4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747037994; c=relaxed/simple;
	bh=SFVizJCx558gMNQXRtcpR701Foh4t3VOjWJ4sJcm3X0=;
	h=To:Subject:From:Message-Id:Date; b=Vz6Ix0UwJc1dEfc6ue7EHQOhBLmzfOkC6qdj4a7sw3nxf0VwYYS8WVZM6Ahs6w9mLldprENQgMRmhJmJrJ49i3tpVj5BBIyQjKqTr4IuKc+ApkRszDsK1Jahw9TKqW9heGriXHtuR9kjIgZYLLf2VazYBkGjoynM1b6Iq0JP9hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAghZx0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAghZx0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8DDC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747037993;
	bh=SFVizJCx558gMNQXRtcpR701Foh4t3VOjWJ4sJcm3X0=;
	h=To:Subject:From:Date:From;
	b=lAghZx0mozhajyDAifHT0tjEmQgcWZsvVTQ5/IdC44vOAcBx0J7nCItw72N9QCNrh
	 ftuhPzVwOiorr0O8MOxcFjejPb+TZ8d3EPt132XotDxonHcVwzcOvBVu6vnDCn7lOB
	 UVyDw6ze6QUrHdb35eHUKYgqlrGAoQVUhl3cuBy0OZHICbt6ChnOTUrwjBmdRdIXcK
	 +JJxSHsyX3pm9g1hn3MERkn3P1tHVYkn98dlT52Mam/hbYtMFygVE2fYlD/sScPvJa
	 rHM4OywsHfJiK/nvRr2VJjrhQjU4TCjwjHomnpXJorNttlLUqeRu86uD06JhLYrjO4
	 mOJywCtuEjFJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F407C3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703799357.6691.13963618609218898678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443ec9f05c0f7b835d1df29da09959471b18e5567c2964136fd8e8bf14f4887a
Date: Mon, 12 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747037993
