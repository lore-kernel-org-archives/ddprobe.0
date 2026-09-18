Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E9123D5246
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789710634; cv=none; b=iFUfwdTRcb3KPpMuH16Z3TLv+C/YrRgQu3Uwy9KamESp3jDKCnPRkiOmJWRxyKskBNXL1BuL6goiWUWFFG1a5eOJg9rm2aMb774pEqKKW2tYA2FKoMuGJXZTDEwKoEEDeuDojsktzEi7OC2a4izQfp78exf0DIqC3uNLUgDD42o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789710634; c=relaxed/simple;
	bh=Wel6qY8dLza6KM7ZNe9+mFXGEaumctgwkVjCeR6AxMU=;
	h=To:Subject:From:Message-Id:Date; b=kwAaDiJ1HC9kl9Sy7XWb/X9ollh3HA4TOP3cj6iUZF4KIebcnHBbD3huXrjLZ59HNt/kIRWwk921ytrEKVmiPjpwNbxzc8xc+6QU/S2Pj2Ek3WybKZnwcGNgexUQDqFedX7qtcaW4cwztr+2Xudd0acVtWeTkJd+Pzs/84Qf+w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=snONWp1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="snONWp1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F7DC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789710633;
	bh=Wel6qY8dLza6KM7ZNe9+mFXGEaumctgwkVjCeR6AxMU=;
	h=To:Subject:From:Date:From;
	b=snONWp1MJ/B7u50cfz0iPMu/u9tUYbs97WMbmr82xlJsULYgu76ozsoTIpuWYwSPs
	 WvKdNqFdtoDw2XaC+8yblTAPgHxhEOF5j/5/WDdGkPjqq84O3zirFfkb23Myh91jPw
	 92p+3VX5jvOevOJh0Uutu/4prA+A++lRVdu4/tv+9mPtmelJrpwoXGrw5t2+ZYB0Hv
	 fJkyVxYw3waQhalw/+PTFPssaGoOyqekxbcL/RzeKOykrNzyyyFby3zytdz17RefSS
	 RmUReDCQuvx3why/XdqaDhzo01jPpjEYw796XaPP3YtLHTU3qdrmO85e2lqCvDRd6P
	 B8RD4DoPJ4HhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EE6C88E75
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178971063368.13728.9031050035454081674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 103f2afcf8bbee430f61a9f422f38229cfad43a25db9a5d4beea2082992c43fc
Date: Fri, 18 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789710633
