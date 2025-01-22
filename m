Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B8F08F49
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737553554; cv=none; b=L0qU2H5bQlXff16kbrgTVQdpBHUL+SY2M2INAkzElnnFSPo5KEoQfQqHE0WJrMm0rPtlYmvBDDCcgA6LRIjVKoSXRNAcGwXs+Kwu7C0GB7cIfJDPZy1kN0x7sTrpg5GBVdiR1EOvHaXpXMW4SA+nTSIbYLq/07HkOw3SNAt/dDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737553554; c=relaxed/simple;
	bh=yijc9s6cj3qcuECQ00O1uiYVYDdo/QwyZUNbAY45UYo=;
	h=To:Subject:From:Message-Id:Date; b=h6YlZKovjlYAMkOR/VKjDs62lyHWlJx/Ydy7hUgN6uQrvwZ/q5A8SuXkTHfR9Lz0xIpmgItrvohBi7thozje152CTPO2u71jKQG8NnSXlECW7dzKeurYP+79AfALpXF9ljhvZjL7dluk+ePFK1TyzyNJLA1fCD4FYdoPR2aCd1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiIlB1oO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiIlB1oO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08CEC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737553553;
	bh=yijc9s6cj3qcuECQ00O1uiYVYDdo/QwyZUNbAY45UYo=;
	h=To:Subject:From:Date:From;
	b=XiIlB1oOoErxpdoE1CpM7lfMbXckiNSLrBGLz87YMznwWPsl3F8n1z9/ntiyn2WmM
	 /0mI+RPGR1lM/ld3htGdnR+KGk7kt9jdyDYV2JzSUnaY5Ly7QciopZT2V2A0C7OOFX
	 Zg3IddzyCLEjEzUn65Nx0A4OqUM7E0ko2P6nkzUcy/TWCmu3/ZBn5v2pX0FoXSIsuX
	 uhp4qQvTdxxtIzcqMTtzx2MsUULyMe5MDxOhouPfO+IbgtHDIndbLzDM3+73nk/UYq
	 bb3Cpv3DC7jLLXwT3LJBEcC0T8SEMfj6Z2NG3VU1dn/ed+4GQ3+80xxAcfw/+DBmJp
	 IH5TX4JHqb7dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90834C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173755355358.32593.13059142077061166636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f9fad306abec0a8fbfea1887624e7ad925d8b6958e4d7f36af176191dcde11
Date: Wed, 22 Jan 2025 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737553553
