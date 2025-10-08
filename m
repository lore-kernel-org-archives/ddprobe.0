Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CB3238149
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759900194; cv=none; b=l63vknwUERcBErTsT5Of/i3PJd4Ubv2EKRdrMYJNvis0lNCnxzt8xEySrD3SnRaHJDL7XDBlNlPl7A1HxyfHns/84Q5h9tEu/iVjRaHT46rX43nlY/sjL+krD5m0/oBmpzLeUScUvVkxxEgmqfLMRG/Nb2yq4s2Cz10M9hc6NOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759900194; c=relaxed/simple;
	bh=SqbYJxlE7lN3lT9Ksf75RKzA+j+Q+c36jgXstjmgM/A=;
	h=To:Subject:From:Message-Id:Date; b=fYJwuFS6ZV5uYx6ZpawDu35bUlxmSZ3m8FEfj862tXg/fL+LZiflHIoSjEOMw1HUQbTc5xxozvAi2uoH4bZ+clnQb1qmClqWNpwfYPrEhBJ2zaYuivqU/753J3oQl1qS+li9s2q+Y/nVLYELD/2wFJDk65KWk51AVSTpMJePWus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ta57FRZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ta57FRZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C8CC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759900193;
	bh=SqbYJxlE7lN3lT9Ksf75RKzA+j+Q+c36jgXstjmgM/A=;
	h=To:Subject:From:Date:From;
	b=ta57FRZm6GjtjlelTGjjq3/h/m2NhdNSQBdQsY6NmKr7PavE2jB3+TxX3NHApPCuj
	 Y75Z5F8mxATHO5pfJMqtUzmf2Ox+m7ik4OQ7UTy8C2dcMlMa4EqS6pJENmV2g7vxHA
	 PthooH9SIewr9sWX3xXZKaFl37rUzvwcN0TPF/D0rRCjOWQP0+K85UAw+XgXmq2//n
	 OWSoLNdyAA5CVvH6LLFZaIu0yoJwMKYH0EpCS2VrMjbx3wCU1PzE4R0+gj/IVQ4mRE
	 0UFVHoiW7gwO7hOtbgUkax643wopjtwOEBuv/P6SR+HlYct9ngupuox8Ek2Nu9Gc0Y
	 5GQgvzGZ6E5NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BEBCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990019358.17128.10669951539960029012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d002f673b980642ff81fda487e79f47432fc31b0066f53193c2866dadf3fa7
Date: Wed, 08 Oct 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759900193
