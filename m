Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360573594E
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749911395; cv=none; b=aNldb+/Fl86DeNonJfXxio8Cuawq5BARQq7hZCoAP+ALsA1FuFaqgy/Dm4KkQt7Q3vl8q2pBkkUZvPoPAaEzEhXUVP+NQyBPiBXEjQPJpm6gkxMYMBfkyH50qvkHqAdd549OZ6Z+nPFtJ50IQV5JtwfRhKQFh58K/8Av2gKZSLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749911395; c=relaxed/simple;
	bh=YhzJc1vDOAfqwoma6PX4ZUczUedjkb6+edtnI73EtgU=;
	h=To:Subject:From:Message-Id:Date; b=Na2AfzM9x9xhxGs+tG1MlByVIuOU47FJJOqIG9yvPCOgL4EyqBOnCSo5R5NT3ppkCW0GoeMx/3UjJanAmR0SnwSCZQnAQI5R40PvHA5bGVSbq+WhM9HjwBIsuxmoja5KxjU4hrmt4L59IcD52SF/lxUmHmEPGq84C9SM7TgFhHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3Z+oiAy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3Z+oiAy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67DFC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749911393;
	bh=YhzJc1vDOAfqwoma6PX4ZUczUedjkb6+edtnI73EtgU=;
	h=To:Subject:From:Date:From;
	b=n3Z+oiAy8fGv+pPJWagfW8wEniwVLxBhg+7B5e3fB7w6Bzs9ppH4f/wxo6vXY1lQH
	 0Cfv5E16TGDbUxP96sUyRLVNdNuyQ9A/IZcmNzDsrIhPm334k1UIeZysA6YelvmkYW
	 PlEbIFSqur85dISlOcxcvb/B9rL5nslfo0btNLNV/Z1xpYahg1GhPfTwxyuAfDRrHY
	 NnpFwp4F7k7A1P1vx23rn+HwN9IJOhvDA35Pe2mbK5Bbmf0RZGw5bJIV0tSf/iBDjV
	 4pWXR9JWqo3umqVBZBIeOg+DcftDK/S9RN/nDib3fodiHXmJxmdRDFA2VkPX6ypMUu
	 q4kq9guKL9aEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C05C71141
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174991139358.13982.14536065537369254309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fd0b67eb9523494ac2c8ee40269acb0eaa389acac76b1ac85c8cb75f0fe8fe
Date: Sat, 14 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749911393
