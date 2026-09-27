Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5351C32AAD6
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790488834; cv=none; b=uVQDt1teRGBhu5Is0wcibF9VtCmcoBm83wgJ03EGj/ma6a+wcULoodc3+cWnBJxDNDogtMWHwwMlbq4zOvwQqktO5Y6qQLBIF8yByVYbgf0bvkCV6pNri5QOF4ygTQPW4sasfyA6B5PH7JRVvUafE5Z/Wj3otLFG+UlJUdx5Rnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790488834; c=relaxed/simple;
	bh=/mDfnqjGU32QLzGd528aMmB6GjjJ2SXsu7hRH2xBjuA=;
	h=To:Subject:From:Message-Id:Date; b=VlYn2+clm4gCKlt2mvK+mCstcppoRRjrX0Is19vawi4f5pyuMtp06oMUwShx3VxSwLpt4T8O5N3lbeo8T/0+BMNOTQr+t9uBVTIlNZIqwExvHNI2qH54NuFaSppc73NJhKK2k108HlJ30GOGTrqIK/210fz5CaDrn8xXZFvXc8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMgv4lVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMgv4lVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66DCC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790488833;
	bh=/mDfnqjGU32QLzGd528aMmB6GjjJ2SXsu7hRH2xBjuA=;
	h=To:Subject:From:Date:From;
	b=OMgv4lVDCtzyTT59FyMMErcZwH0va08XQyHPkRMVfcd2PUarnqTHOkF7F4IejavlZ
	 21XSdZuBFkltT3tc2aTIpdbLr2tgmi9WOrOk2qNkxxg1UkgUkZdkILYbZ9REHg5QTx
	 t8XXH6SkHHLlEJ5P4fnrmZ7yilaHcvfgBMJQnhuy0z4dzNYOdrByped8Bn31pEBSCM
	 e3n8AYivogfmWzEcgJ9cLRSh61fHCDuDP6bwjbc8acHhAEV0nyqoNXk1tCY8vYMjuz
	 blXFJ2hR3TUMkRxRetwhGdpSeLfJ4tHGSmjkH3l0WFyX10mNMxlno2PgDUfGxKXxg7
	 cz5Wepn2eremA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF0A6C98324
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179048883369.32400.17346233280415290573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6d53827d4eddc5569117bdbbc373b525a2e6286d54611eddbd4ebf6732be2dc
Date: Sun, 27 Sep 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790488833
