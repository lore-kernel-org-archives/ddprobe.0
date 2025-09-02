Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA913469F3
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756840194; cv=none; b=bYecdZbtsRvtsNZW57sKRl3NRSqyylsJuvUqGxOf2LV3PGM1S11NGIBK88yBOYnTuqp+F+66mbGOtGw7G6UtVDtJYXiefEwW3lhug+2u920NejGCnxtctecbkAK/fRypesVModdzDJ5AnEabH0oEclP0s0euqYULYiS1ZuO9otk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756840194; c=relaxed/simple;
	bh=A0GkknPeeNUlpJbErtqbkcZswFe5jGWNyFgJWzH+tQY=;
	h=To:Subject:From:Message-Id:Date; b=Zp/rCB+8vnrd3JnwrGv1D4FZh+9NjUSGMl+Z3vL30elCjV7cBUF5TpXoeL+dX98lCUmxN/1hk7MBb76Eh4m71z73XDFau9boGx7GHJmRwYOlMwumX0xHH6qBM7dixmanOVl3ZeGQtnMEdP2xX/TrxnB9uDYxwxpl33XJPdVX09o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umjKcIoT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umjKcIoT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A118EC4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756840193;
	bh=A0GkknPeeNUlpJbErtqbkcZswFe5jGWNyFgJWzH+tQY=;
	h=To:Subject:From:Date:From;
	b=umjKcIoTwHs7NMKpnzracSHDNrY1zmWkoJQKExvKPXKH0qPtSYoH7X7f5VS2eS3Ac
	 7Ngzj4bb/jkmT8ZqO4HoT/P24dIQl37iQcpZnUtdxKtolKZkrxQuizr+rCGvl774Ip
	 oTcbPrGemT7TU/OkyCg1mKyB4WqvATh8y8OLigDIaK+XvXWEa0QYW2qpmxPgsFdHcr
	 eT9DwtPBBZMmV/PZOhVXFKAGolElPJTUa/tJrUT85xEmBeY9wXRGThShXLyti5bviR
	 AbEzqsRUEfg1UkLoa++3/icAMNTzQ+W/dkaJoV49CIRYytedsYoCi0iILpkwV4ySXy
	 FFss82hqbVoug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEBACA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684019358.18561.16248424045589427424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70ace02484d3e326b0740f44a54ed94cc4a3134e0dba6ecc9ef7bb45a05a6c5
Date: Tue, 02 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756840193
