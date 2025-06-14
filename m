Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE9C156F5E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749932394; cv=none; b=DsaavLN1juyK7D7RGLuvb6eRMogWLzZ1t4cL7srh+RaasBUdVRYlHFS/z3yygn0y0oV5tLn1J0+h+AagiLccTeHsXqzfQ9JsMYdhkwahgFuwdyfwWKg7v2V2NH/Kyij4qhxkdmeGD+o0YVIXNT0oebFDLASg5h8vzNPOqFIMsnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749932394; c=relaxed/simple;
	bh=JeVvoOuVyqqwSYpNII1nfYs8hzNGogIBGfP/12FYYpo=;
	h=To:Subject:From:Message-Id:Date; b=eQGtcao5gsuomPnZ5US1DM/lcAeluX51X335fhQhROAskPx3z1IvspXgA9ae2L4frPmCQJ24H1YzridVtpxPYhSabznxqgw+BBV6VkXbTOQycGXqHMdUb74nMvjwf/42+NKc44CsP7EqNsz5PLhZx4BcsMx0D4bDNFMHYkigWjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6OhIPHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6OhIPHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3595C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749932393;
	bh=JeVvoOuVyqqwSYpNII1nfYs8hzNGogIBGfP/12FYYpo=;
	h=To:Subject:From:Date:From;
	b=j6OhIPHLUC+87KVuUN/qtTJHpWEKFpcA/1O9lQV8t7eQdrwLrtDW5yKcvQv0I1xib
	 lufdFIlcNUeduleyE2QRuaXcc7Ut36ObLPJqNGITMo4M5IjNzUfAwrsEMQLAZs1bq8
	 Re+LY/0GlZ3PHHftzFBM6QRisboWFwb6LPvu1GyTNAttWkTEOq+I1Go4lkCAzjXEDV
	 vQDtn3YrwGqJ33PCF4mkKgEZtJlGBnxO6L6KMp/hLgIrPacN1gsE0lr9UEPZplphZu
	 m0VAc+9wjHnI+unfffYRzC/9A9x5kr5BdfZomLNapoEJaTlh3GNqVpPsuW2wKrZu7B
	 u17hRkijmNewg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E878C7114A
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174993239357.17508.6709181487486335819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3274dc7b8604f281351b22542956d943e746dc030365d36ffc1f9a7258184924
Date: Sat, 14 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749932393
