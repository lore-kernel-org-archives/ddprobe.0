Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2894D17A305
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759349994; cv=none; b=ErSkyG42ddXIOmAH3BL/PtnsIiG2U8NqiAfcQVCruZ9B+pJfn3xM1xkQvckP6Pza5T6a80sWT2SbisZFRipaUWP/ImePYwigRPgfDH4VWVreXnGVSZq3VJcaCeBiXLYRdsR85vDgN1OZ9PnpLNpCam+eNR6L6cAY+u4HfoCNTS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759349994; c=relaxed/simple;
	bh=fAAstWUA7RTcnFu6JS4IhaI+zqf9cd1rs7w6ufRiIAE=;
	h=To:Subject:From:Message-Id:Date; b=T5RcPR9cEt22LrSWdUWMmVgII3j9KxC07NMoMubYk5EDx7kxsXj/W5PD78AqFZrwkjRsu/2SSU/FT8yhljMcfGtgfc0pMSB6xR62b24igNRO2v7eyIdrZgpKeWqDrA2ruJ5WJM964UEecJ+Tufw0DNKgQKbG6DBdZzCyJwwAQNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pc/j00Kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pc/j00Kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFC2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759349993;
	bh=fAAstWUA7RTcnFu6JS4IhaI+zqf9cd1rs7w6ufRiIAE=;
	h=To:Subject:From:Date:From;
	b=Pc/j00KnGWWMpJG+ZSePvCKgewZTBqZEoyBNhvBF1Isoof0jNoy08WZyKlItRVIAi
	 ZAFmhot3rHNXCHT+rJt84DYUm2r+mpR/KU6/D5JFz9RrtCwDmHSbwx9RgsTMzAVRng
	 nQ+MtJ6pyInB74NqdORrusMSGdS9DqpwXU5+toCB10/YGqy0UlKg4OlwAV/v6RW+Sd
	 8vscPkRsZbE1JKSAVnFqQmzJYGPfzUOWP77bqhtaIR3wNVpRrGkDhd6Ib/wltxH39G
	 nRGvSDwrZAx70ZNPCQrzzPKi8K47BLxOh7yAI5+kvXApBbuMtSGH8Rw8Attx7m0SOX
	 epoRk/Uozb+UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9533ECCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175934999357.6366.3291698429734482628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69bc247f0d1e38c3976da5df1e9c9bd00ea9a2480ec1945abb25fdd4df93a34
Date: Wed, 01 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759349993
