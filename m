Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DDD842AB7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774015494; cv=none; b=paluWnKYKB3nGUJJvfTRx4E1ymV3eO/ylCk3ruEupUlOUi2jNqnOE9pVRedqNf69cL01rhRuEXRkpEdPBOxvX2oUFuJ60sckDvPb5rvAWJxbIcolxcCGWXTWTgusaR8kzP0z48ImEt849rGy7sYK7OwJLFfuw0vaLFTS5sPu/Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774015494; c=relaxed/simple;
	bh=+O8ch8c8bnvz+mDc6aNv+4PzCRS2qDk1nGL4T5NdNOQ=;
	h=To:Subject:From:Message-Id:Date; b=csR45UGlMOUBC9QBrtU7Lp6fjb4Vf4uPhiZ6S9x++w2uElSg3DBbeqTiLOhpMmGsjvOLwBTngYiaimj0V1+eIG5V//a/7SBgyWtWbcg9bo1MJQ6oDhcq4HSeT+5/0IRBC+skDTWazEVEXOjvSJi4Kp1r1qCwGhKADaxxaQ48NeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgpTtgvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgpTtgvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA4DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774015493;
	bh=+O8ch8c8bnvz+mDc6aNv+4PzCRS2qDk1nGL4T5NdNOQ=;
	h=To:Subject:From:Date:From;
	b=rgpTtgvBKpMhmqljnv78+BJEitDATWRbFgPF0Zru8Mp0gdIjxzMflTkK6HPU7ZZ30
	 1LketUaBGxm8zL5azb30f1mhUc+uYofni7c4JoxQsY/vluni3YJThOm1v+gfiy9XbF
	 x0G5AGVQlbxix05YrI6dwt41qfn+ONizhnOVVmg1hbDRp6mafpZ0v4b63J9maUMZnw
	 kvSaObhsmVj1TOYkvFqwqT07Mw6Uk0/GW7Rne/fPsyJNEsMPNm93jjKQJBF7YkL154
	 tERrrvLACvTyv5VlhJkE9BKPAiqPZR1G5FxunvAPj+XJgWob/Zl1bdF9+CkqiBZEv6
	 uIpOTkdTL8eQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCA51098787
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177401549357.7696.5454907373130472652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be4041684cc5055cb796062f070ceb1a0f395083947400ce296f52c2b790968
Date: Fri, 20 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774015493
