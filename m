Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C1762DB788
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770775434; cv=none; b=G1WeJwC7vhzQFADTTlBV0ythSP/vtl5rvwaVKiTQLealsKSsgKfhI22GMiUmOKkaDBbmDqvjvFSOkJcoU129ESXVhFQVla6OVyA3s/dX0XCFib+JmfxpoSQJdFOWXI0GAUQfaAO4ncO764r6QfK0xsLPtL00BevDB5AGpboRNhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770775434; c=relaxed/simple;
	bh=DSjAwSUo6EahStBEBw+XLo8KTAuTaje7YT8EEzuiNdc=;
	h=To:Subject:From:Message-Id:Date; b=tSveoK/W4xBVEK8zC1amin+c7e3q/kLUD8/K2PnTi2rjOvkR43rh4QdHRAWqTaTGCnSjYhVEgBjnVWZ8IzlPnvPDD5oLw/WHKI9MfMkyTW2Cx/FBZ770URCyD07zOP4BuMaPRtYwgmImB4c3nWx20VxYN7u/aZmHgJH73htP8lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtoOsRpU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtoOsRpU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98BBC116C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770775433;
	bh=DSjAwSUo6EahStBEBw+XLo8KTAuTaje7YT8EEzuiNdc=;
	h=To:Subject:From:Date:From;
	b=jtoOsRpUGyzXpNzsrELe2ixNIGc1mfOaQn2kHkakPXysxX5b2aOF81mHHVFyToag/
	 zipoN5BIhKa4CN54FcMbKzygHtxUYNBlWuUkfgDnwiJdyRX/QdknH66JHeUE3lOhT0
	 eBZmUZEFHLaT0MyAmDz3+CHtQ0bkvCJ0x6SkFkqtChsm1iLiIJbb+O9w+6DZt1lWlE
	 tHFddznXJeQThy9Bg8NrbotWSUgOhZr4DTbFO3EAKK+vl1qD6LP+Zw6o/ZzzFYtYVj
	 Ly4B9B/5X89iIFVQjpb1vnC9WnG4XEmodFTLRqI4ihcvMf0G6/PPJi2QPMzaaNXtIJ
	 P0XmcvMboJ8fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A35F3EB594D
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177077543361.2713.13879675211295116337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd17bf4cefa623d143b92474a6f07ac19e8b79d54d589f3c1d4eba98bcf4d20
Date: Wed, 11 Feb 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770775433
