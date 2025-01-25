Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39348800
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737828354; cv=none; b=revCAFviA9h0x3nvzOq71bMID41FAOszkDxTkmfM8NTWRTWvIgUGjR0DMpRTGUBlstA3fSEExZPphyU0l266v8j0g0a01hBq7Uc7nJUJIi0ZIx8DE13TsO4YARvm/VDRXk+pgKxaHptAPptnW2+S+saMu/lHqhGObTJfmMd4G/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737828354; c=relaxed/simple;
	bh=VodltWETHdUnSEq2/dGpY3IFlgiwRDABBU+/SKUqWkE=;
	h=To:Subject:From:Message-Id:Date; b=jXhS6j5qVcyHTDWtIIe4iF4ae+g4fBsMpDpWRJgXKnaNGBaoies8QplwP9xUndk6lQoe+bnTTylOUso0xeU1nTNbENBW4ESkBS51pVJSJqPsntJwxI0Pll8wS6/fdrWxq6NTMFuZFFHmzlofrTZanPyizzRk8vJGwXpyvOzxiZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciGCgRfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciGCgRfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6C6C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737828353;
	bh=VodltWETHdUnSEq2/dGpY3IFlgiwRDABBU+/SKUqWkE=;
	h=To:Subject:From:Date:From;
	b=ciGCgRfQzcn7R6qpmPxh1hr7EKgWtwjcdp/azN8qAqnCYFSRmY9cJeUIwaorwAviK
	 F3fRdfOHd98XjhDsznJ54z0OgOAWNTqzOngpjYiggi7vrKm/6rdpJPJuJ5gwUK+2Bz
	 POFZ6pzESxGii6ogJNSuFaZyJt7VOrvKG6qA1sgwwyAXmaTQjlaj+8AwFvzxxd74AC
	 ncCxMeIQOCUnyh5/En2JA3OG2QHBwoKyKeQJ7nNSp+OEYFs5x75veBJdAqcNZxMgoR
	 vArzXxKkLnJwtvxa4nXuD8Ukq9+0OHiTSS/zd1+m14RZGkgDh46gw15CJVGEny0oxY
	 g5+hPf3Qr6Z/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E2FC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173782835360.9177.5177447570370084613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ac83ad652b54c6bfa78eee16c8748dd7688de5b27d45a37d1b6c9645aad622
Date: Sat, 25 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737828353
