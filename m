Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19E692D3725
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782083794; cv=none; b=rMHo98mjWLSfDR8Y/68d+E6PFGj/XFQs9lgFog724tCMivHF9/rRo+iP4nD9OPwBm04C7PvW837Js/55EPys0wLpCcnTziru9blalYVhcZ642ifrgK6vrndWlpXTjF5JnbJZM+X5ASk6eBunu+0wXCI+gt3Ec1FBABWsy7A5bBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782083794; c=relaxed/simple;
	bh=IAKXgwPCn+UZW71tDVS+LqqUEi88MpsujQkOAsogDR8=;
	h=To:Subject:From:Message-Id:Date; b=nEpzK0qH6ArHezArhxt6QllWAm5F7vd+8SCY+PM6f1oBX/jgJYP7e+nGoW9rMF6gWNZEiNPs+LVeMchfFtsNMio0PqRDTpkVanR/GN+qBBt0TDz/t4+EDFT4yaZ2Aqq70plew7RjYSEOsexd7dMnJaq/73XCOCzHoseSCyTQ3mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LE8lcckz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LE8lcckz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C990FC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782083793;
	bh=IAKXgwPCn+UZW71tDVS+LqqUEi88MpsujQkOAsogDR8=;
	h=To:Subject:From:Date:From;
	b=LE8lcckzqWGFbCM0LI4tel8oEVZuD+YOrE7/xtnJeF7KjFlHL0SV3hBfvDZsGMBlg
	 5Ze7eL6DzQS6vdklb7OiLC7Lk3B4aBL4d7dO3Luhr6yfVpU2bilqkXKlxu/JxQhkWu
	 cKY/B51a1MhYAACX5sJuISX4JVBrUmqC6BVBYADnBDwIzYoVtHul/7uZ9q4SDKMcGJ
	 ykwiu3uoPyiO87R10uh/kXuGYcB8FPtAC18//5EwxGCrvCMvLMnFmrfqGcz9njymtX
	 Y9mohonlVcCTG2sebWdWbOLDD/Q2yeigIpFo/xgd8EVX+TqQR9nLG7hjEvU7VqsZ/i
	 HbQop6zM/T5jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F8ACDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 23:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178208379368.22881.14267553636836423002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e56d99a81156ca584ed1dd380cd2fb12a912b665a95e251269467a0ea5f2302
Date: Sun, 21 Jun 2026 23:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782083793
