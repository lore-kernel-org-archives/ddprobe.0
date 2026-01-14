Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15922397ACE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768395234; cv=none; b=p/RPTyL8LN3oebUHwaK6yu6dqmjBHdSaCHrvdUQLxmnuoboFtnnmZJ3W2mJYD64cjBixp+pcFCtgw7OweuNtuZdK4AY5NDFytqC4SjH/ZC1Z5bSIxvH/7nwu9TLEzXSU9+8mVGbI6QeT4UaKIcnl5jiXG3VrqF6IluLq41IwosY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768395234; c=relaxed/simple;
	bh=q6B08JVndyL8ErMmljEke/rH6XqFpeVCNeoTcaa+8/c=;
	h=To:Subject:From:Message-Id:Date; b=hQgxEkDx5deEbUehQApKlrXorIHG8MKZLeNXtu2FQaG9sqZR0Wp34bJw5YEP7RLDWPZxlh3UG9bDTs3t7KW8ztOJpw4TlD+BTShOiEKj5RNJvi9kw0/F2IcefasBoD7L5cKz/4bDmS35HwravS7XiODeB2Hhy1O4Q+cJfOn7swo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z3Itiz7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z3Itiz7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28AAC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768395233;
	bh=q6B08JVndyL8ErMmljEke/rH6XqFpeVCNeoTcaa+8/c=;
	h=To:Subject:From:Date:From;
	b=Z3Itiz7Rj0B9dqNldr+D+4UAuNkIvhihBiJVTDIAYgKrug6eyeFpRIRWQ4c/pTQ/6
	 hFPqIFPwqLg7YQenl0kqgwD4CVDTp1pMZ34AFCQ6dZwOKrT0i0IIQdXPgNKV29a/H+
	 a3nWc91vc5Slr5kO/mchnz9y2Cjjxrku7iVu8Uev48Z7fhzDmft/GgxICl7eZoBvyF
	 iGI4c+UOF8SZJw0X7vgafKAdIxxJAenqqw9ngABOlrqfl/g98rX8hM52jhumwlRT+K
	 Zk8MAgioeJdISXoYYu25YlSBN0MaX15fbdaU8OxwAznBUCvLvAbUk+XokBnGB9bCHU
	 8DsJ/0lxTUatw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F143D2A004
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176839523357.17277.4079820648934328941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aac0e8ff862fe1e76fba992766f775687a333336cf12e90e5c1c59e1f01ca59
Date: Wed, 14 Jan 2026 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768395233
