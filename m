Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C0717A2F6
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774052094; cv=none; b=jqwO6SsEzVhPndI+JMcCdnaelTB3wY1kRMJuQKcdbI+YJWrh6evbO9kkZ61qy/u60hBrkIVpz1C4pv7diySvmSwp2vYCcntrTMboy8sU9AbfQgzENZGz2dU5FYIJm+D0DkCAL/U79Yx+cWvFg1M5b7KAxA09kiolQS5RhUzL0Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774052094; c=relaxed/simple;
	bh=P/6+fkedObh08xh3knyQe0BfLe19i5SmIIhxgQJbyIA=;
	h=To:Subject:From:Message-Id:Date; b=lUoRxcGYJnAMz1p5l+VgKkBzcC0cJ1fNHZJcyxnhyNpck3uvwwNFXFlK+FsX/13lPsDEKyyYjW2GJN8IAW8jVWtboAvFBlk5nrtzE7luat784TrwXZDIsfZw5RZ2aypdNuVplbkYBsqFnT5bnNGVQL5r8w4vXndKfH2nr07qrwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9N4YPhe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9N4YPhe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D55C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774052093;
	bh=P/6+fkedObh08xh3knyQe0BfLe19i5SmIIhxgQJbyIA=;
	h=To:Subject:From:Date:From;
	b=E9N4YPheZEtq9aFA95YlHd+yPs7uZX5Acsg5TrveYr1YIWI7I+JUy/01giZLbkmBt
	 hfgyizq8VM85H9xcDvdw6XDbWVBagUIuWC7PkoMHB/fp7fqyu5Z189yD9rqij1xoAO
	 A8N/I8atbaPCWisAP/0nN+Koxvut3W3l1uE3RaFJhi33ir0181pE6DKRbYNXT7sb9a
	 /x/i1WfF+FUeOYGvDoMviPoMoGLqpFoltNiWZRrdWteayl0AaLfryUJ7V6hXYdu/jg
	 fhdDKLsntetwiCS8enNDw6xghKWGpHidXd4Xdp72hWWza9TtyOqzQuGUHi0q6Kt2H4
	 8fcoV21eLmotQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944711099B4C
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405209357.29157.11002586526158627460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af44fcdb04fa6f5ad62cea694ff350f2173a418357513183a45ac38c7e0c114d
Date: Sat, 21 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774052093
