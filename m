Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52EF539447C
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773942894; cv=none; b=OrzbhcyY4yUIpB/6myELqE948cupmpa4/yLXcE3uyCiHckAvPbm1M25RDdxyYTinfFMWg44eZVpLaEkBloxvIklRTOU/Zwod/3r4RkMpP1vKEpncV9U5uwrI55Tvr7ZB89Vp1+8zHQXk0vAyc7pM1W19MSVOrddzwj81d70erVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773942894; c=relaxed/simple;
	bh=lgbKoOJVWND7u27FUUZMB5c9lwWYtZUACQt7u7/G+l4=;
	h=To:Subject:From:Message-Id:Date; b=j5qa19uIddQQSAHiOfFL4LaZ3hFGWmlb8P1Uaqbvf6Rij5aCy+As434EaFQ31B3LszRJPOQykuWWeVwwl2AJAvOybiFIZAc+ObWZBLCQ97W4JgRVA4QDOPDkHfQsL2MujyxOe8YUAzk3AaUlMOWDh13ENaG0aVYAjlhlsdPT7KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DjMKbF8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DjMKbF8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A677AC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773942893;
	bh=lgbKoOJVWND7u27FUUZMB5c9lwWYtZUACQt7u7/G+l4=;
	h=To:Subject:From:Date:From;
	b=DjMKbF8/vwCJ3yKYZG4eR6JvIK3wFTZm/V8DUB5PVRoBJDGoWTvF6uY2qw8bYVwVx
	 2dAf9FJt3AC68818Nwj6iTVVTtAERMLutlpUR9sgP+YwXNIILp3nEhe8sqICHnOlex
	 0fmUqdRoF8QfW7xseVZvVnORrEm2cWJAxGyJRUGQOluGed17fe6gyassd9Jx/ez4/K
	 Nu2CTxUl8meuE7nLppm0+ROAf34JsaA6aMXufiJMtowiB+MbBrasjeOzCRESI7+I2s
	 GaqUTZhyY0JuMm1/R2rvmi6Iy95MKVNFYcmDk1511H6MJMWJyE926v6NJIPKXn6UYK
	 yLOACO9Wex0mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CCB1091902
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394289358.8292.12927013061053984367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b585c95b230652f15722a3ae1fad6144b03173c869bcfc856610308f8192e756
Date: Thu, 19 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773942893
