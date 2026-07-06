Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5081817D6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783296514; cv=none; b=YVfhCfdBGroLT73pLlEtciVJzq9lVooatEAp1SmaKiZXD7NDqy1ToMIMb4kf7/fz7pPamJV2Mx98xCFInNf284I+cTMW21XU14UstnAqMyyiZoAAxlwGS67z10i1CTjsIfdcppcvTOOpcQyGVQAy9aP77P13f95Ba9HaH63zVY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783296514; c=relaxed/simple;
	bh=ms566jv8ZBvCBnDd2yK40i3RC5UqR93c0b2Zj4sSX1A=;
	h=To:Subject:From:Message-Id:Date; b=ZbB2IJf9h0qc+HuQ3MSc+gOsL+NuKKGPdQyqH8PBGViIMSKGDe+m509T3OzsRaHKCN8HIuqp95EMjScPzEsAGyFZQ1X9gm66DlLpfi2mASzZg9OeIM392plKpYm/oDI0YQUMf4cC/RlP2xikHvfBIOPerOdSNe50HFWw2manA0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nAe+aqJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nAe+aqJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF920C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783296513;
	bh=ms566jv8ZBvCBnDd2yK40i3RC5UqR93c0b2Zj4sSX1A=;
	h=To:Subject:From:Date:From;
	b=nAe+aqJ+vDZa+6cRm8WgMxN7NtVlPcWubVyZ0p/MqCnflnovKu3wiJzMDG8ca1hG0
	 FL8U0gbrTOYs8LK2UuQROEjYJKJqMPb+Ur91D7Fgv6qZErP4HnDmZ17d+Dm+W88C4m
	 n8GIkXFX9BvTd9Ghizf2Ab9MB4KzRXBbq78/WMRFDsY8gmpVjnTsAv83OSyEOjOrSn
	 ESRBXkkHKy5G3kL8nd3YwutHIv1F2z2LAdR4CU+bDu4tCYz7TC9SfcE1ROJZVMkukx
	 hdDzLfeT+reb5Z9+nXqPEInBOnAaECTmnAtOF5QGBno5/R7/yv6RhEMtjehvTUFxwQ
	 astnHw7CAXoDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF92C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329651368.7628.1888760540772206042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf2925d7fb116335076d2ca95effa301bed30389fb8d78ef9fd466297db83ed9
Date: Mon, 06 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783296513
