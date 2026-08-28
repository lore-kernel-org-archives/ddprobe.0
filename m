Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC8236F8E5
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787908234; cv=none; b=oRgXGvjx7q4BoAlTldiuF8uz+Mwikx6TWhAS6N+br7kigQWG0FvPnSj2a3zrRlArmK600d66rfaOlXCcSdIXB9CiJmapvA6U+NIE7E+Ntgm/HC0zqVPjBOKIhWZbZG3WKlDrVtuTYDA60x/9/X5yxBmGmHPwU43BXmeNXkwMPDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787908234; c=relaxed/simple;
	bh=HuI+XSMMUWA3ZCXLkUhw3uFPg6N/H78W3/SIveTAUMA=;
	h=To:Subject:From:Message-Id:Date; b=d7kg8tvLmGaR2PwVD8yqqTld2UF6Dz0gz65g9bgUWDD2PeeVsEeJtjeXQT9AvGszBDmYlBLgKyifd6wHvdC0W2/Bv0b1ynXfGsFbYAP3mSycUycVCIQK2ln9Dx2j5nj603s8DeU+Bc0dqQTVjHAZcsOIKQ6Je5gNBUaYfJhQAXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPCQ0jpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPCQ0jpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4D7FC19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787908233;
	bh=HuI+XSMMUWA3ZCXLkUhw3uFPg6N/H78W3/SIveTAUMA=;
	h=To:Subject:From:Date:From;
	b=iPCQ0jpY9ldD50arzMe493AWFfptWT3WhDK0xk+Mhn/XNGFprH3B5KYHK8mfC8gDD
	 Mbd9rFJL16hiaF6KlsZSBuu4RSh2+FSx97Hl4pkmkiPqfmf169vRVE3dN7YK7peicn
	 7fBVdcl93DEWVNcmk5lLqDGaGMSY9kNE5Gmop/25X1dPC1ox5n+kObhxc8dMCPWnM+
	 Sje1aZiN/bne44VE5nlR/8DpH1z5QH4nPta1/TccMIbg5CF4cXp8Tv/DUf7aAjxJ91
	 s89AnIz1n4Flx/sZYz8cc2jdYdQcR/YjR6msJfYEBLpj6bsVjx5zI1DXZGkOeS6LWj
	 VdWgaCYwNJ21Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB480C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790823369.23474.11517938230473414243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18bede2bf0276c242bd709dcf2642831d21c327ac3aae15c2a6175e0f7a6d121
Date: Fri, 28 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787908233
