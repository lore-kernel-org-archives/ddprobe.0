Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326F53AD516
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788854434; cv=none; b=FQVvjuEMGnb3bi903J2DDgcS+ewFjXGjd4Lv7CYMXr8rQYxhOiZgM4T6JKaqPO8K2rG8jobc7Si4acSZsbgZ4ZFWlW6Sjm2r65IYBom3agbAcR9u5/xA6HRpnGnMaIcnQDMiWYOD/npe5Fl39oXC6yazMCR7lblYtmLPGfmw29s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788854434; c=relaxed/simple;
	bh=zJf5LDHWqjm96LtbQviHItebPKaiUVjHGQIqk+IBsuU=;
	h=To:Subject:From:Message-Id:Date; b=taGnUlshQK7XKpKKu2mvlrfmoj1qV7zaWxBwbILR4g7VlcC0XdDUDdIrKojnBt+dalxsqWGZN0dcKsSYJsUjJN0RO1hRW4kuDEqXKfOg7dJOpYorEz4NJYxOE0cHNV5bOwf1t+YK27LPISAtl/4fmKOMcCMjatf1rcbZz8qcJHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvFb4wMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvFb4wMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8E0AC2BCFA
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788854433;
	bh=zJf5LDHWqjm96LtbQviHItebPKaiUVjHGQIqk+IBsuU=;
	h=To:Subject:From:Date:From;
	b=gvFb4wMUG1aGkJhdXpU4ibHNBCAsVGF6+k5ZiQ38N6ypNOdjPAjmLAZXpzgzroaeJ
	 q2Z0KNpKCDFOIdTVGSNXcFXiDzFP+Nd1lJnj6xWhc/BByqZVrt3vVimA4MqxllBoaB
	 b9LF15gl4pYh5cug30QL0REKdAmQhNWntzW72djMIEr6qoj5sJVwGC5eGnyLdK3krk
	 T7Mdfsy664b4fAIl7CbGlNPdjhqXG9mDa2MWGsLW5n7LeO4aeicCNTvJrsSv1spNIE
	 PuLJx6YeMqYPQxfm0Yaio0eiirq0a2aBO78Ni/lUsWthU4O/IC2tG5lJ+hykRY92pD
	 U5vhRpjZmtUkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78E2C79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885443374.6784.13581466968048943021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f8fea51c00b95f7ddf91fec3a34b8841b8bde1c1b3f850c5f472f07a52117e
Date: Tue, 08 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788854433
