Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297C22E3706
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751693394; cv=none; b=Lv9ogQt170Dgzqu2xYclgOekFfOZxGsBCN9Om4CTc3kCV5+GRxulSdROEAFHjFsVaN6y7DIp7XXQ3jpnjk/Cuzrv/h4/FJ0OJR8cFrMCPRotID7WDQvFxZj2DdziYzvfrkQ2ce/WlaYESWu2LGv9Wz0dl1WzEYGpogQQ8CMAnb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751693394; c=relaxed/simple;
	bh=57ufHp2W6+FR/6OyjtJrrgLHXwQLC0sEjEl+kzrg/Vo=;
	h=To:Subject:From:Message-Id:Date; b=hC2pEhpjzjL+PhE8r+xOP+Udiqh2eNxXibnjIeR1bd9mZE4SXXzzIuGwCNM1+GO93gca503ChrNOj+sYrUi+W3WBJIkVnlPJ7TZuknICvM/EqjlFdI3wUIlpEl6R5WrNwBNVec+gUnkUVRpYW8DG+01Gijg1lRUXJjvl14Aaogc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IM2PXkx6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IM2PXkx6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A380AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751693393;
	bh=57ufHp2W6+FR/6OyjtJrrgLHXwQLC0sEjEl+kzrg/Vo=;
	h=To:Subject:From:Date:From;
	b=IM2PXkx6S9aVsskl9LrUefgqLawjBbZ6Fj0MhnSEJhBhe83WHw4byHbb2xh7VxnQ+
	 8rySiO01SvGb3sq4wCglmpSxN+t4guvD2MEfRi2AHDkIIKf6VKENCx/Hu5QBJi0Qp4
	 UizVEkaCVVJTV+ivHUHuwiZ/aS+FmAoFlxg1FvxuuXUrvStMD9MfYa1TMdOl3Fov0m
	 D05HNsgkJoQeskKRIhRQP7BGaAw7slqYJamdPVhrcUQlstknbM9sAJZLi+TeExo3a9
	 CQlaTXOovj1HGQ3MKvCDuDqCrNXBaGxN+iUi4vJ5u9IE34OdpOd0LJu6gM/p/TznK+
	 rVsqH2S8n+hhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BBC8303D
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175169339357.31298.6221489771997255993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eda20a55c99e89446dbb15dcc7c11a0beaf9ee09c1451c1e7a67fc21e94b94ce
Date: Sat, 05 Jul 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751693393
