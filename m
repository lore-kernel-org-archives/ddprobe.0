Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C30EEBB
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774311294; cv=none; b=Bq1tjR3rxB0q4W8zJkuvK8uJ/e8lopN7p2VVJLR+O0uZgT46uQPTzB8wRxx5dx5NUQXOkL01Qe5jKKwHtqBCCM2Sm4vYjlWdxGqQj08n1NK5om7aq6pCb3m6YQOERp28gj6srvpyqzw8qHLuCaummjUsCkkd3rPf5T05hBWHkyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774311294; c=relaxed/simple;
	bh=8V/ooIOjDUOSlXjJsk7ZPA54+NpM/1wVKlyJmofrtOM=;
	h=To:Subject:From:Message-Id:Date; b=RFtoC2vysODxLxPJpY0PZJJIvBB6vHAAc3zQqiV5fjDaJTHlZUcMQYeiz7BY/7huo/XwlzHaByjrtdxzH2qNYCzXi+Vd1pbq0aWlejnJEZ/Huw819pQwxjzuojLXjElMkqmtr2KAAvIwg7rREyFMzOMIIZvuuB4xsdleHQmhXOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGDnLWJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGDnLWJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25A5C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774311293;
	bh=8V/ooIOjDUOSlXjJsk7ZPA54+NpM/1wVKlyJmofrtOM=;
	h=To:Subject:From:Date:From;
	b=QGDnLWJa/J5LFTKNwbPSWNuCXeZ6PKl+NeUAdgu009gH2XR9FHtrBmT9rWc92PmTM
	 d/iB1Xp+0GGlWp8xvOjHySfLv6rf/r4RQCGkVUf7TuHaaH+S3lDvcOoqrrJGFLhgda
	 tIiK4IFk9RuWNPT7ukeR0sDonHtHXDrDIQPoGPLzqKu5+Fd39lS70pz6aPR2m5MAeT
	 9JQYLv8R7p1sU0lbsxEYooGcrxNNZIv8ELQ7g8JiJhuISZp4ZrrK7eaKNP55f2Q1nu
	 LYiwc0R/X41NB0snl6AnjIc81WT60B7pfaHe1Lj+hHMkWsHZOqA28pJWpinrB8+5yj
	 BXkQ26iwn+LDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EE8F532C1
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431129359.31592.6416740723977422994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da8aa658712f670dd9804e1abbb0f63ee48c5000f90db9e76629bc46937ee1f2
Date: Tue, 24 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774311293
