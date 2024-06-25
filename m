Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6668A101D5
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 02:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719281003; cv=none; b=tV8g2OHV0KS08c5pngIUaartm9BUM61daerHbJct7Ez9Y9thAXkxVwwqHO3Z8tT9EVl9cF4wFA77LknRFPqneTC2f00SsKopSIjKulG9zn/CrSWWgq5yTP9Cq2qz+VS/l1ZsawgrBaCefoemlDY1jQ0ybzCiGmqujVnpRev5vpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719281003; c=relaxed/simple;
	bh=v9haQJedn6Y9Cfe9g8YCJ6jVhr+KWpqZ9L7+oEyBO5Q=;
	h=To:Subject:From:Message-Id:Date; b=u1yOwJw2RcNz7HoZ0yWlbkLp0qWbzmciofflL/kMa35vzexKQULEdpK7pRE3HVJSbiDdQhEC8uUlMitIKznTsBlkrZWNdXqxnbc2pT1VkIXVnluzxGOuxUOrH23G7I7PkHFBwlpRx+mmE8Bc+KSjDN6ek5/6h/NA25mPEdgD4WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3+LE7vu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3+LE7vu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE70FC2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 02:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719281002;
	bh=v9haQJedn6Y9Cfe9g8YCJ6jVhr+KWpqZ9L7+oEyBO5Q=;
	h=To:Subject:From:Date:From;
	b=a3+LE7vuM6PccR/G1FYhvGR2y+Bw3/4NX4u28i/1QXkaKNeh7do3R2dBsEmJnCyb/
	 N92UQLCP86TisuJpUBLQxHZ6IyRbPiBxRs3qG1XvsfTi6uba+Z02TOxeKAdFEpuwnG
	 0aFMnqScK5FN02sgOtcpXUduU44otGIerW85w6JMR1H70BllwVMGctzx5eZlMB2xfM
	 IiVamYXVxj/s0I13ZkOBFiVD5qzrDT15jme7WD5uAwLfq7BqlGfvXILRMwbrernkth
	 eFcQXvjuU4Bb0lA/pPZWp4Yt3lXD98/l2ifJQ6aQqd7u4L5ZaXnTVnwbkBAlGJXk21
	 c7qiIwBSbtwbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53A9C2BD09
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 02:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171928100279.26863.11553737393463011225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7a884545a28983268eaea6855b5a80c1bdd999dbbb69aa0791cb146cf1b7150
Date: Tue, 25 Jun 2024 02:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719281002
