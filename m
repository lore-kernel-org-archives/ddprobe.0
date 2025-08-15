Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ADC24635E
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755246594; cv=none; b=WytGl6NSqQ/fUCRxNIjWrmVIbJ8hZzXnY14cfTjYb1CMYtfTUYz5OWyHK/ImF9wqR8ppurTqiSeMv81C4mE/YSSoJyMd/O3qWPtoMEjg0vuV8jJZUPzuSXyH+vhSRLfEk1rgaBL1ZWg3JGOqlp8SDOWN45CfgTtk6qoJTRj86mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755246594; c=relaxed/simple;
	bh=xpv9on6Zkku45A/qRCopW8y8JE42RjD4vUjqgYoz2fE=;
	h=To:Subject:From:Message-Id:Date; b=d+asjdIJFB6SPYZySR2HJYbBZokINkOM7FoNCEtyAvygH1vpYDCbDYIbv6k5yZ+I7nwkKPL8x/qfYIVH10LNOEtXDy+GzTFgTV3shqHsSZ6tN3z4nEf/Z8LjV/o8oxxcI7DL1IFBEK5YVz2/rWGLDnJZU0S6MxpzLtoi1pj71U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g3A5argj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g3A5argj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95E6C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755246593;
	bh=xpv9on6Zkku45A/qRCopW8y8JE42RjD4vUjqgYoz2fE=;
	h=To:Subject:From:Date:From;
	b=g3A5argjsTnnc4ZsL72uwb9GUPBG0T0X6NWCrZ+f0MbckAaH9bTbYPildXi6KNrld
	 MAFKqtxPrv6P0Viz+IykLfbzuS3GsfjdnuS4cqXsWNb4mlaLVI4oXTdKe3O4stjn+/
	 VisXsBAA0eOQ4Zhyes4k7y1MXkyl1CDfpUbHpdysJkie08SrqV9ExSijot2zwysad9
	 de5bsesrL7f5ROa1QRwDi1MboQmc4p6rr7MObOH9kO+ahtm4/S+65S3SFIM0+V+2VQ
	 pSAL1HPa5qcoN6zA4S2yT1kf63lqgxqFyfvHQkZZXSuYGTU4lx/7PrgdS/nrMGt4ah
	 M2Ha9KYpwIZLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97797CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524659361.20318.5874572850503779142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19b05cf80fe92f2f9967bbac6d99582c4ce60ec184a7e58cdab9c0b5883d5ceb
Date: Fri, 15 Aug 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755246593
