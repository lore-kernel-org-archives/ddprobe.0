Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CC84C77B9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780523674; cv=none; b=R9C3ZCkKJQlb6tXgfBgJ2UZswMl5sqikcBPnE6SO+wMV4iLIfSqmi6Kt97xLsH2oT7tWjWzmuDI5dCdlHfNpbJMmOaHpoWm3H86zQxfGbAp+/N2cg1na8CHsQ26GwnFIJ9wU2tMAXWRadvstvE1SeFrtN5TklAcmXMXkHuSHEss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780523674; c=relaxed/simple;
	bh=2FFXth4y6pYHKBQzE+6ylwIHNYP7MTs8wIKtP7Y8o9M=;
	h=To:Subject:From:Message-Id:Date; b=bGsKaHOVsfrJXFFkeKzm/oa8zb1OsigzveOHBeTVh3TneJUcjMZxw4V0qsO4NMWs9GeR9ETYbl2Ns6yrNe49NfpX7AkJWD1J2iBCF2JXHKX5KyxKE1qov3Sro2w2eoBAZ91vJYpwOD0SaRhaBxdQr+NE86ZBxvkKeIXFiCjRTOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfMp1VF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfMp1VF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C217CC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780523673;
	bh=2FFXth4y6pYHKBQzE+6ylwIHNYP7MTs8wIKtP7Y8o9M=;
	h=To:Subject:From:Date:From;
	b=cfMp1VF7WWVKkg/XYDgbs3H8aYm09W/h77YKeEUZ8L6Wwv4gRYi8HncA3nRNlueN7
	 0VfRh7iV2S0515QE2Lhfs5jTJnzN3EKjPzE3piEVO7ls3S59KgNwo2PBIqYzBCKjps
	 61P+z1o6Vd6fX08j9FR7rS79p5C/VrAcl3h9cZ9Lb08M5UdPzGl3bD2q9SRbbaUQCk
	 +HsFbtyYiM4RiRs6Mxlqa/Z5dhZAXziI7jtioA8yKZDgsZxhLmSgSH745RNvW2uGUf
	 BgVu2ASX+aM1HMiJ9g34rCGFAjPIei5GOw9Yz1Zx1Y/HmIQ2hbW1xN+6pF8iBiZAr+
	 po17fhvH9/ZCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85CECD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 21:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178052367368.28783.2769767462279738458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7991a336f96460c2c19790366b31a40824a3cb46595a6ad3d2d2bf9aa419ea51
Date: Wed, 03 Jun 2026 21:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780523673
