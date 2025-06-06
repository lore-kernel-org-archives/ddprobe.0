Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3589025228F
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749191394; cv=none; b=fnyytdf+B9kfLb6u6WjkNDsL0p8mETX0naBQbP0G4N41YY9sHGXi/Ley1z0avxRRYprulH1qWuo9uskYlSs7tEVRxabkqwDcLFH7PB9aIdIOrxw2PDI3bXsmZIKj6r+UVvB/uSNR/IWWqaSj9VoFBGldXlInpvTqWmmaK4Lxed4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749191394; c=relaxed/simple;
	bh=qVgjOJI8rOPixc0J+chzuRIfLBLOaj/VES2eMtT7Ydc=;
	h=To:Subject:From:Message-Id:Date; b=UScuD18E2IC4gQWLlOtbNdCeO0Ro61kzRuqCcPhQZd5BCmQsAaxVALh2KNSaBgL1OxtyjE8N55xaK4t8nQ2alM1SII7ZYEuUMcEgjoDvZy39FNw5A42b2StZ4d9hs9i5JNl4xofMEFA6F+ckQCfFb+TxGv6fhi7IS1rJmun64f4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8ufKpkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8ufKpkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D4AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749191393;
	bh=qVgjOJI8rOPixc0J+chzuRIfLBLOaj/VES2eMtT7Ydc=;
	h=To:Subject:From:Date:From;
	b=P8ufKpkGhUzcYSuB/gQP8tXl3+ZqLU+YXffOlZOeCAQ07ikgnto4fRbf9rDhSYJaR
	 fTXGdmeBPIsZdCqEfYZwkiJDgvVeBUZZJWrz8RJ75shD2k7ZjbdddVLRBpBEHW2QJs
	 UScw9VyTgv6+Kns2qvR1y3hA6WUFZUBvBWR/WItkPVb7ySApSoaavK+/mFSm4GoGHv
	 CajkCAzaYZ8m5YoKQuauFSyB80z2SLABV9FF5rna/qydILJYzmV5SEkpcc2cg5WP11
	 KgFGiTQQGmNSABPNj7LQJkg6PEWKoaI4/PNsYuhHlGPrmg4GxyCPuQTZpNj6/x9j3u
	 Zdal3ucM1bwCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB57C5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919139357.8278.12299484028015866014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ad4c143d7616fca2a491408e7ff4ac0ffd512fbd40b16a196d6103f36987093
Date: Fri, 06 Jun 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749191393
