Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F94F7082D
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756423794; cv=none; b=PqND1+odn5Wn3cNgpULqyEhs/8Muz6DZKqxfs4xMiLfO4xOyMSY+IoPKCXhW4r+W5/Pdpqy+ZzzV0eGekKLrQwP3fJtyr1UjJzhEPtEc4Dl3+BSdJeukrW7IiU3QLuZXzI01NighvoAyVF/rfYLXL6ryHYRJlbrJ+cYzIpzw3/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756423794; c=relaxed/simple;
	bh=0xcexcDIedKpD1f9BxSRs6BWtDJxdNYbq0uHxv2Xxik=;
	h=To:Subject:From:Message-Id:Date; b=tgUAVjj99X7hNeOEWCPm9+Uj6WqgkCBUawqrFeOwx6NQ5+in0kjvj57qBkcQbSTXe8oq8+um6MSXQ3Hh+Ry3fZztcARW5duIV1nAc4NwI8T3SSu6Z0AZ8qzl7sMOdlJhRRAZfC2xBrHxemqfFqyOF8QL07ZO+suskoQpFeWL1h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryW4Or3N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryW4Or3N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AF3C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756423793;
	bh=0xcexcDIedKpD1f9BxSRs6BWtDJxdNYbq0uHxv2Xxik=;
	h=To:Subject:From:Date:From;
	b=ryW4Or3NHwjgi2Py4JQH0cnsUq5PpOqs4d8ksHF/03Q67pxTPy7cxnaUTjTPcz3Ad
	 KYeLNzFHvK4Zc6huBz5seTFnw59WCT6dwYJGvmq73DvKKne04ZVwo7qqa2vkFFDe+6
	 gpLQFnHQ0YpOkRZX4TTMB3c8K3hc51hhYnE6hZx07Rb6wbsL0dHmfZgIIxnG6zaeGH
	 HgPJX6nfNSTNIB1RyQgFjncwReY8AF4u2uGERDSOGM6v8y8QYo1hia1dOejIZ+jQqY
	 ZOLO4YxKnecdVCkShU1hM2bBZs00XeoCBDASsaP6xiXOlktN+RE1unXihu/c2Dad6h
	 Qxmqm7Lf6IMRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9176ACA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642379358.32737.18056336910998004340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308e41a7ac1c81cabc682e0d3d0447193b63a5c899aff2fed72ef9c112886021
Date: Thu, 28 Aug 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756423793
