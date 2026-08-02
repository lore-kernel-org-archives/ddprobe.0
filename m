Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD2B2836E
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785637234; cv=none; b=cTqRrr/4vElDMggn5bqG5Cl5DE9A5Bv+OX7tR3FlGP8MVgwuH7uMSky0/brkeTDLAxDML3gfpNO15UBXB47Ze6iQZh6mQJI4gIBi2IQmUxEH4XDYDvPztrGDIgO5qlx+sixLW/XY2e1fcLeDrgk6k3IIN4ZziWA7w786XlptdB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785637234; c=relaxed/simple;
	bh=4Kye2TS0uXK77N6/3q/TU5RbGLs8SYvgkAmN6GT+Fas=;
	h=To:Subject:From:Message-Id:Date; b=ED7ghc7V63tHzuqr6wd/3+nt0s9Pk9yTRrDiFmZbE5EOc44zaOWou1ikssDYxQBRVQYnR0eYhHfoYAogBAYOKyiue5mVjHmmLKu12lClFQSEnKSW7EJetjHOHpEtXLxv2AyolGCB6BoJ6at9fd8UITUjAdVunOqWBTXVcec+2bw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c1kB43uC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c1kB43uC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDF6C2BCF6
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785637233;
	bh=4Kye2TS0uXK77N6/3q/TU5RbGLs8SYvgkAmN6GT+Fas=;
	h=To:Subject:From:Date:From;
	b=c1kB43uCc68J1lDBX5Barl1Q/YiQvwrTX8SizFhlG87lmeOtOuPgkdk+p6gOAeQ3D
	 EwJqzmGzTabQF9J8qb0z4qBBM0aq7igqbS2ESjcsb8N/uf01MekA4eOUTp/i+Ta7db
	 C7I5NdWkkTqAzI/As7jVfiDDOrnQsxyUf5Fb0c3o9RWTC8Gyhg/cjZg6RfGFLKGaPS
	 vryZrQ45powKYzGeo4fLbdfOHsZUZ9QwMTHRdikPPDqw9fZNlFEwQLoX9rlGmRrLFU
	 YvE47jb896Dvc2ysMvNTg0EbvfRBhXnigIA2cA/TncXNcpMHMHT1EEWAnWwxOwxvN7
	 QIf0kk0ovcGXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99BEC55172
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178563723368.5689.13080754037884290074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03cc0ccf5c892f0fa35fe471c19f435f28c645efe65a064563ad0f20485ed31b
Date: Sun, 02 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785637233
