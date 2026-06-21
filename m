Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DEE16CD33
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782006394; cv=none; b=nf2n+zLBKKOYGfDdfNDUoErvl70WgrIfspiPZwvIEXdS/Otd74t24eQyIAR5AmQOm2KFEXER6DHJD0qDK7URc8dfjn2QncjJcN48pLXM//nlhrih1JE3uQkRfpJUrixa9xDebdO8xFnG5b4HBrpMyom6B1cODcGuIkYrtLnwAGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782006394; c=relaxed/simple;
	bh=K253/H/Umr+6jXvPOU/yJuopsv6NFw7CGjszS6zVqeU=;
	h=To:Subject:From:Message-Id:Date; b=HOXByBwWKY3gzHqacB7+gQolaiIDRSjYWnFDMIauY0nxnht46AjMCHxJf0SJWu60TfCpdeIiyTFv7nKXjdkYA1H8O9k44fXpZIqM0SgK4CDr53KSqmPPT19AEvIhDIvHf218daaxJLxvDJw0sw93bJ2OwOTHkmGjpma47N7qUcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0uVJCnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0uVJCnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7B51C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782006393;
	bh=K253/H/Umr+6jXvPOU/yJuopsv6NFw7CGjszS6zVqeU=;
	h=To:Subject:From:Date:From;
	b=G0uVJCnMjleVwcVFDPt4U7/EfMoeXyvlvRcYjezcrNO+z/aP4NUVf6esIvnXosUPk
	 8ff6zNduBPaN3kIvJarWGCB7l1fsOwT64BhFhZ64qfdMKXRaVfLKToIENhFM0orEG7
	 J26yA5j1CxoT2RHADMlaqXysvjbP6P+rfkOXPeRLZlPnwIwyJ2xYP7nrr0Pz1GHdmP
	 kuo/bOT9KLvkTt41a4f9dO3St+tGlFTNPQKzQiyOjeY9wO3gYLN32kTlezkUWRXBzb
	 Ek1g9FfIK3+ogpLOK+RAyIXI+mOhNZ8uyHSXeNNDhGoNnl0khupd1SXxYXk/i+nZ2E
	 EdEc2s0PUN7pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC01FCDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 01:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178200639371.3419.9697750259513922766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c75793414dcfc876edfa99c1928064351217cad9e1c8e2acffa921afc6ae6e1
Date: Sun, 21 Jun 2026 01:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782006393
