Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45CB81FDD
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748917794; cv=none; b=jwEQyPtuty30kBGUZlzwm/SPNaLXcQn+/3W8DjkAlOSlFlj/mmBtTWK8KJHnWwubCZQLAfbANdT5Uc7P0SDul1CgavZohPV1SORa2Q5chQuTL945ZlATKjBij3a2UsJ07Qm7AieyKom+Z+jOjIO6Kvoh1mYJqEZLT38MT96PNJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748917794; c=relaxed/simple;
	bh=P3BgWfkNN+RVjoOwgiQIb+7zK4l+zYyLO/Af637MZxc=;
	h=To:Subject:From:Message-Id:Date; b=IJmiQoHX+H6eM19Mj1Yls7hymKdtgQdA9gM3YYbyh5rBweX4YM9Bc30T+RdNjzggUyKklnaUgqVCnoadltVDPZD9SjdAhnU0UJtMR5PJCJF7xCzImcqS/6FSce8sk1opNpBVi/xWvzMGZJM+xBqX8WXgqb7eTK9f29qidR4f/uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCJ16rg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCJ16rg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C99C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748917793;
	bh=P3BgWfkNN+RVjoOwgiQIb+7zK4l+zYyLO/Af637MZxc=;
	h=To:Subject:From:Date:From;
	b=fCJ16rg4jnwsoVwq5s01AohWiDM0F0kArFPiFCN9Lt7gGLVmuUqzy2G4oNZOgxHhZ
	 +V6EiepmoEYx622PiXs6FHQNx3Zl+r3Vx39cUSac6kexynWkMqL16zAMK00sgjtXCz
	 qcGQeKROnxDzKPnlba0D2/851tL2k3u5DP8/b60LHtQBimEI8HhFvRp+7O5HMsP2vK
	 fk4EXHeq2Jz9P2Xl+omROP+Vz/ViUML9QPl1KTAMTJ4LLlMeeaIyood/1yyI1Jc30s
	 159gH+Jrf6PHo8Dul/Pl7sqngQTcLWUH0IQly0fodU+XJr2j28w/qpxaLjcQNLgfd3
	 XKe/fA1y4KNyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC31C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174891779363.7804.7731341359016036853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7aaa79a11e33dbc4c4df1d118d5617d3f1c955f7d070c0f5873de118e3ee922
Date: Tue, 03 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748917793
