Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400FC25B087
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788052834; cv=none; b=Xl6+RXV96UH2QVzKd8CSmfezPUtLk8b2udg8toIz8CIUJR8CK6ZmWp99AskRZm8ROcZoOLs94wJmltw5wwKgS10WGq7g6vtLNo2ldSpnIvEMeMsxX9QNwQVJQSQkNFoe//jz9rDFzNnLtank7w10c6dSBnDEN7VQewBsHLJTGDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788052834; c=relaxed/simple;
	bh=dtv0tNBoswPuLseF6kDP2fsQ8fKz+dBGZEl7uW1RZJA=;
	h=To:Subject:From:Message-Id:Date; b=SIl1f3U3amotL6Hb3YXV8wsEhHrnAFcniDStd2xWU0dNGyTmqt0BzDOpwqmsSR7BwV1hXoFYrWcrbgUJGJIsKtmtLS6KPewt/Bczo+Y9Rp8vylsVKtz3R8XToq0h3JMy3MsQK853Adz3izwlc/up+Fc3fJDUr9PrR8llahbYWhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZ/IoEf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZ/IoEf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6449C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788052833;
	bh=dtv0tNBoswPuLseF6kDP2fsQ8fKz+dBGZEl7uW1RZJA=;
	h=To:Subject:From:Date:From;
	b=DZ/IoEf+cAzjWQBsJAmMWyU3aBIvU/7hGuvjFH0T3IHzpJr8jQpPSB5tUSWzOPVfE
	 dh5hVMtYRhItf7VzYHDiGxAYiSE6QuwW3OpgRPvY3sdxMtki3S/B/2XIG+oEjIvb8L
	 OzScGYDB6YHDXa1jG1MNESgrl4IL5sx0JlCmrH5MYSrXMzf8rU0ap5sKmMvHJQznN8
	 7Dn8Gi7hf2PnGChl59TeyVR4UV0ez/eLBdLeaHqmuY5Yjy7/69oKdpioWI7XOzaaU7
	 G+svFgGq/jVTTIiW78Wb8p5XM1foGFKvJAokp/rphu39ofqHaA86+mPIm/WM++U2LV
	 RNK7ZeZNWZ4rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0623C61DD6
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178805283369.28382.16644221532622225211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916e0bd6527397a529be9e08eb83ffd9917bfa241dbe1b09d15a3f9fb709e3f0
Date: Sun, 30 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788052833
