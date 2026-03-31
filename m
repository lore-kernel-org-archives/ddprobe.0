Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 171603DD52B
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774991094; cv=none; b=OpANe8tP70r3GNoKMI/GjVqK5x7fa4nJ+17jpOR/2y5fiYoX6wQDNPSDW8KYswqK8mtFs/MKWyQmvasxBD8ocSGs9qzJZcSVQy1Ee+h2BHfGQbWK8CvsDZ5MiwUv6rHniBhkUQm/TuVk3NAU8iezWsX2qB1ZSCRGvo56R2S+M4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774991094; c=relaxed/simple;
	bh=a6ig1rJSzhtDiBM/H0MsLj2ONTOZZ5RCx+VTaWbHn/g=;
	h=To:Subject:From:Message-Id:Date; b=X0LRIbmNmBrC+66hmW99/6wiuoZ+Si4eXfYQNo6arT8JSlHqCh+Np+knQBinxnC54JXCtlRVE16tRsJe8FDsfIKUD3qWDf4lHY3+S5hRJqo2/yjMyKa1qv0P7xZebf00dIyg6NGAmsskwwtyg9ICGFo3Q+aCwjdBirREqd/3JyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBABd0Pc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBABd0Pc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF0EC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774991093;
	bh=a6ig1rJSzhtDiBM/H0MsLj2ONTOZZ5RCx+VTaWbHn/g=;
	h=To:Subject:From:Date:From;
	b=nBABd0Pc3fjSr/OkvDAyhuBuBOpulGIAU+OPzf2QndWNZLCQl3vxveJzAjOBvNndh
	 VQ8KyBMYmmXNLTwgvSmWeJ+JzgtCW4LKIIxTNI2dMddTIOqctoBM3o5uQJaqIGv1Js
	 L1b8TESNLh1os6qj9Ku+JtebRSNpO7HWbHMEJ1mmn1RrYc7mthbC5Ez81wl6Ip+YTP
	 TBxZYi7Oybw8RSPdBtAx6xgjClF80fgOXaWEbxeafSXwAnnENqx7MuaUYvs+OerkkW
	 VgB41R5D99lrO8p8VHOjAZwcnTSZ0M8gRtgMhuQreqq4+xvetGhIitNnuSz83nkKKS
	 1s24coeE6Ziwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A610F9300
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177499109359.17353.13320168765153259761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c27561aaf2d02ede1953e5fea1f91f3c4f801ddd4f05d24d365b5209dfa6de
Date: Tue, 31 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774991093
