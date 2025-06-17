Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4033D3C01
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750139994; cv=none; b=Gf0dkYSg5JSyB7zfw0h+XkKBQ2MWMYB/PURaErnkEJZUx2m2Voverjj0lxqvZa3r2pMhxuTzBs08Uonv0V6wmy7NdZAQ4bt23wFDbhb0I+KR3/Qnit0lY5ipNR2ve4ulikJ2Rh71kcwn1oj5O+EsTL7kSqkFkaHOCRuo6tce+0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750139994; c=relaxed/simple;
	bh=QotkQ/8zZ3nkuEHdcrJim6zO8lT1w7ZEzXWZVZOM5pE=;
	h=To:Subject:From:Message-Id:Date; b=jFoVUpWZk8xIf2lmAKnIxnZY3UZCZppd8AMQTrfTiWDxhWMC0koyV/GWmmbvgFrF8FZu2X1sCuUneqZySGUIh2kyqHTSYVB0oZ8vikLnsF4p04mXFX64JmPhKUBKEApxBuKdCQWDjSiumqVdX8cGcIUtgBM4m4+KyVui6cxXnUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neABgDj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neABgDj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5CAC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750139993;
	bh=QotkQ/8zZ3nkuEHdcrJim6zO8lT1w7ZEzXWZVZOM5pE=;
	h=To:Subject:From:Date:From;
	b=neABgDj1SNHHb8DZleM5+d4GZ1mHEJRw1VYeZVdUOl++RNpoVeNK/HBPXhKXG+rRk
	 J9oqTqgLDfgW1iwDVrbZulGszLws6nCpG7JeUCF+CI+YkxfZ6h+ysxECsfIYiNcCSJ
	 uYBFysZIeVkvvNr6OKCI82KyWGBCT/JFBKSqkA7gicPom50FZzKTZkOLuticm1ioEV
	 RkVkqHf8DVOicmGpbqinsT6I4v80vsAN3rw8lyvaXD2S/UjjLbvQnE1VUHDXLpg3SZ
	 B9D4Y5Yu+xu7mdKs45W/M2nRqmoh/Ue9oz0d7PN4WVTRjfyLMi+gnUHHsYpuiHHJC2
	 PrGNsqIa1r0pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9605AC71155
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013999360.9327.912079806475229844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5245d078c1fa51317057a093917e33f27440cb6d2f9eeed42e5c12b3a3b547bb
Date: Tue, 17 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750139993
