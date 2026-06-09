Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372DC352C2C
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780990474; cv=none; b=VrR1GFy9e4Q7H/Q3NTLLoe/pOK8wlBZ4fhB/EKUc1hNkEVAueI8sL8XrgFQEoNjkHzPAKMVYV11yGT6LbUt1JRljNcOT9LDSDuxDun0FnoMeYQvyMiHh4gCOLBsIHPQGYX8eJNZqve7OH7+eqLJ/y+pfzYGK6nl1RoqSxjjELC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780990474; c=relaxed/simple;
	bh=SXj1Z1Q74QudI3kRULXpnl8JPWT68surW2evBcDXUE4=;
	h=To:Subject:From:Message-Id:Date; b=H9KFXtf8Sxfj37oiD3nLvCJvdEddWYp29G8LUt1exx50eDB7yzsOW/vsT6MH2wqHuEbEsZz4v5DrgAXZvz6kg0Hz1EDhYetQ8z12jHucLivIrO34Yny99fXSyO5i/m2RM1SDyYcyGh/XzGa+j+Oh0cVWbhLXNngjhSpi+a1rOww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HF7fOTir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HF7fOTir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9B5C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780990473;
	bh=SXj1Z1Q74QudI3kRULXpnl8JPWT68surW2evBcDXUE4=;
	h=To:Subject:From:Date:From;
	b=HF7fOTir6m9KXK6lqMZ8DxDbQRHZo2w6u2ifhA0/OA9Of+4rv9zgIaHEMKLWSSPWd
	 GdeqUkBX6DXVmDD2RetYm9+o9jUjUwcJys7jucGpnlQpXWtB9r6tfcT1Qcw3VgTTCq
	 uYRDmhN9MbFFYP+Ek2psbmMVzNo6x+W+GiT62oIvS1ggfSwA3aPRlTHh/vTK2GETVJ
	 mLtmRhUBlxJgFtFgTZ794TSEuz39IhNhdncupkls4OKm5067mDMOa6sJJ18giOZzfG
	 yD4686eFl5DMUbM+G7o87yf6ok2J1cMwRF5o3p0DD7ibosyjmfRjWZfbgjlTgjnbYD
	 sFdaJ5OxbbTqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F34CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099047371.27372.16834146982365342295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d82630a0b0ee2edae7d3fb5d51748111b41f0ef024e0e7a7227f67f1e582bbf5
Date: Tue, 09 Jun 2026 07:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780990473
