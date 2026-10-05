Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF6F4D90CE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791222034; cv=none; b=mfnTaav7fjVqPf1gjIVWFcEAZGmHZVHaaslKwPZApZWoQNheITV+FY/8Pd8SpKCeJisIkuo85lb+72KK2xeVGIQd0bPkwtGut6waTiMuV3SzeBiIkYjjr7jjZoXblVdfY7J4mmWmMvqE8SAsZ4BNpWpVzOU7183zEO78MiDKvRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791222034; c=relaxed/simple;
	bh=RyUr/pBW3LkZrv3f5Q9nuBukLcw74tsHNsmdO1N93vc=;
	h=To:Subject:From:Message-Id:Date; b=A/shsRXTZwEUBNUZ2oaCQvEc1w9+CJV6kE0Mdg7+uFd/6PmbsjtujU6QA4nsnPRt3g4qFNPWMY4w3zriRLIhWWRC5KU+qybcUIHFLS4/ybFuOuR55Mj3TqdtkD6NrliOdlOxR9wOLwg00GU1SOd/ejiKheBKDTl9SoQKok7ts/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pv+GSe7c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pv+GSe7c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5F6C4AF60
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791222033;
	bh=RyUr/pBW3LkZrv3f5Q9nuBukLcw74tsHNsmdO1N93vc=;
	h=To:Subject:From:Date:From;
	b=Pv+GSe7cMEv/25pql0JvN+rdr98TfGtUNymRtmr02woeKp7G0dNXJWggUrw2Xq5aF
	 kt6uPqlq7YL0+I1mfDm168GLwmTsgK7vkT830c4+gBpXByow0Ew8gXB5ha5SqyckGU
	 aCb8KcwdDS7MSUp7S3twb0u4KL4HQFkDeLBAtWRRwa3hZNRoFDlQABmjrubHd+0QoE
	 gAJo4qr0mpMpcVZueQSiRSkPNAlpJxjW3tSLlhcHDBmrARRy7/FYKM1+fYSA++5ypW
	 /JAU45waQjGZEtUVotfhVy4hKpFpeozC+cobrKQV2ULCbNZ5IPWCPTabE7EAIaMVBc
	 kKW5bDdHqRkXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE76CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179122203369.11741.7134865030221493470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcaaad73af837448d82365c6e5589837208a248e97ef51493e2bf5f5ad0edbf6
Date: Mon, 05 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791222033
