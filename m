Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAFCB23099F
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749763793; cv=none; b=cFIHPcZ0U5+7rhH4/xX8ClcutJaP0+4wWSoeaCbqPqqQJ+nCs/fe9tuCsCXDLdZIIQf6xuFCHtk3vYLr2ex8GFLbEM5QLhOwx7D8rW95ZwFKwI//biOHzJg5KEF4GNWDtjv38KliBDmMQRVdb0A5T9cqYIzpOXDcUJ2tYkSI5PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749763793; c=relaxed/simple;
	bh=Kek3YuKx6nGh2KkQdnfOQgyChLd6D3zbYQVDdBHQHAk=;
	h=To:Subject:From:Message-Id:Date; b=OTYlB/dr3+oPSGILe6CGNQIlUloBCG3al8bqqsMPNlRZadY5FP/7R33COochZopjfXau+2gwONf8dd9VRafI6L8/itlUu1OWNxLsds2mTjIsX9ZDVGYfpvvaKUAWzXUUat4b7Pv6bTt15k1qgBN4E4LfagjqRf6aBaAwkTBgVC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bopcWPyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bopcWPyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C71C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749763793;
	bh=Kek3YuKx6nGh2KkQdnfOQgyChLd6D3zbYQVDdBHQHAk=;
	h=To:Subject:From:Date:From;
	b=bopcWPyZ7SsXLvW7mShsQh/W2ASp6xN3YXfqNvhrbaV0FPmaXM0UvXKNbrre7V2Ip
	 ZlCGm8OSmh79UzPGpZlana3OKmLM+qb8ibTpT5NeVN22b3QEVTMPIZ+8nqVrXjKbsl
	 uKf4PP55R/8Ym24JbL+rl5Hb1koBds7pp6wsiWJsFxpTwiXJXD5Enw+ae4O81VYUZE
	 FOLv49ggVZ5nmYxuY93FADHzAjMYUyxCca1soSUPByDIEtomA2yXbbFQh6PYVOZGg8
	 NBCzEBwpmeY6vJZFfyolb4rfY5KAS1LsFzdWTxl9K8PwkqrR76ksRbbFFcIQTz96mN
	 73i+8IfRvGImw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A02C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976379360.4463.13969130580696125357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f04b9a1c23f57a7b4f60c48ac0dd9376d4ac22ddbe4be405aca4d1ce691d9d
Date: Thu, 12 Jun 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749763793
