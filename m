Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66D9B2FFF90
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783873714; cv=none; b=oGEdudklJ0S/1IHGu4EOZa7p57Gx4usVxjsG1c+wcO8oVuY+UO+Ft+dd6ksKQiliYady3SpY7lyd/W4SOuIa1ALpujzee8Fo93qNx9Un5N29AKaTVeQ17rl1RnlfgISP7zV9JkZHeOQJwY7aHsje63PlRqi8jsNjWTJzhgnaknI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783873714; c=relaxed/simple;
	bh=utSu0lS1eIajo1nTEbm6WDw/nTwkkohHcvUBFle68oQ=;
	h=To:Subject:From:Message-Id:Date; b=ed2lUGUQb0ocdpdEU18KxRVuiG/lvix4qZhEMYMLiKWSMd0f3YHE0y2hRv93P692S7in0XzWTrXo28wObZ1mdW3BBYacJn9FC3fxft4zzD/JwtYM1ZHAf4OcL34e59/XMbiz+TYiDxtyKOlVqPOwOoS40+qUNuBr6UTHxrAvZMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sr4cKKHp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sr4cKKHp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D14C0C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783873713;
	bh=utSu0lS1eIajo1nTEbm6WDw/nTwkkohHcvUBFle68oQ=;
	h=To:Subject:From:Date:From;
	b=Sr4cKKHp4fYvkytJkfCtwuxqhpTQARhc4Zreq6Ris9BuVHCkyeoLgSQuo0I+u4ErX
	 iEFEvy9y5WKKvxNbLvxnslMHpyH+l2fL6RWaA3Tf6O8bcFNq220amI1x/2SjGI6Hs2
	 2PVh9a6tEiwDnPNZw76l+c6O2pbHl7E7cKadnmYqsXyKMY3tv9jtiFhwrcHoNhkQbE
	 Bm7hqHUP+sMOt/EhTpP4C3S72737OovmyE4wa1UA7jhppGawaFPzct6GtYiEsMzJ3b
	 jbwWZydEraa2oSTq1S+SA+yEFLUBcgURy8h31U/AlLsVUK8oFrOQP2DqrWrMCDdvNt
	 Id9tGc7RPuXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFA3C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 16:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387371368.3740.16063655147892495551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd3460e72810953e73df98594b819f6e42ed5356fe738ab97bdb9621e91472cb
Date: Sun, 12 Jul 2026 16:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783873713
