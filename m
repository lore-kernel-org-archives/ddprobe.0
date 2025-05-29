Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B48F293454
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748552395; cv=none; b=YbSyrDLMVpZjvy23W9SKFN7dnZgLuhQp1iWBkNf5gwaGevh+IAP5zXMShuptKkve/Byb7a8sg5ZQa0i/sY5m4k/SwU7KQTpwKhrTmYKWjK+WzdLu3j9inl/SuogiaKD9wJxCTVmSnUVuT68d9VgE90qdHtUwQ1befui1Lu5q7e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748552395; c=relaxed/simple;
	bh=9uMWZJ20peMR/IEs0xTsOPG8vRlY68ikM4nYjSk/t5I=;
	h=To:Subject:From:Message-Id:Date; b=ZXiqPsGc64tKPKAgaelW8RVbZe/NPQdlkje6lu+PCHLAx7tMD6gBPdfLZh+c0Gq0Dnyid7e3VtcacU8ATvTQWqQlAGDcRDgWfVPDEUK3ydjtqGH81Xc46bZTH/mQHyI63a4udV0q3I3MMITtVgkSkZNiZHNtLSoIA+eqrxEryoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IKR85z6S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IKR85z6S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A942EC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748552393;
	bh=9uMWZJ20peMR/IEs0xTsOPG8vRlY68ikM4nYjSk/t5I=;
	h=To:Subject:From:Date:From;
	b=IKR85z6Sflainncm2iIWgiIitIKGSvmFs+xIyLMj7eUdxSs2zSjOs9bKxxSV64CAl
	 mXe7Rh7u+XI8nwQbJaFjr+5ZG7RuqtLh1RyCRLvytbTi++aTnapOrvameaZLcC2x1b
	 OLca49Sp/RPgROl13NR/PKXcmEvh4eSqgybBBlT6shxEkM1OEAGof/qwcc7ZM18Zhe
	 pcOslyMXrUoslpmqOeB3AqsSZrU0BUzN37Xucolal19iEuGer9ZKe2gTYQct+lbQS6
	 aI6x5heezJFN+VsVxyFVOfKLhCSzsQ86pfnD4fmQb8CbSQEAGq9KQA6N5e+a9BaWBw
	 NZS3eqy5db6TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6EDC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855239360.7417.1995630457847138346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 453360445b48a877f3328f1f176e60d111e9cfdb549b641d39615fc515a66a20
Date: Thu, 29 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748552393
