Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF761DF25C
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780975474; cv=none; b=Zy733ANvbxPfdrbCLdYWDzMc1yZJa0vlvY8FpmWJYQjeQYdEFNu0cvL5Mq10xHQ/4L8eTLctlDVKmltWJcqRxJcubFbdfXWpaeHfKaHp0Vc7VxhHu6YPpfiBGTvs4Jis8wI4wOKU0O+NSyAb1O6PbDL1VBPrtWbtWNUFpKM6geE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780975474; c=relaxed/simple;
	bh=DEj5B/mCWQhbqvvPq/KnmwR12v/Wbrn9lO7fy+SSJN8=;
	h=To:Subject:From:Message-Id:Date; b=PVmW9N6jHTa6D6tM/NWGLLQV+V6D+n9GWKy+k9WaRnQHXiOJY31vm7CHFlfdPd68TEgCVZ8yjZfQ/JJ03++BJI2u06HEhauD9A82uS/+fn4PycvyuLL1UagovqnrtQcTT3WEEJv8LwDpgjJzhaQlSsM/HOMabl1R/djY7surUJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YARkRPUJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YARkRPUJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA540C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780975473;
	bh=DEj5B/mCWQhbqvvPq/KnmwR12v/Wbrn9lO7fy+SSJN8=;
	h=To:Subject:From:Date:From;
	b=YARkRPUJ20a5buPEQbeOWbu6IUWRJ0jqpj3884IvGHGojODHlZF94TiYecmPK4inj
	 eM4T47LgSWlWBaPYFIO6AyKgh5B86MtyAGiZ0qyNDevuRvydtJsfjLoq94Qi2RibUv
	 TYXcNJyW4dImcwI8r82wcgnWuyRi5zpktLk7mTBjgcOG8IezgfWm0dTYTp55D+c3Kd
	 Qqpw5rAEMfvryhS2sa4Tv5ra7L0eiu9D37lExSqrzVkSotAprjfBLf0l3coQah0TIB
	 dA10vZV43KWTxuVE1sXl+QsHwourSwC0EcY0CNGZj11ZTzZQVZM3cj5mVPZjz+ttyx
	 Fa+hoauKu2w4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD1BCD8C85
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 03:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097547368.27042.13475950651119647925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3c795f762896b413e71c53841b7e00bd432c465733082cbe9ac21247914a60e
Date: Tue, 09 Jun 2026 03:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780975473
