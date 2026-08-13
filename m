Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C6B0490C05
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786641634; cv=none; b=dM3gJXe8yzIdwgQmkCNAh+ItO7lZyYaJSpIJ2NS7tpo6I5hJg4JYNc4srPeBaj3lq2v3tLJsCdcKiU2hrdMqBCrr+TLvmhLMmK3nZ4KzX35wpw794Ujmdrzgohl7FZuNRAHQn7tjKTIfhoW6x1dxWxoLLSD7x6bTDnI+/lJlr0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786641634; c=relaxed/simple;
	bh=U8F2ZaHLMqisOsSZ23SCwRG0NcAXkJdDALdlSalHies=;
	h=To:Subject:From:Message-Id:Date; b=brc68LE4B/eIelVK30PXApSq9QzBD6mhZOgDrw2/DWCAJWroBE/Rvp6+0oVT4grFUPdxaln54OuVydbsS43c8wt+S7Nqvl16aNaWR3Kw4FvPdHUI9GT6JdfNm3CCi7oAbsZJsSzSMmKp4xZSIkJha5wpzLFYYkpKXRX+E7smeU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLgGsaFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLgGsaFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA108C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786641633;
	bh=U8F2ZaHLMqisOsSZ23SCwRG0NcAXkJdDALdlSalHies=;
	h=To:Subject:From:Date:From;
	b=NLgGsaFwWc3CG5NyfdQ+/PU6fxr7HzUqU6j95YRtDQfAYMeelsZ1f6uJB6PN8b7cx
	 g58uO8tGv3/Qgum2Drxa2j1mX7AIE9tjLDTQUX2q2hDT8ft5TPMxuHZlxGI8nRS5+2
	 VX07NNpQ4QaY3pXFZPArTwr/dg0arlZ1NXWhZZKaDcv58Poj22y0t+8ifowiSIH//U
	 B6wjS3a8INT2mrD/pEOpwlWKHOuK6bLeBfPEgJUh9cQ8M04+FM2ZktetbrIu53pJNH
	 58JMqqVSxts8djLE5Bf2SIM42pXFs9ZxF2eOXfs66Vb2Gf67MpKYtuSAV3sk+TwTHX
	 pGMeg7JJfzzJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A80F7C5B572
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178664163368.9815.2066144805730943176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6505d0b5b8b301710a06039b1c2a95d327059886e06a135da0e33773e553a276
Date: Thu, 13 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786641633
