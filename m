Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0657A30C37B
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773684894; cv=none; b=hbaKzu+SOBmnfAcbVUoQ5/RpCagfpEPKR7TpDbz9OuQsV2p4dIi6B9xaX6TRYgyQ7nWMtu9G25ogU454k68ue2ZfdsBFO491AIv8DAGyAYsr4O2zMyWiwFG6vqZhFTA53hOmNDZHhte/RcVzHv1tcchjOonkQSTLGjPOepOlSYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773684894; c=relaxed/simple;
	bh=rDeuB9nNIuT0WZ9bLEp52tEzpT94FXioiU3O+UdnP64=;
	h=To:Subject:From:Message-Id:Date; b=pDDrdKRr36X6b8H3SqYAdckQParMdEsfOoJxRDRDzHlMQ4C6nMvcHfjdmdN7hMTLX/UAErHOSCF+J/jLVl3OJYtXlGW3aO/1t1zpbhR1Yja1ll/jnJfyBPCcUD3WjAZMKZ88A62VZP1jZceh40yX2R4fe0ktXxH5jTvIJgfclwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkZvuIe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkZvuIe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2276C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773684893;
	bh=rDeuB9nNIuT0WZ9bLEp52tEzpT94FXioiU3O+UdnP64=;
	h=To:Subject:From:Date:From;
	b=UkZvuIe1MRYm+xt7bAjpVwqtTd/MjPrZRzfw/u7EnQ+wEG7cXiXOJpUsBtt1RzzRX
	 1DaUoZF7w1ltzcm/DmORo3XX1wKKyGuJ7D4mKMhjIDxfms/gjPd0KQurpU5NM2ljJQ
	 eKz0cl75zEUOJvSU0bK+9KmcHXaxF50f1lp0idRPpmkkFyyyGPOxLink9f/E5yIxC2
	 ocynGTSJMROPmOb1EISZMpgkwMpPr8o0oWIUZMCDncc+XjYzdp9bjJDrha/dix2zKX
	 oHmQ3NerMJTVDSpvbYz+ax0vP1FiIixDmuJIBhNMsKPUublnRdJaXiL4aM1wNfNHk9
	 eVxZ38uRc5yzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930BFF53D81
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368489358.17073.6247312901549459563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ffe23d2a549d29f403790d987c456653f98afae6c009293cedd84b587eb6cf
Date: Mon, 16 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773684893
