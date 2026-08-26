Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59ED526AC3
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787703034; cv=none; b=n/Gc43YgzFEjZUy+4GreVM2uta4CJfQ9UASrJ6lR7xbPgoCMYwaZNlLcfZA0U1Kx5Y3dV2B6mIfzXDE0JiXHMeC+G3RoqFHvi6tD/HyjVUiTqn0Z1YfsD4qQa6h7cjY8De9O0PFj9IjohlqBdnDwXilK1LkY852aLI/AwV9VNkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787703034; c=relaxed/simple;
	bh=Z1Rm7iuZklLotFq5cX4q5W4yy0c3mIJdI5g61wPbG/g=;
	h=To:Subject:From:Message-Id:Date; b=lfcPqCAcr0thUkMu1QDt/v0zzuamv+g5NbEMO2Jzd0F6hep3ZXQyZd0wpt/TbhM+B4sAjtWdAnWbZi/dJZc1kh1y6UanmcNO0sL1AS8eGETQUbbENE5yUE+Ma2GU4xU200vsaJS05+3W1WeY47obkgbaGYc8BvFKbS9yM887xKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJhLJPMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJhLJPMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4111C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787703033;
	bh=Z1Rm7iuZklLotFq5cX4q5W4yy0c3mIJdI5g61wPbG/g=;
	h=To:Subject:From:Date:From;
	b=dJhLJPMnoPQYb+xDg9mGVKN0OpZYvrS4fjFE5He/ysa3WBKzRtt4c4pRrU2Lzd34R
	 myXPHeMYIAa8hClpHOYDkfEjkWt5sX2SthKtf5JqAEYFJpxUjrI2rBVlm1Co3GIj0M
	 RWLlrcyB1c4gEqFz7A3oZKGkygiKFjQ9nBbvXuyi8Z7dXxZSgEKornETyW7QdcQM+r
	 CfDzgCIa+oE4iG1vCYTBIhnp46m92vRgjrnQCC1J14kV2+drzVkAuQSrYCzLTRR+oC
	 bWDBSFZi+PXWf2OP6FA51f5eKY821OR6XBg+SoWhjB1n8EzUbQ+Xr4LBuJ6nTxJtVd
	 PMxj0VcH5PCvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCC4C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178770303370.32549.14703740522022986398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b54a01bda75de41c326e38d2b8068f22d2efa1f0545729420f17d67e6b26f9db
Date: Wed, 26 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787703033
