Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2853A1BAEE7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728372954; cv=none; b=cRfcKEdsL/riDZHlyYObB5DaqnwmMW3WVqfUtjIQyIXPemU9StCDjyFgBdoasFRILsjrKInboNUUTYjEkNn2IkNFb8IvNhDff2k6NM/ofMOgIcO4gdpb34JDdgk0FAVv2cDsNTuhoF03AgoDgZnPOeitD6sUgChpPZdM+if55q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728372954; c=relaxed/simple;
	bh=6b2ZzC/0MZhHHqnAq8JLHo26I3Uh9F6u0RQdTaEWpsQ=;
	h=To:Subject:From:Message-Id:Date; b=smLcZNWAd053ywacLvcASDDnTLRpBJXNsyiSP9jUfp5N+FeHP14xCy2coYQch+HWu4XNTqY4diL9x/pKp3SKvJzAeSQlFYFoWq1LYfKu26+pGlSrW7FsxZUEDJj4PM9CSHD9lyz+Y9H3RFM5uW12oujf55WdbXL/twkXGGhoVU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQjKN8zl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQjKN8zl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76C9C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728372953;
	bh=6b2ZzC/0MZhHHqnAq8JLHo26I3Uh9F6u0RQdTaEWpsQ=;
	h=To:Subject:From:Date:From;
	b=jQjKN8zl2UIhpDEMjWVfsA2TfYaugrWVSy7yaZUFYKfIpEKiERvUBftAU/1zTy27C
	 JaTyDvRBgQJELxIqdlQLQGo+Lhiu9B++f+54GJzynhQxSpPrK4nHPLf8bpQ/V4NSNR
	 kqEm7aZqSHFEBTZpRd6dzF0Hxor9XAOLIrhDnx8PAQ0002hdZIHhiduWqR5mdX3WF0
	 c8l3+T37g1AEsZUY56Aw+p+UPzj5fuTpaQI5/mA72GmXNMECe+I2TvQb8scHnpMf8i
	 vyHAywz3QesF0j3sHGKwX0ebbToRSiuHcQ8YgF4vY2SdKBEsDtHWAZ5l/BHVQrOoC8
	 xgmdBQ2gsM2og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA2FCED275
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172837295357.19544.10203987436078197082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b6159b13e2e4ce5dcb814c736c49a9b544ad7211f25f36fc6452277e52a8948
Date: Tue, 08 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728372953
