Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C1620C47C
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756653594; cv=none; b=euWzvXndDBBGIxn9+KqjRaLC+j9svGKqGaenU/62MgFVnDLk6BfnIUZPUZTEXjfyZwBjJI22pfmgjmB7iIUBjoxtm9Ug0QaH8BjADQPuxbQy066B8Kn6JGjkjP4rQiESVusxuJUjPyAsdokV1fczy6fZuXfPTPvGeDo3Pxc+xI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756653594; c=relaxed/simple;
	bh=aKdJJZt6cAtxlYmaDuAAbXTlXADnSRKHl3ykm/E7h9E=;
	h=To:Subject:From:Message-Id:Date; b=pV9IvHZ3q1YBW17iM8XCYdjhs4n4cx5UMZeHDQkCWHLOQIIkvKUxFGCc6RakwYWO6X27NdxqcD4NGhAYAQgaayEAQVpcQrsr3TIxivx01CYswiXejwcAHBaEa6h0+G5wrbVNDtdhRQseCnoDjubCOt38jp4isiv+n7bxOM6rqDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acjPxdzt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acjPxdzt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA83C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756653593;
	bh=aKdJJZt6cAtxlYmaDuAAbXTlXADnSRKHl3ykm/E7h9E=;
	h=To:Subject:From:Date:From;
	b=acjPxdztFQgfrOWjTe5qb+nTXJUvfE4cmll99PTdCX2MU1fz8N5cEXDQwBRYICr2z
	 6WXEtz6yUZcMfEdSgrUBSdh+TXAQVswvxiJiNA6WUTt+BGoOvF7gDAPs1ce9zPopQa
	 F/sCvqxR06m+UwVFIcfW/n2MFW1LC6QViinOjxOuGc/Irln86IN3O8lOkWcbKioe+I
	 KvBFW/M26kHW7XCe4jLBKCKTuYKojxBb4mY/2qV4Dhd4aY+d6DrYg0XveSjVbWNGmi
	 BRGoDYvuPPAyDGKMAfLs9E6WQQpDf6P+cj4yBO7zBpNlm/PVi6rXZ2SFkLF0Up4nRF
	 VW3KMcY+UlJ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3D8CA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175665359357.9178.12953555864298849752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3f78d442a422fca64df2969f76c8d59acd795e9caef71249bace1134f00d3d4
Date: Sun, 31 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756653593
