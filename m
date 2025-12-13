Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E66C8CE
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765603374; cv=none; b=cnA0jfYNZCtQKQ1NhData70l8UiaOVO7+OWbYeTWIndWwl9Os4slMwkDMOtB0xf/oLwI1UZdPUWPY+IJhaxiytjSnICw9T+mPysgXEpA34Dyu3mboljQogDT26mumSKHyR7BrutTRmj0zQ7b0Tf/RlOiPrmaVGbEhguC9d87JDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765603374; c=relaxed/simple;
	bh=U4Bp6SZZMgNdhxkH68YEoebmZsX6wmE1edm6ejCrNxQ=;
	h=To:Subject:From:Message-Id:Date; b=A9b7PGMawqf66gC3k+diX/IuJ8wcGqTKOmpxsjOITeYAANgw/udjnLHNPndeNd3bwdR42YWJo3jeteDFVJLlATBj4UlUEz6dSjWUjkct0LP1c3IxbUL6v4zvTbS7O2dTkIPFqMbehTFQ+lk8RP0R7HbfbZgx2PhBppGu241FQxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWzyODIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWzyODIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB213C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765603373;
	bh=U4Bp6SZZMgNdhxkH68YEoebmZsX6wmE1edm6ejCrNxQ=;
	h=To:Subject:From:Date:From;
	b=qWzyODIBUAvlRnEbfiKQTMWRSIy3Ts606KcqDwgop5u3SRxkQEd1hLJfBxbXp17yI
	 CSrAxV6pm55fk529CYz9bnFRjRBMj+/w/HIyOu1MkXE1d+lKkV1j2DICffu6y9o1Uc
	 m2dxPq8ck4FsgAlg2iMIDZRpMYyckDiWpsm5ZEuDFvpbR5DEJrD08A8hOUENyhHFOd
	 rb4aIRdmkg3agBu0tPRuD0zhi5Ghg10JlOvI40XmRjE6d7ZfVtqwK3p0+AIccgdx2L
	 6J7+Y+9VfeVX0kQZoPaI6cR+VJP2iccABcXJilyo3pj5dVA+JR/cR6C5469tA222P7
	 kaqVERnG20kcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9654ED59F6B
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176560337359.30861.144617313679851459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd8b080944d7641e273f05251339225eed939d5538db0210826989763bad22b4
Date: Sat, 13 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765603373
