Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D76C1D799D
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748249394; cv=none; b=pki0HwZsZPH/q38e481Kj8WFoftNKeLYs6kW0nouibzNW4LYF8/w5RpMUbgCTEc4afPrjt5xzjuuDIq7UwBo6YflGkjBDCL+Zn1u6OIAuiLuOgZzIkmeCldlrMdiheu7hUCVZYlaoNlcZ8zSxOGGGVf/er2Q4/liuBroQmgGPDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748249394; c=relaxed/simple;
	bh=Aop4nBaObMm1QGp482IuLYHsYJqFZYCIdBfMSl/hxY0=;
	h=To:Subject:From:Message-Id:Date; b=m3W6R5n+HYyoEPGY0yn3xCkQGeZLQ5doUnegBcv8rv+/qtMHLms38sNMnTvBXTd28PkCcooH31XBi600xudhTUWWJwOYvxY4zmfBbvNoDjGQfE1DfssiD8qWV53R9KOVEoec8rVRJ/9JNBwWGZVo6m1o+VAcJ0EBfGMssTSBYDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtEUEiCL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtEUEiCL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FDDC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748249393;
	bh=Aop4nBaObMm1QGp482IuLYHsYJqFZYCIdBfMSl/hxY0=;
	h=To:Subject:From:Date:From;
	b=EtEUEiCLVyhjcF8a3y6oF0zyd2GQq3CYpixdms9ZRQPo76N3lHXGsXzind1EuWFEv
	 HtKuDv0NdZpqvfJ2amMTkYzebGcYCXqY8GG4MFBcwB3t388Iqh28tijh1x5nNsia4H
	 L+dDApX8ze0DmaoKa3edwnNLcweA7FCPhrFFWupqgAgrhwFv0k2a1K18FFWYU5rcV7
	 Imdl9kjxZjzYxnFnEID/xx4CEyH3CSNKkd0MuTKoQv6JHj+KHlLkYscKS4PDjpaPXe
	 5QNDqDW1QBejz6amHbuQUmLWSZYlD4GE9crdW4R3wts0C64m0Hsuf8vpmpFacqixAG
	 Os8mmyNdu0RTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F1AC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174824939360.26702.18170802283695849359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c236efecd43a948459c7fbe67fa6407b896758b8d52380e2f55449e598eaa9a
Date: Mon, 26 May 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748249393
