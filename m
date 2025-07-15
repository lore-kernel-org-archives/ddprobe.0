Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7DB230BD2
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752575994; cv=none; b=NQZVi1sg3TGnYWx1BfnIHQ/FNS6T6YS13NkoIsQ1albmdEAtgNYBJqsR2euwRqIU3bWOUYaqFD0k7tzTbJGa866HSY/b0+yEveOpCoeCfvxLu4oUBOhg2VOBKFr3xCjJJvRDhZw2jPjqBUHhhkhNQnpV9j1xVh+96SRF7LVEv+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752575994; c=relaxed/simple;
	bh=5U7CXIgtrwOzyQ8Lxwu52JWkfuWFGzqeyCbTiy8kOJo=;
	h=To:Subject:From:Message-Id:Date; b=H6RAu7IC/bwypA71xX3rSNxoAJk1yaL3uu8PyjXsOFehMTqKWNAyCReilBKQecErVUaMdTGBkLDMlL/4IIPHNOdPVRFAJNEqE+EEznnHX58zdOKVUcoyEkz/KFpRa9LcXUsafkjd54bmWas1rLxOYBeA0MSZajTlPMwuqCFdXrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji7pSILA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ji7pSILA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BEF9C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752575993;
	bh=5U7CXIgtrwOzyQ8Lxwu52JWkfuWFGzqeyCbTiy8kOJo=;
	h=To:Subject:From:Date:From;
	b=ji7pSILAzU2sLnN+Bce3K8AXsaUy9B+Wc1ptPhezMEdTca6xEyLYUPDckG6iZfJoR
	 /HxEhr5gvyZQSVpPEFKtC1xqK0px04iKNiJ9JX7ZXUNM0/qM2g2tRz5cR4bc0dsxOG
	 lUwivobUhZQeTHOzVHdfhyR9/Fer7Ho+t9UDdHTURwoXLeOfNN8r+N9LkZbC+e8Rtr
	 Nf7e4QAdk0P8tN3Mg7uUIcFGnGSGDMjyVPEnvWdTZO7Rx1vCxU8giPpnr0LS0RSIDq
	 8FURZE79e+Vinvhhi1g8mqxBSFm7lx6MweZ2zhbhRKzLpQEJOkS5K83uFdJUyqNa9L
	 BBS6xuDshjYRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAD4C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175257599357.16514.13216695393973760475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e1b471cd64cafeb78acc99e72466302d803131ae02908d557a2ee08b93efa31
Date: Tue, 15 Jul 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752575993
