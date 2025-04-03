Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43DFA248884
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743674994; cv=none; b=SaiBkd9dE0UafguaW69N2O1o1Run9OPKB40VdUNSxROiCzg3RbD8sLqETQBMWyF8jHYo75Y7jv8TsxUqNAmh6fy/2JcroaKubOhM1FrCxO7HEFvjBACw9d6Xp2Bado/aDIHTUBD9Pbip+LrFj5g4v2Lb2qwT9I161vpogTxY7GE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743674994; c=relaxed/simple;
	bh=6t9YIIKsm5viW19xWeUUL5XcmCcrgV5+iNeVz3Db//A=;
	h=To:Subject:From:Message-Id:Date; b=ne2EwZLQOFa/42hFhZDv8ehN6iCEC1Nr7t99xh6mHwso3GrxOc9LljQejjbQsWN00lHzf90Z3Wbwjdl3VdfddAUxFzQEsnJ7mQSW0fDiS7UK7t4a+wBSsIMdVLxdt2O/oY28SSB+ZM3SnaHkits5laXUVHzunw6vaIaJds3VfgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rgM33nSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rgM33nSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE13BC4CEE9
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743674993;
	bh=6t9YIIKsm5viW19xWeUUL5XcmCcrgV5+iNeVz3Db//A=;
	h=To:Subject:From:Date:From;
	b=rgM33nSRs2LnD7TeU8r+IXNpIXt72otTROK0iFGy9zWwiee0gSjWPmgO8vFvYpXLy
	 jStXi/XCgNYUGl2V9JhLvLFVbuzzEDeDWWxPvPTiCNLciyVugKpwIWpBmgfsMsp3vZ
	 4sv+y53Pcj6ZQOrJP6ZgAY+h2KUue8lmQJtqQH6zrBqS1CoFAyGnkzNfCoRjRuo1My
	 n2zi5KnZeQFaayI7Kh8zJMk1Q05iWDi4dnk8poDKZK2LfOykzv35wxA8Gzx6pPpDVT
	 taQdVtLyyiIQxA4i4jzNsOXOrFyXd26JpVqERTRmejxezQpZfIj91HUeNBAp1Axv6e
	 bdRqZTQg+X5rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999A9C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174367499361.16241.18380226284191014970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fbec3a81e7addb151d568555c4971c790cb3eb172be96d2c911a9ca31139e2
Date: Thu, 03 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743674993
