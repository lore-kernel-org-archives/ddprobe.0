Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE0285C5E
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732125354; cv=none; b=IKE3m6o5kq0gTaqYeUqh6ORfwWUeuzxHCHTPAqv03w1D0c6Dp2APNDkiT/hrZPaBNR0qnkan4P//wpQ6ZU7Wf/1Fy2+Ie0VoTUO4wv88k9MSDDbtLb8Qf7QD+IgTxDBma+GZS2D2j04BCBhVIfmP4IQ5Hxn2FgS+X1OJSSuuir4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732125354; c=relaxed/simple;
	bh=YD5Wol1hHpDVJ7gBzH/d0Fpo5m7Bl4x8qjxexQ1K74g=;
	h=To:Subject:From:Message-Id:Date; b=a++8vBmQOtw9h9NVj2i2/IxChUacmtifbZJ/n8BXF6tQU9/TKK7t/4I11b0N9LG8MLGANJtEbWUK1ayITllng+Bs/2VT9bQj1iKnmypjslmJZUsAw/8M95+IoJWtdKYeY84EGLkzYjwgwDgiKnPy/r4Cvc5qRcZD6rVICe4Mue8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UMgdNpVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UMgdNpVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD56C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732125353;
	bh=YD5Wol1hHpDVJ7gBzH/d0Fpo5m7Bl4x8qjxexQ1K74g=;
	h=To:Subject:From:Date:From;
	b=UMgdNpVxXiAYaH/d9Qu5r1fRAoxiUS77Ci/qi3O8yQ1SSGfbvXC7niSQ99t8QEf1j
	 tg4KR5taws2cWndDC3T7hkKUbSvg9dAnOed3WhRh361MIFUhTO+U3wyrY3vlB/HwHz
	 oh/uMd9d060WyR4ymhyUdPkrm22Rdf8BUIlBwrgZh5TaBzcQUC4qHdMzTJKWqwtFg/
	 O+23CSinRZZ5Gd16fUAl6JMGe9RipaHcl8NTBodzWIbkPivFZzlZSH8F3z6kX+Rvzv
	 Qt6Jx0ojooXv6jS+z8AibWAb/QNXHTIR+0Tn5WrSwWiCjKCI6N9SdvHJcBjIEHJG1N
	 I7o5XrITWf+Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5720D711D1
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173212535366.30872.10588123990688497267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb9a0bf6494a17cf5447954c788e59272ad0a132c1a102738dc90fc052b4dda
Date: Wed, 20 Nov 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732125353
