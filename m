Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0B61922FD
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774497894; cv=none; b=lhJX8k7mdXJXvaPHRb6ORq2qiY96+gd6MTJqsc7p7OFY+uYXDn2ZmlR7+s/hCLJxPdyUu9PWEQC57zKflg6rH0Y/ho+o8LsFxebFAYoc5bgtNQujfSrlWaaDgvE5d2vwqkyrsCrhcKNSYPouKzqTSeKVQub9sXmKd+6tG2/AvDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774497894; c=relaxed/simple;
	bh=NxeU6+4OwA/wDFPexMBpPOEsv17PbDW2VlJNLT52R8g=;
	h=To:Subject:From:Message-Id:Date; b=CTgNhlvu0jn7J0IiRF9p+nIUwIK3qDEfM04oWc10AlRJJoCm+5Pze+YGL4RTXW5gqenu21guS+z755wpsVIhdX6zND1RPoTUm01hUXSFYzmjQFBIDmg/5EewjHD9YlcnZv/yvTELGhmmSKP3GFPcbIprJgwlds3hzzhgEPFRa0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpoYE5nV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpoYE5nV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2E1C19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774497893;
	bh=NxeU6+4OwA/wDFPexMBpPOEsv17PbDW2VlJNLT52R8g=;
	h=To:Subject:From:Date:From;
	b=gpoYE5nVVDZMerf4IzDIVSjothstW2OytrkvX8BhNUVySh/khqLPiexOA/s//k5MK
	 CImLnmUA8BwAlznNG69j5U+qmGiwg4g75ri9u6PGIMCBqbD41fkhLel4VekSBSOsdm
	 8fdYXxwK0K+fLyKXvz+Luf3MmfQJMUV/RrvbgvpLZckheySJmTIm1OY1zsduVcKuCp
	 vMjOrC8BJRvFM9SdeaW8E7vXom0Ci3+eRy8f0XOboGuo078n+dMEdtKxQ7x0NzK62X
	 7jdUtFsvE3nSLkj+aENBFipSiCIm2oyFuYpxvoMmoqgf+zpQ6gMJWswJWg4kSOFjks
	 xNDiCMg90XrqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9793D109E543
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449789358.20813.5733767535640784978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b0ff88e6b8346d23b68be840a6c6a1c151cab23d6cc67cae4ed95cb1c13116
Date: Thu, 26 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774497893
