Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE48320ED
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729917353; cv=none; b=qZWuX0z4rwy917VZqlH+MJuy8YW43ld4j6wUOKd5ItWeCH4jNpf7jTOzK6fSBDeW0w1UxOAhwVwZRig1Yydj9JoKCkINARBFOgkL9sBRR9JwBfkglqbAhajiM4lNQ1ga6WGJjUkeR+rQcIkXTaffndkVx3xWTNgFuFf24qoshdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729917353; c=relaxed/simple;
	bh=gcDkx9t9yWbgjJMpEMJpAKrIlUJb3AIAk36AnDPWDTQ=;
	h=To:Subject:From:Message-Id:Date; b=bmazjsaobvurzK8uYWRzmK8X2Cs3EBm7x3ZCwegDjS9pMNulCzxICNJCkVZOBeRWMedOulqj5c1s/2QHpnYfPIA8oo0Ih9KkXR1He4yIAqukduNNsvkM/3YATFgc9LSrfPOPMwgMIHpvzadfQH7RvvinjF65LwsuYAfvBf5YDjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XLOTtUUz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XLOTtUUz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F26C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729917353;
	bh=gcDkx9t9yWbgjJMpEMJpAKrIlUJb3AIAk36AnDPWDTQ=;
	h=To:Subject:From:Date:From;
	b=XLOTtUUz8K2ab3uc8GLEh6xW3uTLuoeBuq7y18EDRKu35CQndBvJDQ4wB45idQGU9
	 bKIxMX8OewiNhtTygr84dzAZJw8Pfw2bMsiqmSt/PGfX9C1zZJpVlIrEnZlUGGM+Xc
	 KvgCdziCsnH3yE887EFpm2qzdhFOREJpzfbHqWLY9RqogC/F5kc06n75B5FXqrwFj5
	 ut9c2hj3oqWdBqS0YcyGz9BXrHV5QnBDWLKOi2Me0Kqi2WtLva8Hi08Xa3HHWz42WM
	 cIomRWyUItDOmLq1mtciIUEs6nQjkJ5/gQBA38k4fdi2JPlr8pn+r7Cyl4n83FZVDp
	 vIRY85Vjbl2gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A59D10BEB
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172991735365.24920.12136630735132343715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea04f7799aeb5411a47aeab968e6bd4e5947067d19e07dabac37fe203c63824
Date: Sat, 26 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729917353
