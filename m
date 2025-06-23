Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AACD275AE0
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750691394; cv=none; b=bbtT2sUZpEIHSr068NCN8o5ZFEuUjrWNVExpE+8SBGeUtmOYQfbShDKBH1uAx7jKFD3L2hc9ZLVIl99ASQORuXspaisVCjpfhjaJVce6jAC+SwshRdMcE0eSySEidlRxGhMfYWT8F4piHwgYApGF66KSvlhMjiYDxY8vRzDSLUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750691394; c=relaxed/simple;
	bh=ghQICEyUZf+VyIhHYWw//Kz1CmEn0YDGGwUuvqcP3+k=;
	h=To:Subject:From:Message-Id:Date; b=NAAVWJVAAPpz5Qh8hTjnw8SKneLoP/sDOHfWrqNhdjHg72i8Ei/XSTUm+MZ50VtIGgxJjErYYkvFAUAMeaam7qYafObRaj0qooQUpc9KCKB2s29hXsYcwkFq0pKV6VAHNyNDtKWUgGmmVBkP/3vE7RgnjTEXuLH76RHaOcN/Vg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaHwQzvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaHwQzvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FC54C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750691393;
	bh=ghQICEyUZf+VyIhHYWw//Kz1CmEn0YDGGwUuvqcP3+k=;
	h=To:Subject:From:Date:From;
	b=EaHwQzvkobjfZ4v83EEIB1809/0LDtA6HshFiK7CCK9QRW7+5V1cmV3di3W2aN7S/
	 JG2lGuiJ/b+SfgdW6R7+hkvbouiuJ2ynHl1I+VvbBXIJQB9DBmKEYaEyz4ZWB5EsJd
	 5dJC6uLNn0b+J1oKZijNN9/yLtxgw301UEZ7Kl70QXKnM/EjcyETEr7K8h8P+jDpTb
	 S5cCKlfCkn9n1NGIetD1JkWc2r8p/8/d/+VziPQ59sQ+H9iq5AFJnDOpQ+bL0CZwfJ
	 Kg1YsS8OMEOE1itMrDUNeaXWLKHkar6NkwpvGhZCC4bdduop8RGm44xmO9hhsdCXsY
	 YYhkgY2fmKnyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BEC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069139357.25887.10559554038574047922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ba3d7671209f83b5b7dec9227b0b72e2b938a9b241b1b5daa64fec352cebe67
Date: Mon, 23 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750691393
