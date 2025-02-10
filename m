Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD8A1C3C0F
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 09:35:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739180154; cv=none; b=JlrClVf3OQ8Ch6SKyMTusovvi5CHjuy3tQAIsqoEAJ4dfP2UD3r25OjFOY6Zd8Wq0ZixocUa7q/0e/CJEW7kpximW247XL5HM1QEhBMSP0IyF3df+w0upymRu+geAJn4KqkGvNCXkAGbNXI7+8yC5d/aUzxUjAFX/iXBqCZO1qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739180154; c=relaxed/simple;
	bh=Y4nWs+ODupWd4w8Y7kp3IRB2yeVqURo1unGiQH4gsyE=;
	h=To:Subject:From:Message-Id:Date; b=Avw0D0nuJUtJnB2ou3apkrzy5SnRXOFwEqe+1E+yn4FpKxHXGlAvSDAyoW6Zr49PGwRprSDRiolIlgKwH963HzCYo6DaJzfORbYvlRVHatptWXK1lwBFTOSqm4kVWcwFapUBid8b+ABjjyjCl91gP0MWH4VFgTALteiBxUW7+Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oKyQQ9Ns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oKyQQ9Ns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1B4C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739180153;
	bh=Y4nWs+ODupWd4w8Y7kp3IRB2yeVqURo1unGiQH4gsyE=;
	h=To:Subject:From:Date:From;
	b=oKyQQ9Ns/RzKxtGXjpfJwPs0i3BshZ2QzuJxqrk6wdwV4EcLiuvdxn/wRjghp1ShW
	 U/q/lqx1jajj17hY5lejprPCrELIPB20Ge194uMuqjb6xHKIUQ4DYlL8P+vNbwgKOC
	 qukYFHVhvyBA1CTgKcgqkAZA2S2FRmiRlLDpoQUHhrBAAENkZWgvtONPxTUVMNkzoI
	 K0lMISSWmV6lSRVk9LzPwpZfFD+62Z8bt16Dju5nktNQtZsisTrDlOc+6IjuwgqnTf
	 Bj+gZXuxMV6R4SPee7cRWvSP0QRoa6eefOGmHvKX2eop+ttEi8tPH4vrRzEG211Lpu
	 PvRBIxdroE86Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A49E4C0219D
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173918015366.15546.4234748541245206575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da42e082f97ee91d551dcbf75a4f2a677a356dc0494fbc3397efc67728904f69
Date: Mon, 10 Feb 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739180153
