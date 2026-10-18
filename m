Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5932220ED
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792285234; cv=none; b=ErwjP2KgiCiGxz0Bgy2wPvTpU3stWWmoCAd1/7gxjfIPHC8Lh6U4D8Jir87PKreopkiLLVrSYAEG0Zcn+e+cf9B4ZXfdyAZJhApBbWN02JHITHYXIfsOLWjGb3zQJXdVBVbNRjczL9cUvS20dbwcEQ58F/EC+xK9h9VMJLiwzfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792285234; c=relaxed/simple;
	bh=1rPRuOqruXVcrUJ9MMt6l6o1Vo88qUvrbz4Udy+UrZM=;
	h=To:Subject:From:Message-Id:Date; b=rmra0WgxKmnzjRgONktymVbcTcTMPCNNkVPU5jijib/Cy+j/WESQjUyq7faDTkpZPvGE9Tl/0fyVYPIDk3HNOqj4NOKqflGEuaHSF5Dj203R+InpfDzMZOvVOK82hvvRvQd/r6RasPY/Uyt3Zo3F3VAjjd9EimSAUHs/aSiqAk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBx6taFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBx6taFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7285C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792285233;
	bh=1rPRuOqruXVcrUJ9MMt6l6o1Vo88qUvrbz4Udy+UrZM=;
	h=To:Subject:From:Date:From;
	b=PBx6taFmkccMcMDDbWLlHPEQLhUNAD7C2LOOOstlQ5ORzN0ISK8NPkfLx+G2qomYJ
	 bDegEodaClHD3zTxH4SvKDDZR+/5LEqigx9Icjq22P9cyLmvrO3PyLtp5gTuwevGFk
	 /ZgSi1h7fWmfY/uNwASrs9Xhu2GJf6k/MXlN+PyELXoaGppQ3/NWdpy+CnoY1ZO058
	 /tZHoQazuRl1pvPcEZw0F9q68r64Gpsqa+kE4wvdLs3P+nriMXPdzMCPsvaVUFMrqY
	 BvKBl0hctUs8yWX3pkwdluNxBmNMWC3JB0yQFwkN75YWtsmu8M0rhiNba2lVk3UY8L
	 RXO4pm9H/qhfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35DFCCF2C7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228523369.10201.13203458653953184279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8addc751bdc1110dc15b43477ce81120df50f81b36ffae89d62a43897baa23c5
Date: Sun, 18 Oct 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792285233
