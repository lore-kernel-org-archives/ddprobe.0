Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429092BEC5E
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785743434; cv=none; b=Cufp6SYPs5qNk8fu1oIcZRRggROey4tBshYs6MKY/Lv+A6Ic+4X26EwgeoX05Y6JAK/3ZjX24VjBgtiegX6zEg+L0UOCFiygPfLY+SYFHZlNpzONfbLDxts5IdTjjqsH6xmm5NnnlzrgDWWJeW/KQ13LNkI9rSNYbJ9WZlwPXck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785743434; c=relaxed/simple;
	bh=BvkCK7vgumFgGf1E/fwGkAy7vE9bdi8BPwgJRKxDB9A=;
	h=To:Subject:From:Message-Id:Date; b=pCc2o/U2Yfs64PyzgC4BASh325kETZ5gYyujGGRPod0K6QEbqyrkUbrh5wLV6bb+KRdNYBkaLlCs9vABjq6QZKhxwSApkQz/rGoJfhRNZLF4eMZ3C1Qkw4LP1DPPv5iSCRTdDhZHVhendHJA8gnRcwlcCYJ1bZoXKZdHOQfVfmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kwazt0nn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kwazt0nn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFF3C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785743433;
	bh=BvkCK7vgumFgGf1E/fwGkAy7vE9bdi8BPwgJRKxDB9A=;
	h=To:Subject:From:Date:From;
	b=Kwazt0nnA2u+BHP0GZG0jNxo5xB3gyf0LX2BDu7bBmcSrtv085W6cTzLFD21oxbNj
	 kZ8BTV2acCWZYKUobDseZyijMVWNotgj0Usn08yuRjB/ncMpFvCaBV6nkb6CUGiuf+
	 qHm3ysdoV0cP3yxdFfrSL6Ytsnxag49aejVpXgFUBBccc/D4NqRQNviULVONE7hB3Q
	 VzNgRWPZIEc+e5cFkX2uwzZSTrULUj92/z3IpIsqRArRRssxMkp8TUEBJl0ufKXEWa
	 ddALsb60/uk1p/6qQjK3V+i5ddG8uOXrUC21yyLkjglbKWVOyM9SZNVq4J+nAznk9R
	 +okIGNjDvDCjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3BAC55184
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178574343369.15224.17581060850016334607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b9a64446aa5197c46b56fee73a4a849b728561fb6d269b13305f7a9994c7c68
Date: Mon, 03 Aug 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785743433
