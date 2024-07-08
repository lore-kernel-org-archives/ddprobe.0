Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E79125AC
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720420583; cv=none; b=j+KaUzb4/k7LRmORQZEvCCkzMyMpneIb1prVEW8ecWKEOp7o3awEVO8adIA15/wlWlfXHvSpAhuqK8c7Z6VWCwB9/agDPKQ5Ylbg7rGYoa2BZXW/MO/35zSkPi72vssNwpAm6yoISLjLSecnCmInjBHXDnJ/Fh599qdZJQoAORE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720420583; c=relaxed/simple;
	bh=X7xE3qIF6LHI8vTXBsm2smmv8v92CGn8UoIOfmzaL9o=;
	h=To:Subject:From:Message-Id:Date; b=oKwwg1hkwFPulpcm1uNN7RVqMxtqvCfrlxu9i4AlVQqZQ054yyF36aKti97zi+1JljXeN9/z3/p2f/9oZpCFVArnKUQiGfiIQV/9RA5xsK/lPTDnd02lDh45dkyR3tqYlrCYx27kHjLihwNSXeVKpf3dWzNI+//VQe4ApRp+3hY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMvBZ49R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMvBZ49R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D132BC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720420582;
	bh=X7xE3qIF6LHI8vTXBsm2smmv8v92CGn8UoIOfmzaL9o=;
	h=To:Subject:From:Date:From;
	b=IMvBZ49REpqgTYGlAEQ7AhcmGOXcNxfwGT6MKvTfVZsgZlkyX8ikkrorxDuLY3eZi
	 Dcs8Zw+WeBh7qUdzg+71hQyP1BDq5EXrkn5ir2LWdUjyVOrqT1qr87pYVUg0mnOCdJ
	 wOvaD/Ksh3xd8bmJWU0iFVw4UosrXTAqYSHn6nDq6coWV54IdREIT4oPUaXKZpAIIO
	 zkCLdQl8cYGx0aLg2AmryU+a3oL1ujVt6KRutfxgsiApJgfPY33c8GjFVnHvY0H4Nv
	 0QG90zSaaCmbrZ7BH10h5chSbgsgdgUSSAHQL0FEodDsPnIDGIAMyEte37qUIPJZwf
	 AdUYgfwTeQ80g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE744C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172042058276.31821.14283249630716945677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7125edd48d33e65145a1f706539ae1d5e1e64825f063897b156ada53567f0aec
Date: Mon, 08 Jul 2024 06:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720420582
