Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9B2146588
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743766794; cv=none; b=NlgwbKMtSgu3/ieWRxzdRWwm0CeaI2DsRjx/xpMZv1zd/pUPnGicVVLQRVUTJXziKP0JYyO/fuaKhFQ1f0JLF93/OOd3NuphUVN64DLIVUabv7NJoFhiKz0bd3tQlK755HG5xS0ucEv/m+lF1NB40QUVpaER64ifB0dChWabd7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743766794; c=relaxed/simple;
	bh=7PayJTsXyDkD4Ng978E0KG8L7sfE5JoIB8EZoCCNX2k=;
	h=To:Subject:From:Message-Id:Date; b=NHzo5qE4Y8axIZu8n2P2cxEFeF2l6ajA0C8ni/7dbiLrY1NiU6MrpAFFNNOp5r/MR08VhQXAxa41axtsSniC1h/ScREjpepjHJneT6mw9Fuu8ZJiyW8al+1wtaFwRFoPFMfSQaVuLkkzc3YxWlK6PvM/XqhEmGPHy0dKDbpKq2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaDLP/MN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaDLP/MN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC6B0C4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743766793;
	bh=7PayJTsXyDkD4Ng978E0KG8L7sfE5JoIB8EZoCCNX2k=;
	h=To:Subject:From:Date:From;
	b=oaDLP/MNlqypFMA2KCr8soeOPLbDIqzGqdUQ/icxc/VlK2jmsq0AftSdkGizafukc
	 t3d7AjKF4gH7n42wMMemOWCTIfrZg3RlfMykoJw8UhaPJ94pDH+sa0e71edW3Iq7t5
	 Dz2PmCfOb61Zsfwng0hAUxvcYzza/azGflnFuQ7pWbJSvusr9B/cuXBnaGdQgLKHIL
	 HBaBB7dpEt0488sd4yee9zCVUBA+/A3VMmuhDE6VyqyKspRnN0s/nXTvIiY0uwUNL+
	 jSm3sNmyAo7JPIarbdNByp01eESxQeDzcvm8/aRmnvtEHkJSKHo/wx3ub2ez+h51gg
	 Q86UkYBnIb5QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6020C3601E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174376679366.13832.15162183891099756815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8825d2fc12fb6930fb175517cc63f517445d36d8578d73fb069eca9e0814738
Date: Fri, 04 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743766793
