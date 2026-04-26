Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9253009D4
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777239454; cv=none; b=tn13u46PjF+lYh5xDTBl0frhZKDhQaMPOCLHW86Sy0pkgYu2SRHX9VhXu6HDRK7weauZi/bl5/Nhrw51icOq8UzKiWAsREvhktfKmXB56PfgIu8RSF6Ude+9UgvH2/sdXoD8H38kBaZbGb3DTIorp9odqvKn/mbYNQ3FHLiOQOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777239454; c=relaxed/simple;
	bh=C1wufx/ofLoAFTIPHMAorAA1Fj3bjYcm08Yq5iWc3oA=;
	h=To:Subject:From:Message-Id:Date; b=FQdKMk69SEBvQVuSIhf1Qqg3tEKE40y6bxNajr1Q6ftGKIu6fTepYbO+FNhJQyZoONRz5/sAjzkiQs/XpMLfdnNU3E5a1zvawyBmXDptnmJoJetU653s709QH8f5I8k6rEtTu+2HzxAOj8cbdb7AbKtzrm4jtmLO5Mp6sHGcqJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFQkU8Z4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFQkU8Z4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9005C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777239453;
	bh=C1wufx/ofLoAFTIPHMAorAA1Fj3bjYcm08Yq5iWc3oA=;
	h=To:Subject:From:Date:From;
	b=nFQkU8Z4mFX41RL6ofFIRW2ID72Di0OcujWzyJHwOtSiILeJHvCFxF6T0oKHu1rce
	 gAPsQZuUexBYSPCYKKRbkrYz14TbrV0QJCDBol5KcteLiuqSdzkUeKHJOswzI39XSh
	 KWMR6S8Vv/eveToQ3lMfG5UlwETnglOO9niRRz5CznwQnAOBFzIxMiTcpApLbdz1nk
	 7WnKXsnxYqwbf7CVmq6oaOsHQkFq0szxHSkXVgH4w9bgCZJHIPDw5g1C8Ts6UA+NF5
	 cjIZOlE95cgzuNeSIw+3LxrGxyoTis/AFyT40T3CyZaWmWeMfFeRDqU4aZqown1JHV
	 XODo7sayezNmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA961FF885D
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177723945369.905.7617049298002997375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39620b12447e7d81ed009cfe64ea93bff3a20c21085acf63792b09a8976b852b
Date: Sun, 26 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777239453
