Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA7516DEB1
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766214234; cv=none; b=aEd8ITUEJtF8kd65y/PbuZzfYqA72ChEUqrUEJ+4OUqc7bpt8Vg8miyE2shRi7SsC4Ib4SNHWwPGamb0KKzsebIazFu03sABMUSreuPmDIgJRDMYNI4ZDiMTbKeYSR9WmeuP1oC2Kcv7tWzmwRAk8NoKVF0XfoG6LOeiElw8jKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766214234; c=relaxed/simple;
	bh=lXwA/oNyoYsnPaR/l8vyRtkUQZy7yxeDJ2BFR0mxXng=;
	h=To:Subject:From:Message-Id:Date; b=Wv+Afb6enwEaEqaaDOA6GU1cEVlH2rWqbEwgwKAUCYQJBq6kVdVNCuq6ELevx+FVSEBnmNXxqg/kum+CpWGCdPdeyeEcO6HtsWL4xFbM3/6YtpcTDy6dIntfT7Gv0CCBvPOvgUCee1S14upkuVvpiIgd528zJIrC9o9tQn/WIek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cE+VS4dx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cE+VS4dx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A33B2C113D0
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766214233;
	bh=lXwA/oNyoYsnPaR/l8vyRtkUQZy7yxeDJ2BFR0mxXng=;
	h=To:Subject:From:Date:From;
	b=cE+VS4dxk85z4dkosjQ/fS7den/xd6uv6v8P1RokB5J8vcB6xF7rlZrubm/rwU32K
	 07NAFnAUhfA3aijopbPed6kcVK23q0BAys+Tn05hQrgOAoucWPYQeF4L3COVDGolxt
	 cPtzi29Nw0pHYWsyhOGL5YfU4pESnidkDQphUx8O81IVSsFaKX+ZqTQdG+Whk0QDu8
	 S+Z0lS4XWlLLo3XN4QjlWORk17w7Q9sxqz8ffpd4LJCWs44N03Is67X8+wC1sW8fa/
	 dcXoD3PLArKOf+YL0CVeFeTcd2IwPlo5QHnmF6+HIOCKCUHqasIwrko1RmBsglqzo1
	 e+Bz8Cv+GRtVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9242BE668AF
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621423359.6698.9732612303633665693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9954bf979404a4e8b2595975d145527663573e6cd7794c8c9c0f542d929a5707
Date: Sat, 20 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766214233
