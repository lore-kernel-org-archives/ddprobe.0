Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142F919CD1D
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774928694; cv=none; b=ireUsdGlGnG8y1qRAjZhS+03ZzBu17SZZKAtZ8WulKZonR3XxKGS2Euh3XEkakxLtnLRvdMDNwpnFmt4B2kFjvuNn/jXZNnqz+ZtEtHRWT6TgZRh66jz0fXNee9J5MNw2lfwv0Bj8rMulZJSvOOsQyzvGqw6sJnXNoFmcGU2pqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774928694; c=relaxed/simple;
	bh=l+O6qLU58a9xPktLJ3JXzPdylHR3pgQYFWeIEX4ktI0=;
	h=To:Subject:From:Message-Id:Date; b=H0Epy0at0coJRbXlVqFyHesc7xJwiDFQRH7AfA4nxWEua6Aj29+XVAUZvJvsKQf+qHznpmb+wsJsHGUoz/Af9zoc1jqOa/aeXwaZ4JXUoZHwuDwEHdpALIWwlIbUx2B2FbOTnrmg94Hih4k0IZCU2FsfXS1/xdiy8I3q7UIXCSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EzkzejQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EzkzejQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB100C19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774928693;
	bh=l+O6qLU58a9xPktLJ3JXzPdylHR3pgQYFWeIEX4ktI0=;
	h=To:Subject:From:Date:From;
	b=EzkzejQ7nN5nhloR6owlDuhxWGKbOxB/P1PhM7EloO0VFLBKIMFwgfK/Sffd5XcNz
	 EhZJ+CFUg7OQ3aRyZGNOrF2QzfAescI4iWYt4ov1XE4ox+ep/zvh2JchJAC/M+s152
	 tquVJ4I6g0V19yHqogAa2IGcOpNwXFNxKaLYma8BkGf4ZoZ82LfDeui977Lp/4X85C
	 Q38Unkutn8eCuPWic1LoGSAzYxmvvXd+0nk1s9nqUpU7VXtdWbcAzr5HZDpo/lre9J
	 9gS3enExHn1G48tdLwQqWhoPPHX3e+S0j/XbHtP8lWkP+9akJ8DhtJVqoauBaa9Nhi
	 8y04or8kyCobQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9718B1061B30
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492869358.21063.9913029940046681737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f593300ef9cf445faf1f9c44661835fb82d368b4ff5bdb9440dae71cdacf688a
Date: Tue, 31 Mar 2026 03:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774928693
