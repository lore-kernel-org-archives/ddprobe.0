Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0BB3016F7
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774534495; cv=none; b=SnhtmvuIqPoMZalGZdRGM4YwQrEH/g6/Dr8aTSIEibIdr2SkTqPLIdwIsk0wLcLP99b1gT4A8W3Qpl72q2xRNLRQwQNhU9uCz1rJwxnahXdExUktBt/VUmhpl7lXFh9q2ByGj8kKpg2Gblo6rDYA3jQqWkkOkNhxUlHdFoPtxuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774534495; c=relaxed/simple;
	bh=XqkQ+vSh88jlmg+4uFUihT9SxLFjMyH2P9A7V504F54=;
	h=To:Subject:From:Message-Id:Date; b=TZwhz+/OJf03otL+0qw6NO0dS/uePg3h7TBwfo8c4ZTD53nszd9Fm/fZzoMXpbseHVEWTzUtju7KLrdBNfJhQzQgTqH4SpLVdhA7PfXPlMuvnO+lweHzN8iSt/DwkMvFf65ShBIDOr8GLR6hCoCCVB26AWVml9ENkyxd5h/njN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmNuhNTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmNuhNTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA882C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774534494;
	bh=XqkQ+vSh88jlmg+4uFUihT9SxLFjMyH2P9A7V504F54=;
	h=To:Subject:From:Date:From;
	b=jmNuhNTs8zmy/0q28hMyfeRYBsdwCTPob4nrg6k7lVXfraqRgpPMCjX01qKPvQsPJ
	 RCt/xBU1/LFlzijdu45iSGPWrty9H1MO2lQ7WejNmfj8E2hExWjMSiVMY/s+6fnM+9
	 JVwaFNsFSKJjCUx+ep+wUyKvvr3x99KgyLP1+F2HXa825480KjpyCkRPHRf9hymxPX
	 mHZr0Yq+RqLSh/0reQINYhzS5wZI4efKi5hxbn5XFIPXTkAO8kBzMPNzjjuHezRqdq
	 fz/G/KnLPqjB5xs2X9RlRpYqBzoRaha5xlX/yOGQy/cvGeMXYkXHWwc+5BqNjL02S/
	 Opbx6ZXnDlBzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989EB10A62DA
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177453449361.4145.2637252187289722927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ed2c9a7d27c30b94e7e6176ac77c25772c6ce4b32fe658876cc07c4d66fbeb8
Date: Thu, 26 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774534493
