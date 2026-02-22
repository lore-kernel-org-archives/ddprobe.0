Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F0D1428F4
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771733694; cv=none; b=ejC3sqPgGuYDRuBDJo6pbeRp8VOMMkrv0/6RUPajwLSXku5v7wk9YqHTDDg1P8Dx0KqmXk/szVEwdTzC4o3h9tkIDxzaptCZelwjxWVgMTEC16uPfucfrA8ViL90KInG6OoF2hJfFCf7iouf1Tdo1kOaryROWqj78yV51vxEIyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771733694; c=relaxed/simple;
	bh=gEgwWCw5lVD6tlqbjD2HQywK+gTJIUbYSQbqmwCStsA=;
	h=To:Subject:From:Message-Id:Date; b=R7m1pNuKghNej4Hr+z++4IRxfH6zefsD22JbW8WS/vCkUoj5xfFq8cae4TYT6eO3p229Fp40XHZy0VkWseStd1lBsjFJ2d351Bbk0ttmqs0WsAfQzAv6FaSzJ39VGkTRV/AnRSkdE22I/LbB8f+Kqw8L/c9YYeepxdOJzEkSvuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHPGuqV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHPGuqV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5979C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771733693;
	bh=gEgwWCw5lVD6tlqbjD2HQywK+gTJIUbYSQbqmwCStsA=;
	h=To:Subject:From:Date:From;
	b=LHPGuqV5B5OaV0TPecR8o7DMLPcxsUBs65gbKqnE7jKjhkdl4OAFq+Zk4S3a7A7O0
	 +NH9k+DsRhzf0WXzrUVr7d24GXBMLWPBXIriYcl1BuBcqsj5RVW176ccy2SLvZihit
	 ON61PoyLas0wL/VWBW8FQ4d4I5ROiXPtQGhbvgC9ZhsUdDDNxIb1Bfk5D37dKwOuSi
	 t283X3Rs3gnstYflKntXngaFg/5VVAsfiMMq0ebl8yg/bs+eJg66sgN+ZQzLg46+nX
	 tcJqqrysvEiszGwZv/KfM7bKyWuK4xCSxwWRY9g1N8DdNG7BgFhc+A4+f8rKBmvkKw
	 niCBhvpwU5KgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92782C5DF73
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 04:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177173369358.27652.15827045637289967299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d1b36f36279446841fb7d11139e3e9f0650392e9af23dac80eafa1d3cf1eb2
Date: Sun, 22 Feb 2026 04:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771733693
