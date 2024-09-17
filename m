Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B32226AD9
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726588554; cv=none; b=iKg3iEMkMrnkDz+/PjoH+CUzghDujK5uHGsEBKWO6ubT8QWYHodulWHEWszmGzglKcegKlqTvr2Jy2Mprer9NH7ZbH04GCNP1peJuptLIlRsJ00NXnFxfHEukqxQTxjiuwVfavO2hNvyJ9n8dBFgEg1kmkc5gMULusDwqZRlXFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726588554; c=relaxed/simple;
	bh=TbTASHuTlimvLYBWsgdvENRWnOWNsKSO6sZyK52ekAQ=;
	h=To:Subject:From:Message-Id:Date; b=gLIpWfYP4wsdzjqApPEirrsTQaF9xsuUNb5ZqrQVIIZ72O+8WlU0WQtAERQD6r8fLTyKMu21svzyozXBLat29khhd+mfpjVAA+phBiOaEtv8YD5UwgXk71rXKIByCEryVUsbMQFmrxXGQE4QZmT9FFQYjhmdP4ucbPc1TsSDr5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irml9JKa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irml9JKa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B76EEC4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726588553;
	bh=TbTASHuTlimvLYBWsgdvENRWnOWNsKSO6sZyK52ekAQ=;
	h=To:Subject:From:Date:From;
	b=irml9JKaEKtEUFMcgk8rQJOTYvXUurfqCT14Oi74wGgJnqnXdzFUBMZB3MEFyfawS
	 Afvu/J4q5PArWslRvdmxSSMuDbgVJKJCsF5AKT10JKlr9b8CFxcdzSyds3IZn9sSgV
	 Kngv/0qujQO+gbzqM5DmPAOb5kPvtGKrMl8x/B+uqoVeMRRCA2Q5OcJEHl1BEbGVrZ
	 QEjNiAsn2dsjAQCC4zlAKDUXh/jySrSR5ugx1YPzFQ/jVb7cS6hF/PbCaBdJcaq6zt
	 yipTdg0KJtW4SiThXGc28dmk2xJPcE0cA4AzdiNxvxi0WlAaiZMhQcVdqzKsEbrGWE
	 0gGEQ75Ouq5SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A71C8CAC58C
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172658855365.27157.15257255495692869026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ae5d25108420265eb45ab35558a7b85aa2aba584e02e505dd75cd12d06393e5
Date: Tue, 17 Sep 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726588553
