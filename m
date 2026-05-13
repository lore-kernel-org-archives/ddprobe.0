Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA20355F54
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778659834; cv=none; b=b4BNcgGZXD4YiFd/PPYwduyWXaEn3VxmNb4dvH4cKBlvAAYStASXkLOYsJ3aPkJhgouvgx2T3715zaRlzWEVgYytHh3OK18g89o/J0MZX8PahrgCPhlp4otdrCuxyCHpUKzya2oekjU6PRdz5wgCs4GrNx2d2QFDCEAEWj+lhwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778659834; c=relaxed/simple;
	bh=dF7/JeDNB9NALbz/RIG3sv7sKtgWCcK+Nc2LoG4/nb8=;
	h=To:Subject:From:Message-Id:Date; b=cbrD8//d99Y7CKWhypF0L8mxfKA/f1bUwtqhRWXtmNMxM0iTSGJWgc3K0MvwOT9Gsy7jyIFKJtHJWpQlU3ufLcJTv9GW5SpRR2KYgShp+ZdAJQbwJms8nfJfM2V6Rntds+SFkSckzYfBT5mP+NcusmoY68jZ+agjUBuIyhOtroc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGP4eZOw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGP4eZOw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2855C2BCC6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778659833;
	bh=dF7/JeDNB9NALbz/RIG3sv7sKtgWCcK+Nc2LoG4/nb8=;
	h=To:Subject:From:Date:From;
	b=UGP4eZOw23Hd3zdpZIAta4jqluzmsq4Inp1Uu0h+Zm3iOl+sbd4HYsB1Zb0fsqEMG
	 XHgkjA9OpXmOBvOlqzz8ThbTNwy32ivEEcxEp6FuUGm/LHCW4lrmuVp/loW2ETpHtr
	 AL2nJzHH9/ojoescshgOSGbtniM5WZkG3oRwQVvyzXeazTERcN5gWnoYhivD95N1wh
	 3pXxR5AxMLF2UBF72xVLWvQQNUg/b5kd0Akaur3OM0WnX+2gN8C+0OKYQXc6becNl7
	 Xu0apI355LGEjZKmxT9cL+scBYEnZmpNKlOA3Yw1L03ODzUW6rs0/VJwjuMEPhTXOk
	 UJxTRJp3FTVZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF42CD37B6
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177865983369.6607.14148552223486998762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d108ad2d3aca62944618681f79035e00d432b681143131117c7509d6f30dcb
Date: Wed, 13 May 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778659833
