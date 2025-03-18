Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E64AC19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742257194; cv=none; b=bLRXKrYhWgJPQ2HhNm1NBICNGW00nIGXrEx03k9uE4UybyQvIjTx7ilil+D6AAiyx9cdPrG02YOCMZ7DyLd2XgOxiBlwJGnRYIa7t/AtVKanBzuvgr8p5d3awPPdYuQ9MydyIMy2RatvN/3sBwPSAAXX2I8Fb39qL7VwZ+WxA64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742257194; c=relaxed/simple;
	bh=kC0c96XYAdUpl+7XHMapKzRQLdKaASwLDVAio82XnDw=;
	h=To:Subject:From:Message-Id:Date; b=J9FcoBNOXBF73k+9sBD0EW0GJyHxDI14MSSTUANgUWo90Q47f5g6NOpYOC5NKFp6pfi5ooM+8kAVAxkCtTkCu/O4o4uHMmCqEJxCUa9U3xsPyci6AbJWiZ5duzjiFz3TAhKneMbQ+/VZBC/kpabS5yyuTB1weZDiJ83pR1Ay4Fs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CD24f3sd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CD24f3sd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0273C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742257193;
	bh=kC0c96XYAdUpl+7XHMapKzRQLdKaASwLDVAio82XnDw=;
	h=To:Subject:From:Date:From;
	b=CD24f3sdvuCRvpjF22fJ6HlIPzg52NFngsXfUQq/14S3t0wGbOrGKGihF9ZsG2sdZ
	 nzvJlqpcIAqKjs5PGhyKA73NzkmasqKWter9m+LbGehEVZ0tXbo07ORHyF9jRFnhLQ
	 GsDaftjKKox/gKf89dGrFFhkoCd7aWyA18j5idP3B1L/YdTcwjH7JO49gSpVuR7FjY
	 9d0r/hmBnhJlknrqMVwy88X9ENAYVR1S7V1ntnBmrxj2TmVkQ9swBweuhxRF2Nha7i
	 Bq2p0fpEH5rGKzGxYP3mT6CjFv9X4HYe0Oz/eyDyOqGQz0jRbHPPvWz6bL/eO/QgZ9
	 AlqKksh+LWNmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0361C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174225719364.6017.17296090513533361111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0d89308bb34a6b73be76dda36fa770927b4368b5f4404139878e05230ce2ba
Date: Tue, 18 Mar 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742257193
