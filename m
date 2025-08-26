Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AC121FF25
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756175994; cv=none; b=eecA9VikUDAtSQ3h++uH5jyjthkltU7g23FIImtRcww85Q6nBVenMjh/VfeIz0aX79Sx7du7Z6K6L815UYIxnRLq3gQM2VQtKCZ6K5y9YwVnmRfPItuxuNxwBsPehZioht2i92WJuXT0U+KHScD97tyw1Tytk7V8qNSNHvuDu5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756175994; c=relaxed/simple;
	bh=Z0W6S7RvA9w5XcAeYfdkBDeoJcfXmcu3T+DCXDvD7NY=;
	h=To:Subject:From:Message-Id:Date; b=k0qp15Ds49rzOg0pyLaY2ev4sZ9nfNfJh1ZDR2dwaU+XnAdsrEuU8q3HOrV9qvsZfbQngialD5Bxm+RgVTi4rNgNjICCQgeKPMB42sVDwYlcdRjpSku6+jwGnSOp9iur+zcBFYSWRiBcmUrHEr93fT13CWB/2xawEePN+U9++uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F0lrF03q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F0lrF03q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E4BC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756175993;
	bh=Z0W6S7RvA9w5XcAeYfdkBDeoJcfXmcu3T+DCXDvD7NY=;
	h=To:Subject:From:Date:From;
	b=F0lrF03qtIaJVluyz/yWiQFOt+1jIo1enMu8CFnR+ZaNe0E5Z+ol+PAwgGrIS1+KS
	 dqq1CtiaGN2+/LIWNn+4/ik4993WMiotVW3Btd3i5r9ULliCbkt+lVCbbf7RwOCzNT
	 0cHW4C8LRuWrLOuZbGs4oDc7/LEMTtntPVIllXMeQ5rlZQqoJ3UVuQX3dZOFGupe7l
	 f7V3k3Aw1xNk3dNFnAW0bU4Q3C74C5d+k84mRKz7EeFVl8tuvNRs00/dUeWXW1zBZn
	 EaGiHDJfW4GUQcBRITq1HALT+NsPj1+ySTNBcK34qN/JcR8u6LmfvcPMOMHJ9KxP5A
	 L6aPKA4Q9XNnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF81CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175617599357.9913.7687272026590278946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1779b322da0d980fd1bafe240d46dbb678f098aad40f9d071176eabf4e2b0be
Date: Tue, 26 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756175993
