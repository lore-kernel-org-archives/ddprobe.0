Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292083C1F
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752817194; cv=none; b=lQ7v3iIrA/GHCqlE0ghc2lG/mLacwGBCOBiQR7g/nQ3Z6OzppuDw3F12GSf+4E9KQ0nB1jmFbC7aYYX52jOTIK1O34YUoD+8Q/BH6xIeUu4y8S/MeG3EGFKt8av77V7IMBxliPC9Q9VGg+QmWbZT4UBL+npjt63IaBVSnMyHTEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752817194; c=relaxed/simple;
	bh=hVTP/Kxaa2x89urOptD/uGhMN7lNH5MU8cJgyJdHrfA=;
	h=To:Subject:From:Message-Id:Date; b=IvcLQlQcA3QgFvTeBnIdLAKntNNXWtOyBf/BvfvPDlkwgl6R0HIjy4iWVMYs6rgaolvXSoD5+ABGTv63UePkVLYxjOavjt/0dW0tjRUtw3prVE2SelQhkPpnH36XAAeQ8JuDaZnm6JwnPk1k+MYB6UIMNdDeYwqKETYLfojqPW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gm2uRMBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gm2uRMBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1027C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752817193;
	bh=hVTP/Kxaa2x89urOptD/uGhMN7lNH5MU8cJgyJdHrfA=;
	h=To:Subject:From:Date:From;
	b=gm2uRMBODXbNHdnnnBjVlZ7EDDz6wDZ8i0p3Bs/BgMDORqFHDWI3h5mmCrJK1bge0
	 hYgOlCgIOo5T1kFuCHVjqh6HFBUjXGfGq/ceicycFBWEgiSB3gLTacnu/SLhhJWV9o
	 xDq7GLXC0qtjCGcYHHqz6EJRSl/d4SEa03KGEYAOox6XVL/e7ewBVCImVD3w4ur3SN
	 feiWokqfIGkxNS5r8JULRxRdNdZcVhrRCAJpp5tlG0lmNu3IqLvY5Ax9dveyEJAyrI
	 LirmVBLYufUlDHkrYlTiB0kz/5It3wxQyowebx5nAySASxDlE1kkSK0r0xHD7h8ZF+
	 g94kVD92Dptrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4EEC83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175281719357.7276.14673000083042271114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46139bae1da39eddc103d0786e77d7eb1d91f12e88608b02514bba7b849f6e57
Date: Fri, 18 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752817193
