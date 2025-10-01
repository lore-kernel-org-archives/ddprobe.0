Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2F51B21BF
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759329594; cv=none; b=MMg+gWX89UcA8VPHBuVbtlWqBK8Cs1Gv/AIqEVPqQf3x5ndnXhYhP4P/YfWzv3QEiI7qpm7ob7lDVL7AlTqUrYrNASqSe77z7Sin8fdCkIqPgLQFYwIWJ2VHCcSSdKGJ7bPpkZXScisvw4yaz7qAeKvi2jGcduXbU0NkyEllI7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759329594; c=relaxed/simple;
	bh=XJcuQWny1qjJO+h4cRmhFQbDVnNV6XiZDfU4yr1odH0=;
	h=To:Subject:From:Message-Id:Date; b=bsiS35kj24+Vnl9OQ/zICsTCvspKC0i30XPtkbvGGy5JF4IKo39migkO+3lDYgEQb4as3NCFIohwdHWc2EtlWGN91XkztGxJ8GTHyXlZjbLMd0ed0VRVDBpbnhjgT8XszmLQghV8muFYnzXSlnO49n6xDtc+4hPaFV4t651j2EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAsL1h6D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAsL1h6D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE4C7C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759329593;
	bh=XJcuQWny1qjJO+h4cRmhFQbDVnNV6XiZDfU4yr1odH0=;
	h=To:Subject:From:Date:From;
	b=GAsL1h6DAwaCQ4z+WKfI341eqxvoQvmvWsATxaMYgdtmyw6PLgQkypE46P9yjidG9
	 exvULp7mH/dh+31U3RxohLWKBJXap5BzcfbsK8qUyDluJ8D983UOVlw1Z0MlWqCWWX
	 xShMrtftQuXNohQkWRli0Q+cgeUmPmwKx3SXswhzBsAdZa1LkRqtUj89OHzkjpI/GZ
	 Fdi5Lz1OTZm15gjGQJ6hhe32lzXsnzAaLtkrlTc2QiFGlH4dmTTYDf0NLpPKV1Vm0x
	 1eJPm2FGWzvUBNpzecywl2dppGUIYzZtRnFNai+Y92zbk9NF9bX2/zEIin3d+en33M
	 ewomtudQOgVLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CF6CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932959360.11367.1067104954937882945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dfdb9609c13b45ebc6b2c0c611dcb7de56150812a4f8fa3b5c229ee1d7bae27
Date: Wed, 01 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759329593
