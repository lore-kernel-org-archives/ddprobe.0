Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7EF346FB3
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783459114; cv=none; b=taNnyiQ2k73wv6l/2gzNLXWplLIW8+WNlHwGqpa7IY36dQnYJxr76cfFiULOWsHz9JeqcxGISni2PpfcKx3zKd/TkfYIG3xOLORf1pg7OPkH7VsLc3ntVkOnn/dEwASWRx51vPkW+aqpkQVcoUrkIRNj7BnKagYD1yD62zwLmuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783459114; c=relaxed/simple;
	bh=hR8sZ58lDvoP+JD1D6hfjuUYBCwyhvEvKdi7jiTRa7U=;
	h=To:Subject:From:Message-Id:Date; b=rzJBuLm44WtYnQDzmgtDFIuDy3lQsvGIFA2alcQqhrE2wIlgyog6PSR+vGgHPy+OflPFhDYPcA2gwdeobxt6/ZKrjF4qqCyOLa1eZl5UYrgJNfZ97HJxgco4qOG4Om/q8qEyyeia8lN7nCyh2tRPRw+yNV3AVyY63t8Gs9Qll/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfq0pdZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfq0pdZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBE25C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783459113;
	bh=hR8sZ58lDvoP+JD1D6hfjuUYBCwyhvEvKdi7jiTRa7U=;
	h=To:Subject:From:Date:From;
	b=gfq0pdZstufx3hUXrFEGe7LQbkFeE2VqyqH5TWZZFMVmV6PULWyT83AbQuQ5xsUKw
	 xABQk3+leUuJzfolo32EFndsKyYQ/8bLb04yTbZpS/Hz17XKtCPFnWDQFw8NRHYIJM
	 G9nz6bxSD4JVQ4kiyuQRUCSMklujuu5uxVWplPUoONsoCN0fcrcKysj7Hv3DKBrNBw
	 4bb0FBwItJsJH2dsI6+UEu7tG1UkjSrI07Zlgw6QMA14nAWY21hm1qHaiHJCUoVh0Q
	 c34MTarTOF1SaAsV6DAAt7S+85FKJ71KDdn4UrGUHvQ1Gt4MOpzIzHBf1ObuUG2RjI
	 ABnT4DAYTwXxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB77DC43602
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178345911368.22749.5947438735111058085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6804193b9b4d8d4ae1240810f3bfa5ec48b7fa4691884831ce86a0704e9bdab
Date: Tue, 07 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783459113
