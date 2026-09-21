Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A982F146D5A
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789959034; cv=none; b=mw4DnsvT7Ys0q1vIqkw15WdflcUqNsSMiSidViLC5Q4+ECXFJQNSGN6dZY3X4JNi1h+F0N0WJtoR0Bb4Fvt+yyA2QYvCjJbyrymilWRp3wqbtelDqGzzvRpc27MJB4zrZj5eOSspTuAvlKAbHDht//tqhnHdlUsBlv55VFMMwoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789959034; c=relaxed/simple;
	bh=bymlSzfNs6xJ7HsXPdm+GGDENHnPBuZ5zeOzZwN7gR4=;
	h=To:Subject:From:Message-Id:Date; b=BAVcCxLjY6WpZ6/d04VIioUHOjig5xJv1nUY0DLxSIT/mvRtCx9ROWanoGigdn7DgyE9eUJ92tl2PhFeFyoFAv7Z/p4pDO+jwWoXwhFX8ilOWHV/UZT/4tVfWZN9s2W3NzBWM9ZfUsfdkZussHDF3LtKQeHcYnvYySON+sUPMAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uu1u6hpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uu1u6hpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD90C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789959033;
	bh=bymlSzfNs6xJ7HsXPdm+GGDENHnPBuZ5zeOzZwN7gR4=;
	h=To:Subject:From:Date:From;
	b=uu1u6hpm16KDzzp+ovarOwZO8ghs7U2uRH5NZ09UrZZ2ScgSyqjoLcq/GLxho1isW
	 yfneENAgxG6bFUQXCMbe+rbTxfgWECkTaTuiKCAtlMNcZK1+oEjy2BqyOZ4vTm4Utr
	 m5uX+LFSO1DZ/WffW2amXoSFfLFeUFdiIGlbLlAOQaf+AjciNmvbbsBpt/rbpMX81c
	 alxYe8fw3SxHdLTREhqfv2CSYC5MT9iEeetSNAvykn8PUbD6YkTZrDOR9g665mZLC4
	 B1Yb5+SBL/AYIPQs7WHrvBwAqpa9jli8xniYk5yiIDpX7HJT/yJ39l7PHV2AoHyydW
	 Mn3tLG0jIpyEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8511C982EA
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178995903374.16300.17275526930675319504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96847d664baef0f011e18a12576d799835e45131717823407e2803f8f1d4433d
Date: Mon, 21 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789959033
