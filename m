Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFC733985
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756437594; cv=none; b=r5aBec/67uMYCbINa/Il6s3oNMTueRoKWy68DK5VF7GMJJrlx5M0yLc9YM3F3G3jtNAY26T9F/cWMAf4UY+kWK0AEw5sQCUt4JjFkE8NL1Kc1VOohe+dTXCjjawG4CR25Ku/aDBmAbStpigtwVBSN5iqbdXpJ4m/4JiG3vh+GhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756437594; c=relaxed/simple;
	bh=/gBg85ET0V839evmS2o029QsruNv9jDBb8dhlSQYr/o=;
	h=To:Subject:From:Message-Id:Date; b=Wdx6c7cbWYJqzeiZ5S93B1uI4OUpfTK99xqmc6yogqoDTpc1nTwmRrGqhNdWl+gourEJ6naWtw3ZE2MXpaj9u+G4gwCTJP0MIxSlJzVVFpyJaQXYW7KSQN7/UeG8WfdoolAfibI2iJjjj0AUaUkdEnSJyYDyI5Scu+QXffdBvrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Db2NEVix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Db2NEVix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4324C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756437593;
	bh=/gBg85ET0V839evmS2o029QsruNv9jDBb8dhlSQYr/o=;
	h=To:Subject:From:Date:From;
	b=Db2NEVix/dHEX6jgrg2GOgH0g+BuzNIqAWdhMwEmfk6h5iUNx5WXEuxYKvPnYugy6
	 uQtBMXcr/hS5vxGh0+sxmnTZi9ug86HcoR+rEbxHLCifoc/YMk/l/joixgw30wa/H3
	 yH+y3NQCxK8pIuIMR6JrSuBKfCQ3KU7ycgpbB0/miw9NPyaVdMNBCGudlyenmYee5W
	 dBbmunD/SiZatvj62OL8hfQePOn0CQQ+9XMNP/2YCKQ64vaaerTEWiRp8bl14nK4nf
	 +nychkUtyJQ5Ds4PDaZ8bEuFqlyFOteRj7JgZg88mI6BzEIkpEKsW/8u/NgClvpZqP
	 IzGQrtOUL04Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916DFC8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175643759357.991.4714080229861060769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce498fe1d45123279372f1ea232b2f17a5ff9d5770ff0a6dbbea423bfcdbb77
Date: Fri, 29 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756437593
