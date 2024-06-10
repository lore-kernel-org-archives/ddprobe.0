Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D28084FAE
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718027243; cv=none; b=JrJVpskf3EcBPIsZSOgaq3auwN3pDDP212E7eJc8Cq4ImAQSlNY76l1QJ+ABsurl5nj6s2U7A6OO3L0ng5QLCZQUW3LdgP5ssbzbqA+tvzi2eYmeb6zZc+jvm0D3My/DMCZeVvu7iPyhQhv4Mwi4lVRq/3wwWWvesDSCp6iHzqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718027243; c=relaxed/simple;
	bh=8fqGE+3qyhrLxR13oe8FX2oq9W8StWj5+aE5VUAZdDA=;
	h=To:Subject:From:Message-Id:Date; b=J8qowvsA/8lR2Kk296SfcRQQ7Kh29l95U+iKcKse/AVAu1IQsaYnMJ3FYUkWDfadjVMZNpqlfjjF2vtBQ5l42/vU7Io9GIIGbYpHyLoVgm2BXL3xbfTNMBkCajLPK/dlYW5KKOEFFKBGQHPgzguL2eHOF58NyeRiEmVIl+SuU1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0o1QJXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0o1QJXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E0DC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718027242;
	bh=8fqGE+3qyhrLxR13oe8FX2oq9W8StWj5+aE5VUAZdDA=;
	h=To:Subject:From:Date:From;
	b=H0o1QJXgrC0XLmbLcvsjMULqbqfm/0IQ29FVpzpL9EE0B/sw2CYRcL8qurHgeVUbB
	 NHWSyFNbwwLVo33tLBLQODkIvLeCocig1g7ByL1KlR4ggdBG9hqvSQGecf5wEK8Ph3
	 hTuksVD84jFnnxcB2MekZAiM+V01YL4H0KACn7fbb0vd/PpHO3Pcq9Ul+kVAOAYUky
	 3Zo8gZZH7oGrfkQVI7Ld72OC2wX+/Gg6lahF+TwGCam8iuGsylkoBkmW81aZQTkGD5
	 3oxPEVNO4TZHistT0Yd0+8tzfv9M+Gxb/tqqxMl13sQXVKKlW25n+Gr4vgGg5f72fr
	 vGzz5qrdbwnMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A6FC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 13:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171802724278.9115.3277686489161273147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e73731548a5634b8eda908f658ce5aa45d040b0a4f92cdaa66819bd4ddd784ef
Date: Mon, 10 Jun 2024 13:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718027242
