Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E14340849
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 21:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721252723; cv=none; b=YNM6/ROYZrj/foQFdQXpJYe9dDcClF+YPdMwGR5BCtWgQNygH1hI744eCh9R8Vef7pdu/dUd00xtmoQkl1rLrlYz2yYhw2X38gsURhZnpL0zWXJhxmn+7lKDUNai96h9vCd5gVKxKDb86Q+IF2AfAeSe1RBtpQLkLqLFqndFf3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721252723; c=relaxed/simple;
	bh=ccyvo0kTvmoVxZanL+D94sVyyy/JR3T3ZISxmj/p4ig=;
	h=To:Subject:From:Message-Id:Date; b=iNDftjDDIT37XXadcVxSBNMJ+nmEco1MUbbE24tlLRAq7kJb3OLPRMbtPpOhmR9/pPQpLh7WOFa6W3DMX2+va94Y+ogZkuFZDMRGd52gP8ouXcep6J5V3qnkzsYEjTQ75bHd22HUGGwEPtI39DNS6qKqHwu4yJGIxJ6gpfMTDIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dm5k9Y9p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dm5k9Y9p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B77C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 21:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721252722;
	bh=ccyvo0kTvmoVxZanL+D94sVyyy/JR3T3ZISxmj/p4ig=;
	h=To:Subject:From:Date:From;
	b=dm5k9Y9pg2pi/EDcbLD3MZBdoc7PmxKS4Qbvtjk/6/qaimbgNelPt2yl0ijr/pNJp
	 Dz48rfaieAN9YkQ25k85lUm0h7flRA/yEXYWrxnnyvIZ4nPeVH/4S+NT570aJpz4nQ
	 E4mHUAuvdNjFrJ0ItkEDJG/CsoaBeRdDnYO0Jg6SysD7mCgFSImFp5oSiiCBeid5Oy
	 5VFBOv2GJGLKU5kcoAmUcEXdSQHC+cSzM44Hty3nQZoJgOK2HupCKdbDFU6V8a7me/
	 OeX8RTU2KbeGj+xXy0ArgQY9DJ+u2cJZ5xadvMvkB8CtglhbczrfTN6ZGw4NFF1hjM
	 KVtIVk74WQ9cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F28C3DA5D
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 21:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172125272281.7632.10437646025544432273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f399e5b5cec1bc5845fd91a4a1bea21101d38d9a6ae59e939eaac2b1ef07ed
Date: Wed, 17 Jul 2024 21:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721252722
