Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6E3019EED3
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773115493; cv=none; b=WSPHTgZtko9i/mI0p7d4pxPaZv4meiPYgndVYrj/Ixy4mujLunNtt+goPqepXgnLKGPpukIw0Ex+0Hx3lgPvTb1ynd5yzqL5SL/w00m2Bnzs0GetU6mrJLRWERvo2mq6gqZRiB6yZ+ltSmp2/ANIlelu73ph1vWi6MTAyeXr6LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773115493; c=relaxed/simple;
	bh=Ma+ygeUtEd755fiMspDx2et4Qe07H7xukg53cYHcnoI=;
	h=To:Subject:From:Message-Id:Date; b=nsWpeqtO7UmMAQxQfiKMP7srS+NNexsoGw+G6B6z7efp1kAdrv3JudOYgOspsQRJFQtekcrjucw/bvOgmMsnN0lAFqjpvARJdF3+OZ1bxUXqq6M6QM65qBSe32RcSqzGzJhnC9hOKQq10IBIX+gAcaon/BKIenZYetSt4HAyS24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2GjtVCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2GjtVCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EF5C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773115493;
	bh=Ma+ygeUtEd755fiMspDx2et4Qe07H7xukg53cYHcnoI=;
	h=To:Subject:From:Date:From;
	b=l2GjtVCv2BhcNyJtwz55aWUqyugYA/mrddC7YC20sDVtTd+vYAi5NkHsGCXhfAUXq
	 bK+hsqv9d5lvAjHe0oPkn75IHkQN20L+G2BXxArBcrJoKxQj/j1bpDrfl2WXUm5HPi
	 cMfCVfBaMxCYA4xwKVPl2F556NoiSLATC1AnPnhAZ2ubDB5cvanISc57jM5+wUs1c7
	 XmM/pxBU59JLGuTw/MwYj5FzXrREQazTCIfnjWYiKc5X2vk7RVILAr7XiOPCB2jPya
	 k0iKRLr4MAmKorOx/dQCj3pRj6Obgg0bdKNf8k1gN7/Z82dVQ68u1Y4JfniU0V9pr9
	 9qXKxHV9/Cj9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93586FCC9B2
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311549358.27051.6242285505292501815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6541262e6f9820f728ef73561610d6480154dde74db062d962bb14e8a5915ded
Date: Tue, 10 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773115493
