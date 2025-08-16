Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104A822D4C3
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755339594; cv=none; b=HFa2pD9hWC+P/B0GfpyrAUp+UEshHs1yOKHGeXdVeqIdsnnS5Wo68sYESz3q46ypgVoIx6r2I9uxhMiU6hRma0NxA+ovfbU4Fxpt5INbBPbbgABBTGKbnNX/uCOv6gk9awkxj2cxPcN2BtkIf4T0otZEDQ9bFANKGpzCTz36t5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755339594; c=relaxed/simple;
	bh=ve1hvPKf0adSuyFOm9GIB+mkLiFwPpCO0YBM/X6e+dE=;
	h=To:Subject:From:Message-Id:Date; b=VysVTjpXIkMDuQTkSDOce1Eg2FLQI9mOdTvPJMKQ7e1aqVYHt50AH77jSPA2wMoKjdHWai6zc2UcXzOigvUpPvJvopsx6xhvG4FrpsKL/o/8AhAEu7G/++UYnqigdIzrosy9jS6l/cqphjWHZNwudVUm066g7ohgjXN+r6ggb60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TURjGu1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TURjGu1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F4FC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755339593;
	bh=ve1hvPKf0adSuyFOm9GIB+mkLiFwPpCO0YBM/X6e+dE=;
	h=To:Subject:From:Date:From;
	b=TURjGu1prujkdQinCm4KpkGEKfPo+BekWIpaO9BrFe8pmyxeFeY6U2ApDEc1HRXot
	 /Iza7rT8TjzDNVx/dfbvpZLk8zYMvBy7ZTwzH4qqzz+WHDuxVpWbJVa4DA7viKfM+X
	 6hswukWzQpw+uP19fhpfKw+gCDx5BzGdi9RjVLk7M/1I4jknrtXmIJ+hlzXJi838wD
	 epkHi1m+T7bRJpvnFZT6ulDCCmdEG32nGxc2mfg707xT8RCp2MFnW2nMItEU2Klp7f
	 obKY0egDvkUHEKTGN/Tl0PCS1+Vb3LNpUsTSkGUvL9Fep6yI4VlsLP0HUxYkmMk2i9
	 EjnoldTTG+VFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922D5CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175533959357.9445.7205907230530360136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52e5a53fc20f6a8899ef7012b6be04067c28de2fd5f6bf2221d2859356d78442
Date: Sat, 16 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755339593
