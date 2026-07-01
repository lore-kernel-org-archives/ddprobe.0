Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E802E34678C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782938914; cv=none; b=t/I7sD2TNPvwZiy6ETfcsOFcLk0EBzgJyrbIu/2M41YElYRGUcYRw1Ouojz5uYc//DzXvAjsrcTjDavBB/m0It56zKB5/zKTwyndiHbGzVqtmoewkBvgJTavzOxesricQmDg3aH0uckVSeojeE8niRiibuA2AAEwNd62enoQDow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782938914; c=relaxed/simple;
	bh=NQP9ASSnOxPW06VGH1uzKHJ6q95OzI2ROECDakp/rYo=;
	h=To:Subject:From:Message-Id:Date; b=MwRbVq/etl1N47cLgBdl7lHGMdWVkHUJi2lqs0LzGtKfI4vECE4T7H0efMDrxpDxrWmBFLsWq8SMy6zfT5qpkb4tCc3Kfd3fXlUE7Kk59FYuv5KfYpzAAmdm5z+nNm8DoSsXO2JQaQFbWhaAmwzmMZbV9g9PWhDZb2pDgnijzQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acj0qRDw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acj0qRDw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C6EC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782938913;
	bh=NQP9ASSnOxPW06VGH1uzKHJ6q95OzI2ROECDakp/rYo=;
	h=To:Subject:From:Date:From;
	b=acj0qRDw+EjapAQ5oygwDUr0SjLzuxxxUxQvCPnj1EFK7JZIbOIB+Ix8CIIktc3iT
	 fAFc/z9VceGJJNQAf3zWbLm/j4+KYTichdif4sGFik1YVzMf251xczakqz82D9Ra2Q
	 b9NbtTAEtSCGXKBvcf+6jSo0Jg7rbvazFr8mP9wH0Ss1cKl2EI6XufV3G7vPf29HGA
	 sgnE6gOcjzbHzWaK/2oV5DFjrFXrF4x2judm0V8BhFTFfy4hXt/N9YljzgXGNjW5wO
	 /dZprkJaAflrUIfFKnZOsY9H6n3ArkuHsS2T2jPFLRGAMI5iwExPrD5K0bYUix1doz
	 8SZ+VkE8chv+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B70C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178293891368.14453.18205759627210512125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4917ef1ef144c43b950a27009ea0175686934fbb1e11ec853f602873e1ae130
Date: Wed, 01 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782938913
