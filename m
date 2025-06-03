Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2948627F165
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748936994; cv=none; b=NgJwwB76KFAu6rfyD2E7x1oen1+emikGMo7AEmsNXPJ7ob+YwRV8x7CjKFXCObGFNIKCVy9gf6HDXJMLBRtxvHqB2AsQsFn1G9KqisEG976SSJFSf6pto2F1SqLh5lRBDK00GanakqSO07s45indSFelS4K0UdhDMjhhebTx1TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748936994; c=relaxed/simple;
	bh=gqiRw7Q1vG/w+Nl6EULibwIqoMCe1FIhn2hNY/n8w3U=;
	h=To:Subject:From:Message-Id:Date; b=SVYehtrkSMwvQX+IQ1n23d3fDiRk4TxUloof+3fCmFLYwZTCZH/e2UUNeHueLtGMh7xlDE5wRG/a9271AJHM5Az5cO5jGnqZACc48mrbneYtr/gGoSSVwxuX1lf0U7eYVzy0IjopWQbnggxPz3t4zNzv4S2sEVLtnb0KqwHMBFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceTosp9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceTosp9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1EEBC4CEEE
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748936993;
	bh=gqiRw7Q1vG/w+Nl6EULibwIqoMCe1FIhn2hNY/n8w3U=;
	h=To:Subject:From:Date:From;
	b=ceTosp9opNDjGXAE1dGa8JHrET4UQJLoveHsli9BOVFoPCstGixsTk1nGdpGkOIln
	 UGVwL/1ukC7ALdj6pLYZQj7qLEfit2qS4P6TYM7LV/T2hq1arp3DABrAst0ItKS00j
	 xWpy6Gdk/7rAM0FcxbQXH6mwGVOwZ9B8sImwaAw/4WWX+uRH8znwRj4kjhF3gpHE5H
	 er3VKyKqXtU0zvCX81D/nNjf+ReqYHD9ePGpT148l8i94DvScLwyHyKNBVpnE1r0HU
	 pZ3wbrfqXpd7EIOJJ7sLABD4ab0b4Nr3S4X/dl9rE7wld5Gqlq5gt0PYKtu5stpnI0
	 fcs219dNYDSCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92903C5AE59
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893699358.24247.12999101029659535719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c591a2d640df31c1885dcf8643a07dff24b571e14c14dc23bcb6f58706a51f
Date: Tue, 03 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748936993
