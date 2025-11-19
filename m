Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F47260583
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763536315; cv=none; b=S8mYFRWlPkyEpbZAHlo1xsS773RJWPZNOIb4Iy2p74USd5tToGfNvm0TpoVttemXW8SOlfE7Bm5CWFykGfwz3+PrkpxQn98mQbs4F0Sjoscy2YR92OnoJrc3MlvDL+DO9hqADLPyOY2485UJdIlTBKkew6CHcREFVeT3s8mCZj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763536315; c=relaxed/simple;
	bh=5I4UCO0w3lK8DiAH4EshIJmhgTDsF2Nr+DkNQUGKggc=;
	h=To:Subject:From:Message-Id:Date; b=AZv/R/O6nCfffqVHbtuNHXK5Vra35A83ujhQwlRPXCnQfoxM+Wy0qrxiukTSnDS096xrOuN7fUV40mTn5xoLlsqJGHQFgGo/Ax4rZrJ6Fp4i0gT1N2aQHUITsm4ns4CMWIkjUTn5Cjw1CeyVxLU/0HE12nilup+5usGDDUs8zj0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSHFyFuw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSHFyFuw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB26DC19422
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763536313;
	bh=5I4UCO0w3lK8DiAH4EshIJmhgTDsF2Nr+DkNQUGKggc=;
	h=To:Subject:From:Date:From;
	b=lSHFyFuwWbyaQrAkaRzauXRK68s1ffDcec5TpHkpHVd46b/Ua2Y4KsbZtdbiANuUB
	 Md2HSPw/198qdoWGaCd2pwWRNfN/CW1gO8mWqe4UAD7ZU+Qm4W8C5W9UNaElplYzXN
	 wrJVEhZp9hDH+LLx77XHdX3CNde4NMnXUohqHIOS3w7sg0QaJ2nrtT/q3kpswW3Av2
	 jSImOU/lnlgdCxN4M7eLhi4IsZMKU/ZUnueCfFjUBJge9UB4FMwjHU2TRVVU4aMIL+
	 hENXJHft5DRSqKO6q8QJAeWsij0UnxzH8CzKaPGTl2gAAmylfU4shhyUPRhDCFYK8h
	 EJntHdtD/XxQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BB2CF2567
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 07:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353631358.19259.5677240795103415770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5782cf15e0b24bf66bc8dcca13cb1437fad293a621fe61f58dfbd46fec61c2e3
Date: Wed, 19 Nov 2025 07:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763536313
