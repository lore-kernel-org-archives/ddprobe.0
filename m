Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2034D16FF37
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776386254; cv=none; b=RXDA/oggfii8RqibIt0c/3k9ivTJGk9+n9G7rJRfOVAiDFUrj9elPmpa/Cl7rhiSKk4/Y+N4M23HDgnY0yic63GhWtvg3LMPolULmJDbl6JhitiNKsF/UhfNp0o5cC+/er89iXMbog7B7kVLIMBAt2r0pP5UVOmePs97KOvByqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776386254; c=relaxed/simple;
	bh=dIHcQPimYWmkx0Og8XtrJilUhyH/vOc9HYyxhev7f5M=;
	h=To:Subject:From:Message-Id:Date; b=E1cFYqEVtvy341100Z6NL7Jhv6rMM9oi1N/J79WvnOE+3MBq7fJExzBzYjUY5ofQQe0RrbHc8fHhlJOsOt7/wLxEpzs6pCCJM2OTRT7w7/d8aQ/8DWOnwwSO1UEe78XGZCnLzt9JXdFl7JN4Ao31GM1LMJB6tmCybMeKSRLkgdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k8qv1lTo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k8qv1lTo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0E8CC2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776386253;
	bh=dIHcQPimYWmkx0Og8XtrJilUhyH/vOc9HYyxhev7f5M=;
	h=To:Subject:From:Date:From;
	b=k8qv1lToSVNRUJzdry/zGlWRZWAoX0Qb04DyoFMPtjABvpWY4hGI/z9l9U8Qg2Eos
	 2zWybyAKSkXE3p8qw+1rYhnTZjgDaKSi0KLfPlbwQPwuHxCjWBSkXxXL4qe15n4zqR
	 Q5t4RhJ7DNonvYboQUnBMepa35yHEUdPmc4sKxwkUqqwPKD1Vjn7XM3yWuisQ3BRTf
	 YybOYItMecnRhHKn1P2Lnydt3N3XZxE4b6kAq9tnEtFMe4aA40pcPqzZY4sxKeglEI
	 omloE8MtQsEeqr9TLi8gs0z/g0FenTidn7zcQHIFGXfD4IUFI8Kyz20Rdf79q6I10h
	 uPHsb6ON39oLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F7F8E497
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638625368.18491.10894393420344894927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b841aefa56ad4445ca116b07360d7eea181caf8fe8d06f66f049d6506602ed77
Date: Fri, 17 Apr 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776386253
