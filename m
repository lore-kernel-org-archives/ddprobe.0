Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E4A28504F
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759948194; cv=none; b=Kyw+gMbMe8boFAGE71vXf+cAuEi+ngMzPkeLNCIcKaoKs/BsPbb0xsQ93fQ6SsKr1HpO6jgd2vy0bFJ+nQ02Z8+5xB69w4BN7FEgb1QZ8eBHRQrYkSJ+PPaY13CWcoJP8h3gbvFEzbknnxtqvm9wCMCRMrkdyT0wkVWUa995WD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759948194; c=relaxed/simple;
	bh=+VN7kDbUNm3PzIYbIgKec/cwTxwaXt+qivBxeWugg9E=;
	h=To:Subject:From:Message-Id:Date; b=RPvctzq9dhHkA3LciBub2CWQlXGSzjHFxpRGcjnH4uBl4nW/ZBqWq4VsHU6W0dLZgTt0+MXoPvu37Ozq9lCGmB6MtUFuFv+PvhR1xy/SSjuBFstRpdYtrrYdsieyREF0vb3P2g0GdDRalPOXRp6d2Ws7ZnlmVKH4kUlCn8WZ8RU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxFnBSVa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxFnBSVa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5372C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759948193;
	bh=+VN7kDbUNm3PzIYbIgKec/cwTxwaXt+qivBxeWugg9E=;
	h=To:Subject:From:Date:From;
	b=JxFnBSVaYKys3rxXEfiAeGGFmRwSMeq4P29CXHWyR0nSBcYrOGi6j2tJGu4zC9Sg0
	 cR9PIUiKt0xIgJGTx2E+wber+0I5bcYXwGbSVtxvYVDiVTPDr/iLROs0W3il0fysZl
	 GQIoT6qrzFuntrbPNFyaXR5CvqNRZxgDBYQyVjxdIfs7BKTCGM8EH68uQl9sgCuuNj
	 wAsaCoH55f8n56bPxoTu/sZd/ZzfqLkoCrRnb85tv0swqYd1bjtAifGvcMgeVCuIzK
	 x3rxJO/HWMd6DwxGkdnxSLRXUzzvO3JTt3C+loE5Mc8nkCKVdTk0N21CaMy/QdOYt6
	 +FaZQlsD+HFgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90611CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994819358.25829.6955264666504376402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9161815cebab7b0d5671d58a7bc9f02378cbc6ecd95d01f31929a45cb10630
Date: Wed, 08 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759948193
