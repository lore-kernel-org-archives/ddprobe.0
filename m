Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21DB12E2663
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789332634; cv=none; b=Cf37X7jhoqzB3/6GRL1i3THn6xmz6eBcx/nsHfFRPFgs/2zDLO0VijVHOPm58twFFEVktmdTUaGXbQ+EtvzQu4xKZYV/QomV3h3yDSDRKm44l5UR2cKqQ8JBkgZovg4L/1jD5gzLj+NoqdJ8nUa4rZNvga16Zr/4eT+Mo6GLfpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789332634; c=relaxed/simple;
	bh=AojIXg6gmY5bqHf/8GOiZua1mOLPcj8cC+k8r7khpi8=;
	h=To:Subject:From:Message-Id:Date; b=t1NFUr+vYwBT88XhiwaQoHlLR6GCfeveme7tnAnHbeOFX6/rKnYV86+bvfcYRFVp61DKDHPTK0/kGc97Iz7kbuA/aOfQoPOQhTVYD6QoD3DpZdOJqd6MLs6hUA9NVhlr8xd+Blb/xWL8TFXqHLsC17ctINj0vSRQukFLljbTXVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0nM9+b+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0nM9+b+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB539C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789332633;
	bh=AojIXg6gmY5bqHf/8GOiZua1mOLPcj8cC+k8r7khpi8=;
	h=To:Subject:From:Date:From;
	b=J0nM9+b+/2JFIA3Hg6BiT5HfPFOw2riigwXSXFJ5h2ogn+Y0lgY4A9rSSN21uDGfi
	 P+S0AMgq9T1fIAkk92OgvBpcTDMta2NINPkfBYn1L/gW+cPYimckdbyRYnoo6mlR6f
	 qsK87Tx17m/p9trKcn286bdUNtsypxa3p8cI5bjxVWzYF6nBUPgch+ZGoSpAOZ81FO
	 i9XEMb29pSH/QmGhIgCOqnMPIMfdi5J9yn78bEJo22QAPP3FOna1G6dAvE8HoKd4RT
	 SopHaNGS+quj44s9DK+gIvBwaWjdegyNXLfy4f/aV9xM97taq3kfOCFpAGGe6B34Dh
	 mMvFVPalP85tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A930EC88E5C
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178933263368.21236.12688001276713940997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b3b07aaa9735321c0fb6cbc05eba967bdc770c20a8c471d2fb8c4ef1ee3a65
Date: Sun, 13 Sep 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789332633
