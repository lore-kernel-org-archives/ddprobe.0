Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 207B3275B09
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755265194; cv=none; b=Pyu2vcq9RxZK704jHkzQd/2fKNTPDls2OvFX++7qntan6PGLAev37lr4Q8IV5scRQEs0k2fM8fMzUWh/akir2kn93AcVhDWYjg7U1sVN0AL1cbfQf5R2aZw1XvFeuaP7EQ8tdM37Xpn81y8EypWEYrl7fQ4bfiTvZWHn4K1GjWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755265194; c=relaxed/simple;
	bh=HXW6zn0q8czyvEx9pX7knPrJv9gK7xzjy4ndvj6OPu0=;
	h=To:Subject:From:Message-Id:Date; b=B6bq52cIY7YBWxeHekBgVscvdZp/7QeOS9C/ndfPXg3V+GM5KbNuPQZRsUzScKOWDxGQW/F6LlG4A5r6d5PXfGEoFFn7OwZAqY0gH6SeWdueSw9wK0SKVTxZQgVQHER5glcGwzSpwuQiS7PVPaJMKtb/HEClWZL9fa04bXcN86A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n0VSxLAI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n0VSxLAI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F38C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755265193;
	bh=HXW6zn0q8czyvEx9pX7knPrJv9gK7xzjy4ndvj6OPu0=;
	h=To:Subject:From:Date:From;
	b=n0VSxLAIQVQFSfKfleWCx7onTjOsQA2CfAEbNsQoAUeWQVdoe/MhD2BB8ZxeJg3mA
	 Cyf2IuuQ7NsxE+v+xFDVvO2RH7hp/nXvWZkWyARkY0BFXRQdpkoJz5EZdi4cQe3laT
	 +7vxOkY0lUlio5fz74Iwle89De77aXg5LhSGMUKA3hhARVZixm35h1ryCcAeuYcbBK
	 X+sTt3RrAO5JhrkJOdUBfNYps3fB0rIewnvXQ25tZ+1u9pHtwNLT+5o6eqEvFZGsPe
	 hdONIE/XRxS89UNudjGj8WzVLOpprTBThE7wfPT/oHTjga2tuWMKDRdRdJ4Me3l6et
	 qDPhV0x4OAzog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D51CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175526519358.22143.11608356860391765429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ce810f2a900b3acb91097fcd4efec6ca2f62ed34dd9d6c3560d91ecaf477cbc
Date: Fri, 15 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755265193
