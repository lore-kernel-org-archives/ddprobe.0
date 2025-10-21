Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAB086347
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761052794; cv=none; b=JG6UwoTs47pTi2/sKv/cweK/zuZxzuTrzAkIh5rChrGXgpU93wtaQbaqagZeyiqV2VpDIzpgnr9x/FFuY0AL+TL4hJcVcflhIPmeHpGMeTy4nMDp8TSBPcjStAKeA4vXoIMWDqqM5oV/+VVFoxL1q2jgh4UTtJ3Lg2JwjQJ0CMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761052794; c=relaxed/simple;
	bh=0SF6iaMHz2nhUinLMIShUOrbZaPIdp/Zs782RoIh10M=;
	h=To:Subject:From:Message-Id:Date; b=BnZLfbaoyTeM/aMr3cdrlDjRGIeIrdCPwI32JMukNGkb3CePf9fRWF6m5BOAK2gSK85l78uOMsgDkF8VM6TcYMwTTvicUPVh5mLRJVoNaC4TITgJZ/nghAHqHFDLuhovxkshbULvPqzJO1NMDgRx9BSEmMU9ZCVmAVVsCl9J9WA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EfqEgmD1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EfqEgmD1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27D1C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761052793;
	bh=0SF6iaMHz2nhUinLMIShUOrbZaPIdp/Zs782RoIh10M=;
	h=To:Subject:From:Date:From;
	b=EfqEgmD11F1nE+qRMT9d62wLnR1POjWhkE1qK6/jr6q4e+wabCcK0IOS8Bv2sFYcP
	 LqBODjikUmJ9qXbE4Y6q3dMhaosz6nmtCVtOQcHDSeSjBTXlDApysZlafjHi1eKqlR
	 E8dQtOYIMX2J6y7gNgA3rrf2k/1jxpzWUI8uy/I0Cq5kMh3GhQZ3lSPFhSGvM6Qm+Y
	 irUrDpdPKdwTeHkwRO3biNrPqOGz/gTL90+RlYYltMyArm+ZQT72X7yjflQ4ekk7tC
	 ihpuSGv/FqbSvKgE/GV4TGG5bd4UKzkaOSoZwsqD0faOmDnp31mZPDjxOxKwToIqH7
	 qaYOWz0UPzeng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F73ECCD1AA
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176105279357.12171.6437367542011611338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c9be5624d8fb4e7253e7a91c5612924254b18a172ec7c37bbc839f9c9a5dfec
Date: Tue, 21 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761052793
