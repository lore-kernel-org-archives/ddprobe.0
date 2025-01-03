Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B6F718AE2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735880754; cv=none; b=utnVE2bnhlZaubIHMm2BXiOI3NIwU4zJMsVkGOw4AzvuawtsCZf+H5ZiuITiW+q4SYgfnbDd4Buav0aGQcZ8SaKPxMbIbFuOwYksbGA0pQ1mihI641uT2qN9pAIrFQHE/2yXjjqQ4HQNflXQEJXCro2+XXn48QCfnhnIoX9Ezww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735880754; c=relaxed/simple;
	bh=n/sQfqWKIhDFAJA7ceUZkVHWpa10PGFGhoX0vvsiya4=;
	h=To:Subject:From:Message-Id:Date; b=GjMT4DZMOAGy0r8OYGmQv25fdYDHnzl3McLRV9hgUMycHpvWyLkJZ5OyZwA2nTJXhzj5zPOaVUjV/SGhdJC/9xTuwnc3E/bXNYNiN/xjyS5Tnq/mMP7QXWOB2l7bc6wOJgJRLuBnyHqvYRVYDHaSTDEM81gMwhPCiGtqoCJtoMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeTumcEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeTumcEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2A6C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735880753;
	bh=n/sQfqWKIhDFAJA7ceUZkVHWpa10PGFGhoX0vvsiya4=;
	h=To:Subject:From:Date:From;
	b=XeTumcEXxoEM+YISqBpECjQqf/FIt3JEuwQHARxagNBgPzhylOCHWKtAxQfjUwdcl
	 Aj83oX8xeMv9aeVKoGitGs3I2s39QtpU5/B/BdVh/q2ncRl5tryzeqV7qpsGF8fU0S
	 Kinc0QSgX02f6hjwfZRd2DHaMygOzBlwudL7MD9wu5ls6l1RAVM00ynSagbYqV9UPK
	 poDEAF+AFxURFKpPh+a70NDAumD4r2r5JccA2GRnTiE/gwGR5vb7/IlLL+fpZqrPv3
	 nUTO3HeWiqdUPyOral/pkaDWgaaioNyOpP/KD6Q3+4Qgr0bA39oMTgrhs3vF0Ry9JP
	 atWRvg2ZyPpcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CCAE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 05:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173588075358.17182.17950939090463482504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16b893e43c6e2a3080139bd155da1e91901aa3153598b9ad52a64d89312d1ab
Date: Fri, 03 Jan 2025 05:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735880753
