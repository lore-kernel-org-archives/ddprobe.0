Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A2130FF1E
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763371314; cv=none; b=aDzJ49g9ZHmqXHDFvFuk1nUVvrkCdc95qCfnCbwib6RVmUxnmHapyE0RajoSFUef82LUSdvnFzopbHZyWLEP6Kbui7n312H5ilePq84mgh9VfK9+lcLz3a13LW9o2mw7VClRasE/qZfSavamvV1VB/NcWrHmrnfaqKLBCoEUvOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763371314; c=relaxed/simple;
	bh=8McadjV8NHCjgXEnv9BYs/KKK75NB9Hkzkbi0dowi+w=;
	h=To:Subject:From:Message-Id:Date; b=UujOswM0Mps3ZLSV6iH997naEttdn8hPaQmP45iU8bfgTx+0rzAttyZlZ0WvPMEb4ZzIdvur35X+CJdq+YF/W7uSfi7yXpa78IPBosory/kZ6bNUO7gxx5ZPsvVqmAfXisXSJcVR0N0vMUm8dP1DbAQUF0Dm58OereA+NfeZ5wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qBgjS/yO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qBgjS/yO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9442C567DB
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763371313;
	bh=8McadjV8NHCjgXEnv9BYs/KKK75NB9Hkzkbi0dowi+w=;
	h=To:Subject:From:Date:From;
	b=qBgjS/yO1KLWcnidRbnSCkb99KaesAXeeaSoFWUoXwexk/L6H1nMXbMdEV1cks6MM
	 tMz9dEU2yDbysetE3BFepObuzdjlWgNFrxQ0WvpxWxmMIaf9NYUshzqE/34oekHipD
	 hfWneZENAEroao5BI7qZkCM/MuGYu+sn4rPBWJ9uv3l3YMt8i3s2szf4BtSM+zVmgz
	 hNAZToakzbPk0lTuQswNcPIOtRMZ3hjyTpQ6xUeYTJ0AEQm1l/9SPyeSC1U/HDA3zE
	 7FhObI5+iFQIwl8mLG7I/k2+DrdbC/hWb89EntmX9Xq3sVYoPWAw6JKiPMbpMXMv/G
	 IBzEO/Uoo82qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE055CEACEF
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 09:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176337131369.8636.12668894175440097719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cece6f73604f7b27909f69c17d2e0f2f31a708bfb41450e1651a228cd3f8d81
Date: Mon, 17 Nov 2025 09:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763371313
