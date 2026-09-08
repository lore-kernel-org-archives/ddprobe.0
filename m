Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8458F330307
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788835234; cv=none; b=ciNcDjf638GvkURWKt27reM5e7dS6EK/gALUTigU7LburcUodap7DHLVPRs7Pd7OWTtWpmMaUq4j/Kb1FK9tmWJVKXmdX8Z0komcBeh/+tPHAGWMGmQHSqpTaf/P6PEV1EhGI/dplQzU7UF3xf+riJWYyLak+w7slUng+vRRM1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788835234; c=relaxed/simple;
	bh=eEeYeOcwA5neJF7o7gPkY+e3dYWzmA8xu6t3vbfqZ/s=;
	h=To:Subject:From:Message-Id:Date; b=vFBuD5jPApdUm4DkoyN/f0dGAIqCbZW8mgwnSXZjQg30zrV7t2v1FIXqDX+4nOpqUbKxQO35BpQKxL71y6myXAv1FxgTrYnmPlkbwPkdlLrqElGv0lmk2OJRp1uUM4RvZIklVgsFrqWAiT5xELxlib1VHY08EVU1A8QErosrYho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PoU5thuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PoU5thuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A00C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788835233;
	bh=eEeYeOcwA5neJF7o7gPkY+e3dYWzmA8xu6t3vbfqZ/s=;
	h=To:Subject:From:Date:From;
	b=PoU5thuqnTUM9xqDJ4/0sNmkfyGqBa7igUmwnBt49HO59s439A5kN+pCRrD8ZCr0i
	 ckKiAy+USPhOOrTmDEVRtoiHytKaIEhw3bAkCB5dMUAzv9tcSnK2roBlkCKvfv9c2t
	 EtJtJl2BSuYpEsfFaPiD94Oj7O+5kOOFxinrbAi1sGei0L0GXu5+Q2Eg0DUBQQDKXc
	 SLuMGI5mVArqo3sNZGyKedOID7hhqTmdsDiJAU4G9ehgmXKAzWB86vcH/PVdHd4Oj5
	 2EODbQDKsu5MVZ5EOM2CbBA3nVQFtTYu1nvrTYI2p/F0TmpHT585I/e6rvYFeuUZ1E
	 Mfu4ikQ2Fwmaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00A1C79F99
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178883523370.27433.6904812838174123097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e1a2ce7b36c4f9faff5bb72b71787aa065436a8410029fdd4d4f404ef0e060
Date: Tue, 08 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788835233
