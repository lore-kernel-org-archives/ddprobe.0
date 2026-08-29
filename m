Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A66539CCF2
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787992234; cv=none; b=iZrgY10nUbv1IXGXPSB4JquhTEUj2VazrcofB2U2U134d99GAHVA4Cz9ww2ItM7RpdiPnKXSvc/W+6vvuVkBA4tsGNbeSSr6z0kDemWn8Gu1ZtkmqohxebHi7Ej7AvqqOAZKGiV/HS6cCNVh9VkQjXOf/kU6TdGpd9HlkHUoz8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787992234; c=relaxed/simple;
	bh=20L0E/aJOhv1gUO3YBtBdQ60yc6TcanciowCTS7HzGE=;
	h=To:Subject:From:Message-Id:Date; b=XdegtKTEiHquyIXb23mDbDbaekHolXkbfZ2au0beqbKXG84FlqKEFvBIzP/vLcJYUUy64bapcQ4fMqWe7ws/O3/+hLOiV6YRuhqYj6vCtQToOQaKhhaUlSeE6GQt9te/nvAEVJu9LZqhtVGdz+Qgev3C6uhqgrvVdSlhNs+E0PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBVvwMGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBVvwMGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD07BC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787992233;
	bh=20L0E/aJOhv1gUO3YBtBdQ60yc6TcanciowCTS7HzGE=;
	h=To:Subject:From:Date:From;
	b=aBVvwMGm5OnnK28xGidYtiLBwIN6+QaMI5559iEvY/DXHUR3oftuZmDmYbVVSAx/D
	 /lVl5WRXoUqX2g553i5SqCE2snlY4kTdAt4qNBeSgjN2NMfjoBMR0HTTrrvOtP6T2r
	 NMEgufZm7cS6qJt1FiO+U8/i9uN0Cg++g4Nzmws+oa2LJsMl5rfSJiHyPcfeJf70IF
	 ftWB6wpHryBR0zz9yLxDqh8Vk+7L/Kjo95S43ux7vRXUlxaWJtwFCpiHEhAgUmzB2/
	 AL1ww190YpTtPjX3nTQx9BNlpRX1ys/x/y9kTrnMReC4U2ehY/I/lF7pj8Jsn5AK4D
	 hQQXUSw07p75w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9903C61DCB
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178799223368.31269.4594093248085555808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c647675961c3ea9bb8fada01ee316a3b5a678008b3f65acaada1aac6b83d91f
Date: Sat, 29 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787992233
