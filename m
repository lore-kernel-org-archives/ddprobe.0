Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C34E204F8C
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754516994; cv=none; b=fk9uzm80jIRpJPkMuO6HBKG2Jcp0/td9sNT9m6Ia5pvXU8t+ifAcpgySyv5cGLaXNYS5JRYN8ZqzaAjUFWTxTy5hk2JSaDA8sBBgfkaeZVHuTGZ7I3HKm2d809v25mJJSLsHrMuDIy8ivnLcmowLG4BjOa+M9+ImA5F31JSvAkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754516994; c=relaxed/simple;
	bh=ggrbCOoF4XaDEy+7nF6t9NNZP88zYXAX4qkHKhSOUHk=;
	h=To:Subject:From:Message-Id:Date; b=k+N43j4hOcKoSuJMCJdX8zNevDJE57a6zwPJwA0KSQD0yx5lRd+rQ9qSr7xtXlMAot7yf9DmAxtYPnSojN8yl/0RYyInMbUi6/OWn98toJzqEzHKLtOB+UESjXlyqCkCP1/2/JnwDfB94JKpFGzlAEguZxey3RyLJDniC8h5dM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kj/9YqaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kj/9YqaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6E0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754516993;
	bh=ggrbCOoF4XaDEy+7nF6t9NNZP88zYXAX4qkHKhSOUHk=;
	h=To:Subject:From:Date:From;
	b=kj/9YqaQIaoUrBPTpozgBUfmPC/zgbhKvgxCUkXFMgDXvJSdWny+Auk3LJQJns9n3
	 XZyJA9Tq4d1P4LB1yC3s68cDwOJ5IPlZRoeuag2WUxrR3+G7Oq3ycIIfIp4Hy9N2ql
	 Ms2ZDjkE4nL/DkTKiaUPJp3ELZ1O24xTvYI0Ix/WgHE7H4gsoq6LE1wsWyj6d9dGLV
	 jFMmFmt4prz9HTcd1Zt+xBI7+oMJCifwztmgU9wtXAG9cRRvqjXiwCut5E2mPJXPt6
	 wqtGc2BpnjMnNaBv87/RNikuS6A0ePaMRtLWgesYbI6Ex353+nVjqYnI+nsPGp2ZPo
	 eBxcQ9qA9r5lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB87C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175451699357.15150.9314096588548244486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3326f4cc9091a2e745d9aaae46373c77b035f95b72df366ed50cb1c2127e31cf
Date: Wed, 06 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754516993
