Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E29193400
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725576954; cv=none; b=efHKuye8Bm6/pzyPexqdLBS7lXfbP+3R9qV0sZ+rM8+2ufdoEItb7mVTXb+sOD2XN0WQ0Zs4qsKP0OvHXcITLW7XthXjHv9sgneSBxYDVsBTEkvqHkplxeCFy4oxYqfQ5c0z6Dhja/agb1+WxXgeykZwbaobMe+SAIfsTDwWseI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725576954; c=relaxed/simple;
	bh=M65p9F/FErQBY0VgGS117xWbBigbW9nk6CklU91aFhs=;
	h=To:Subject:From:Message-Id:Date; b=LxjjdvS7xzKFkCzCguuP0hw79zYGRQCiznw6p8u3/T398uiKLNF3nALYuzcaWxVEFttyk7kO7nOUQo1D0myAtgxU0gHwXZ/D57X/BrfXXIcp3y7msnqW0GP8SHPePXtQ/wn1EGGRAIuRYLx2bmKcgFBiz0Q21zWrsi/rIkrWWxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUGH4IYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUGH4IYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26B7C4CEC3
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725576953;
	bh=M65p9F/FErQBY0VgGS117xWbBigbW9nk6CklU91aFhs=;
	h=To:Subject:From:Date:From;
	b=CUGH4IYipqIFsuSF7l1LwZkLUlpuEWQ3hMQkieUdRPaG4hIJ/YrNMsg2jdnmRjHbs
	 6C//KexsOCYVtfkgLs2u90xcdXZ4hcO+2cgMxU7AWlIDzMhK45Ei163laOWEOagPBt
	 9jBQCdv0yX+Wb4U2Pk8ZTWcz901o9NPSMBrP1IZYXphKQXi79hTjTQoKy+gL7HXWQY
	 b7ylHBmUXb7OeqQb+6eGliBTEWvM+VnmPqdsSJ6B9m1eQmkEAU4PJ++DvsMzBHfmEP
	 RhqMFjsJbYv/w+wnFjUlQdWTju5i6b+JrK3aMyihSoS5K9N7OpcvR6gutvxOoymgsb
	 xYjmOt52EwvVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D41ECE7AA2
	for <ddprobe@lists.linux.dev>; Thu,  5 Sep 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172557695360.9888.8771574642480892403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae0d9b8c9959a8774d0e9e4126ad109c98b628efb5763e255bdb6765119f7f2
Date: Thu, 05 Sep 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725576953
