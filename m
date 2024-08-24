Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F04182B4
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724474754; cv=none; b=eETLPHZxluaqR6A9d0Av3b/PveXz/Oon/yqzptKgewh54+D0xvLMSOaDEDQR/HxyGEVWqu3gLpkLvo7bfXIqUAj+r5ZdCHxNiKTtvRt/T27llizsYbnllZklt6LOYEr0vJOXmKu5pEOMrupVNNOE/u2XqiBCvKDLpDGh6k69aWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724474754; c=relaxed/simple;
	bh=fldW51qRVHWGWaWvOtO/tw4oPfX3YlMCJAEMTc/iOMA=;
	h=To:Subject:From:Message-Id:Date; b=plkJRgHKFksi2Q1fnhBAT7aX0QNND5PeeGazkV1poTaE5fpxiUlUXGC32JYBVcTPNC7BjxDU0riZwy0VDJEYESFQJBvjrcyFD7h+8e4iBRPNOS7ZsXpqClrnK0eO9tUNwCye6OHBioat96UXgLaSn0XZ0ISbfgDno33wJ3slz3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ndlawj0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ndlawj0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DC9C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724474753;
	bh=fldW51qRVHWGWaWvOtO/tw4oPfX3YlMCJAEMTc/iOMA=;
	h=To:Subject:From:Date:From;
	b=Ndlawj0/Clm0Gmqw8GUcFkpJRfbHi6KqszyGXYS0W2OPtpgLpme3EctmlrLtIp4J8
	 EDgQA0fWC6fewWRM6FHer/jNyajdL4/tQ5Obwkdr3R1ScxWLSaliJTWlic4VDF1Yul
	 WiDNLMT/hrD0z1zMwonqO/YZbhVLsuWIes8VlQPOwHYoCAqmgdinwv+Wyj3d0nj/Y7
	 jMao0FWdblGiImbygTjcEQkrk9GNI0VTJPra9XM4unxLwElotkhm553t6m+L4s0La2
	 9iA3xq3BFnLjtDsEM3Zh5vpoPItmzA4K6RB9YYalL1wY0qGkHDKyRsrfNvpAzAzlGf
	 RW6GqZP9zTzTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99ACCC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172447475359.15923.11096278008501451117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a709520d7e3291e136c190592cfd16aa9611d1ab6597909c57f6da80ca7a31af
Date: Sat, 24 Aug 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724474753
