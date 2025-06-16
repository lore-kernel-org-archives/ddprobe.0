Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2443A288C9B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750101594; cv=none; b=ZPa2kkB3NjdxLaRJLppAOrMKjljUbTGyQnHTei+IkxPKOwXQKqJ40RR+4I9DRHbhs1d8thLE028epS/5V32CFWJAFikdroEQgaeIsZ7S+JncBTeTlij3oAjchYYPL0q0jdC4Qudw1e0f7LRWiKrzm/LaaimRsOCsoV28lCSAo+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750101594; c=relaxed/simple;
	bh=R4jX/E1BjlO8MpXRLx0hJqfuY3rQn3lcFgb5fq27FHA=;
	h=To:Subject:From:Message-Id:Date; b=susKl1XTHZC9SSYxLf65XwOxQric1YyipP6jouVEbmU3l26W1nqsPO+c5qujper/m++jJNOQJTdMI9PBnsQsrmFI02dUynqURSLIGD9oJLdEwR1I6+kNCIOpvIb9HSgLRVkrSPC8ZRSHhHTzJXI+6WrRgOyP8iNLt3gg+qLTb0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxDKutcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxDKutcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B4CC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750101593;
	bh=R4jX/E1BjlO8MpXRLx0hJqfuY3rQn3lcFgb5fq27FHA=;
	h=To:Subject:From:Date:From;
	b=HxDKutcKSZHahXTlPpX+p89B51VnBpf94b3a5N9T9/An7HLBoMB3E5VC0Dmv4Trcd
	 A6ps3eBQruR45CCTyuoMQ+E0jiQ50j0bnSVdmlPXaN3xDnrhc8/7r61Y7bzFGq46sS
	 PxMY0l7S6v4IsaCIt5+KO70FiJAfq3tVF1jqEJj2ZdIbl608ieDDHdrr4rH1+9suTE
	 Eu05Idw9onGczc5kjWKriBi0OMeZ3boxMEAQb1UeK6tj/LNFwK8bjgKhD3SW7+zZXp
	 xntHc+zY9J6+xHoa4clhE0gcgG/ukagGiV3p/X2OJCR/+qsQ1pVDfYjaRC2hjeGxgb
	 Lh3f/fV//jesg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95282C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010159360.23993.7571380552387884320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e9ceedd9e01e0b9ddfcbdb5bd4ca050ba35b88a2e34c0ad6700806058c7608
Date: Mon, 16 Jun 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750101593
