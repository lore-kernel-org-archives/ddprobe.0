Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3476B22425B
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766873034; cv=none; b=Nte6+0IQqTsyBDw/zV/DgjCM9JkIDDNVjAAzK44rF4hVIzY3qvT6D9pkFFjiwkLQkpsRn3uHSXipNuG/mMhpFSBniPTfUhhbI0Z/L6N2ePp2jNBmx5d9VMqv6ZAiZm/jp+zviSRGZnPiyS8+l453wGxe7LuxK6KsvpUvxiHWBOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766873034; c=relaxed/simple;
	bh=Kx8eLM5RwHHkoSt38Cd6PqdsgqJG40kIwTcYPLAvtus=;
	h=To:Subject:From:Message-Id:Date; b=P0Q1qUiPk/XkkrbXeOP5e0a41QOsVVufwdMLTqKGkZS0rxxcp4IPg8J3AfUFM+fwdeTtRDnsr/udpqr5f966zGQniIg6O1lKJ1LfbWCJRHfpLnv1VmCKRWhWKwOI3Lq5VhgKKNW/A8OzfyM6DOwiB1l7feB07FUla2+/CL/CB1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONUvJyvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONUvJyvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60B6C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766873033;
	bh=Kx8eLM5RwHHkoSt38Cd6PqdsgqJG40kIwTcYPLAvtus=;
	h=To:Subject:From:Date:From;
	b=ONUvJyvhPE3SOXroDJ4cJ7YbhOYC2xNAuvSlYj3/ZTjGEzzs9t9K4KvjYuGbZd9kk
	 dUENu07f6Y12sYC0q2B0RSth0mr/3npCeh7fpAhXCrfdhc0sWMCE6bOHwHL4ShfwCQ
	 MgEgXVwZzftx7rXq+WE/DiMB9F9nLMGB0itsf3TxpMH90/CIGTFhK2ATQxQGSDc82T
	 NAyD0az1TaG8C3kqYx0qxpFe4s+ygzS+7fSpgUx/DQQvGM4GMyN53YBiNf8oBPAMg3
	 paYy0njVCi3OBel8AGalpK5x87d4K6A+Jg7WuKrLFad61PiVhLYUiEJ1jyU9rSeMVw
	 1jkh14CSaRmuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB387E9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687303365.19085.6187632872232919597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec031a1763eb2141b542f3a5b9cef76ecbeb65276dd46c43bec44ff3411a5711
Date: Sat, 27 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766873033
