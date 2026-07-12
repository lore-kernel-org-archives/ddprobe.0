Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361873546F5
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783893514; cv=none; b=j1Sb//vflx37mgMCZqkSnEUutQXTpHcAqm/BaOYdr2ks9MGqxb2mvEXpzObRDE3h0P12RSaZ53v9ULwGZ5nBvvVEprkxLv/vdZslsYQLz+JdLjhWuUbkoVGQXIhkX3ZeHuPn539IoEoxyikE85MoJJ4AvjmxtS4C3mABqFLOA9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783893514; c=relaxed/simple;
	bh=IViHZ9DPwdrmuQxAHsa1cjAFITtoNCYf8rxexT6pwgI=;
	h=To:Subject:From:Message-Id:Date; b=jw7hjvzHiu5tOXin0pjqBDWlQ27PTc4ZChn9jdsl/a1feBLZlGoXfUxm16VclfCDeEhjLQtbcWnEimZga/ycChdzYkKYsGWBeDFC6Je6nMOhEpA5OeE6Anbf9zBXYZHW1cct/HKeAnuOuB14EGeVQnXrgGqulB3FfaUqK5A9yJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RptcF5yZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RptcF5yZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9FC7C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783893513;
	bh=IViHZ9DPwdrmuQxAHsa1cjAFITtoNCYf8rxexT6pwgI=;
	h=To:Subject:From:Date:From;
	b=RptcF5yZ2qIbD0/p6hSC6JV6/oWjV1HEmP8xxoYjU8UmCA1FqIOMF6Kc845yp/B7x
	 77pARIyXN4WtPLVRVeTcSfgBD+060gSD3HcNIJZs7BstYl+MarYFWtDOyqInSqYQb6
	 9988Ygysn1SBr8skyf6EEAzHLnDFEC75r+xkroJe0VnRi/EQZUi2GM0z4WzCCxL7hQ
	 9B9MgT6W5S42zdDvxPv1rKuQSq1oRshYebl8k2PuQPTh7W01p3K4xpPy/oC3Y4OY7y
	 fgJEEBqNyaKju6D9C1R2P3gzuG+zHOro7jAtNLifLlUcxWvEIBA8779P78G2PfyX/9
	 bc+R18HxjHJmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8484C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 21:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178389351368.4897.3758224034878663531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1632c303fa5451f2fdd1e0b5689684f255c5a5cabffa403abd515bfee2e2038
Date: Sun, 12 Jul 2026 21:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783893513
