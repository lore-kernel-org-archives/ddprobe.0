Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3772E323E
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752709794; cv=none; b=bMrh2rtTPg8FLCutaYy0miod1zjpCHAQlkOgTRUVBlHKXjkt/yvBqXwkBpENS7MSVZ2iJzIj0tIB7O/PXsBwSVLUxZ2jOWoPESHY8apLQcDK8N6ibLWEKCjMSfCRz0yxEfoPmQQQL/q9Kl+VOpwG34RdSDSVKHqA04ofRy0B2vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752709794; c=relaxed/simple;
	bh=FF7GQA7nGDin0CZOgO9A+RKe5/VFJtyxY/l94FccC+4=;
	h=To:Subject:From:Message-Id:Date; b=MYBv/f6TbhRfFm62X74knuVbbxNw91Fi97nwOGuxpZC2lXVm4HVk7g9ClYMhtBKViAQnoLQxaf28yXHiCcWFbHdYsSdCQttv5jS9/cMIYC3Lkr3ChohGwYWPz8w+2XAj2xdd+MKWRCFC7YKJQAKLUAXLQPYxLVXmIn6mWdI/tkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p45NwgVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p45NwgVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B72C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752709793;
	bh=FF7GQA7nGDin0CZOgO9A+RKe5/VFJtyxY/l94FccC+4=;
	h=To:Subject:From:Date:From;
	b=p45NwgVD0N3V3Yclvrbu2H/N2r8za972g7v2dZduPEGGCPFz6c8NmumVgh15hDHIi
	 zLid2Bmz33bWSox3Bf2enYXCN9+3oFZrAjXYoTGjnaO4xC+voK9eiyogv0aKo8g47q
	 JZIO4fLWoaiIEzN9i325d8PNWyHVuL6WqnpJjedQR5qsFL19YJYOtb5WK49/iqnoqy
	 7s9ztknd8s50cE+A9K+yQy4JQJqBwIjceLnFwp/K4HfFeF2oN7eSBGjKF3qWrwVRsc
	 kmDPknw6QEsUE89Gg4ioT2GrzXqaEjwuASNIdQXxSVu3MONsqrYrNhKlhncbIJBFky
	 TV6qp8xb94Ang==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF01C83F22
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175270979357.9405.567702166622966277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d11a7b85e94fdd3e6d52804f8174592c498571d2ee941eafde1f2aa6556aeee
Date: Wed, 16 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752709793
