Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FF6544D75
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790081434; cv=none; b=ZWqGRNh1oRAAX8TNDoT8FgVrygtQ1m27TSD+8QdAuQx53eH3VPgTLRPGGumx6z1wb+LaVOzU2mM952nLSqo5hlcIQfK9NS53LW/unRUeIZ6AbTKKOSg8xUWxwoiu4WtL35UWUItTgQEFQ0LfiQGgTCLbB0n67fD9YCMvSACHrBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790081434; c=relaxed/simple;
	bh=AF+I/8plijPHtKXSmlsYTtAJrQ8E2djFkYWbb7xgsgI=;
	h=To:Subject:From:Message-Id:Date; b=fEYlhGWFRHoW/xiGv+BAKzO9uvypGweOLKwJFtZ1NnbyWKvyVxMQkgtwlMitXIl5DyxH7ZiudFUCLMgA5+FPRS9VhFKy5RjgocJJAbQNtCTJSlnYqbXPQGP0b9smPymDcqpDqaLcdJ9v+tpF8pCBvf7bPeUbBBrj70v65euO4os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZctRKCR2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZctRKCR2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5742C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790081433;
	bh=AF+I/8plijPHtKXSmlsYTtAJrQ8E2djFkYWbb7xgsgI=;
	h=To:Subject:From:Date:From;
	b=ZctRKCR2P+GECHiw7+IXVqJFxO6UaEDMNOG84xAK4rMM6jCfVpWXPPXnsBTUEkKv9
	 bRZuxWAWd4b1mYDTQNiuITIvkhuCGoVhJiG7H4pTMqvL+oNBkznocHwgPCW9tCGY+p
	 vhL5Le2GRBP4E64K1lNpMNpfnJlNgJ0YstfXCYOqjAyd+uCUXgtAYYhB3zfCI9WDsA
	 hzdk+AYIRmc+zT9PDx3bIqPjFgB45bkd/cCRpc4rb72kYWQM9LokF/sxbJsCTw3TQB
	 f1YbQXdSEHv1XnrSVGwRD/R6i2erGOhXdg7fKutrXIZjwhsxH9ZiW2cnGOGHpabqBK
	 ke1cs4GzSK3pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC2B0C982FF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179008143375.1036.16769201474385054650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc017d14f9bcf87663d4274aa2a3afa5780cd9cdea8622aa985bba1f505367ba
Date: Tue, 22 Sep 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790081433
