Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 353661D86F2
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741758534; cv=none; b=Ayia6PMxFZ7ZvnRGqbYZ/Obqw159O1uT8odumZXJaIFaKfB4I2nnI8RaLK8E8yh+LmMLmK9dZyD4vzfKHOLUWvDbxJqh5jNht2tN5HuxP4FXENZoSqrc/rtVPRTLPYlbjYHkZdnbfvAxR0HqTso0ikg/B5HET/ZSrc4jVHHHwI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741758534; c=relaxed/simple;
	bh=66yWtrGNajhgDVuzvpGtr34wdEgD5tTRYRPoZh74TCE=;
	h=To:Subject:From:Message-Id:Date; b=Zaw54+48V5/BzWjjShuirykLSfX9PvbjQNc9KeuLbm/mdNXKU9lHfak9SbXujrUrxWINVLiS8Oe97AHrgmQWZjikRdQGeqUjgZpsvniUfV1pPOv0g3jrNrDn6VwWH10FhIy42/dNpo+YbexBmXmVU4F8I3S8BZPU9VTbLmI0oZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYNt4qpz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYNt4qpz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C9CC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741758533;
	bh=66yWtrGNajhgDVuzvpGtr34wdEgD5tTRYRPoZh74TCE=;
	h=To:Subject:From:Date:From;
	b=SYNt4qpzjh3/ZgINWHeepbnPbxLVk6Hmd7hv1sGFnzS1pgcRKjeA5JSandKCHMiMT
	 qp6ddZGVkqY96VXquEzOvNnK+RnZ8wr06gr80BrdMRlQDX/HTmypo9r+GTMLtS6nF+
	 1yPAkv/C/8CpraB7/fF9meGRy3gJfnIwuUNrFEEexuf7P9pkmQcs+MnyooH7JWUo0/
	 EqcGSgnKwP2GP0vO9SKN2TlT3IdZ3LFNR77Tla4FPgSCcEGxyZLstQtYcEVdF4uett
	 LY7ePycv6xlkSUb8Zb9rXtY/QxTWomieizdyuQVotT/ScLOf6RAueq5Y2bvD50dN4P
	 6es3b1dAC6sjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CFEC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 05:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174175853360.9934.392629808676986070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6a809c743e875ef1e475f7d177fd224bacbd0b530b019d49a53dcd7fc41b79
Date: Wed, 12 Mar 2025 05:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741758533
