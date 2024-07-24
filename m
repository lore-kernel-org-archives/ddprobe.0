Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303042E639
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721863554; cv=none; b=igOtEUoAnIvexLjzz8ejgfOO+KofpsOGYxy14/9xRT1DhBdNPmWjO70OngMQSTBe3e02am1cgkAKa9rWXV5gUrwtJcuw5wkZDSIthwHkepdcjR/C+8ev5Cye3rj1C6ssMONUB133tXqdyNcp9rk1r+3pDR3GG7v7RkXPUEJLGGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721863554; c=relaxed/simple;
	bh=8t/fh3atJuTYgzXOJj/X5jkA5XIswDKLIzVbUZdu1RE=;
	h=To:Subject:From:Message-Id:Date; b=NU++UwQ1vIYGpjVFUxetiAOjK/75ES5v5Os+i2fvt5AxZPFoiQhLdU+59uF34oxFY5B2YumsgXS9izKzalywsotPejZg5SoZKmgO6kLTTj1BZAY5wM/7w7fvu0LZR3VC+WXaWxuDXkVai9LRGHsdY4UbDVTZ0oEYElkTbUHH23k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR+wh16V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DR+wh16V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B72DCC32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721863553;
	bh=8t/fh3atJuTYgzXOJj/X5jkA5XIswDKLIzVbUZdu1RE=;
	h=To:Subject:From:Date:From;
	b=DR+wh16VzLTGymKBLSknl6PG9EfBaz78stzlCRV7PkvafhNiO+QwwdVy+wflVAfC2
	 kxQi0o5YOQH7COGx3bxglFfeID4kTD8VdwUC3YsBE1Kuj9Vn95KV8f0PzrPvY+nLlN
	 0wXu3V1lhxWdBi9WNxtLbHqlNeLAPfzLANTvgVmkIGEEkAtmDqLD7FI2qDZhJNokBM
	 FnVLqJ8cIczFohHPC3torQMaq0sySDrz+SqxJnoCAbemJg32r++rU6/9DyuBpCsRYe
	 5uGoQTXkxsfW76IFtTzhQ0akS0Ciy8GZiZffh3oyGB+5NSsCJMjVZ1xto5qY783Es4
	 q4vNo0BN1Uxgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D37C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172186355365.14375.8570313353913639512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5927daa23aa92605e6fd073acc828a44b880db2d47396bf6d9aa79a35db01c21
Date: Wed, 24 Jul 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721863553
