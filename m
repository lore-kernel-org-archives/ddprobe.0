Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5282E1AE873
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:05:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720101923; cv=none; b=ABKN9J+kua/IKOfXVKojFncYmZKbpHPSWXtvwzDdu/YFyAhS9PUrkMUbwEaoAeg4/nJNohFhNtbht1BnX0otMa50gQewb7VZ/I5OUOV9h1wINOiaZPUWoStFqTj2nBLLbN8s4nGwfFxgaxqqa3G4ibKd4GSCHzkqWFFq769fTsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720101923; c=relaxed/simple;
	bh=ru2Y3qNsFWc478M19omaV6YvTF+4t3cOVlpeIDsfpIY=;
	h=To:Subject:From:Message-Id:Date; b=p9gz5rj+bXopGZWwoQhHghI0098fnT5tsUfGUllw3n2diR/4jDEON+pL7aZxq6KLn2vnzwIda/NakJE+xAJ58xCTXLn3pCQ8m9c9BiELsMvRYPeqyPShHyPALCSCJ1FBAkW547tTVC99haiNfijHAvDAvais2kZ2LRn+QCHQaw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vQ2f9Xze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vQ2f9Xze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DBDC3277B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720101922;
	bh=ru2Y3qNsFWc478M19omaV6YvTF+4t3cOVlpeIDsfpIY=;
	h=To:Subject:From:Date:From;
	b=vQ2f9XzeOpUMNe3FZr11OKP0++WQ/GW9fSrfwDGfKBkrhzXRwF3dV8w+U+AtXXy5d
	 /815z9VULVKkL90vQojLmbWvrgPq5HNt9oexOEP8HRIDTBpzXVER7A9MdqWU6VRXWL
	 oxWPvAic+la3ToHrJEmlR0vimntNxtKMv0UPHwryWIw40gvH3G+W3PpeKK6fubX189
	 s8qpuZTc4x1VmUqJBAwAUdojwcn0Wty7fFipByJqi5tuWOqFZINt0gT1Oo7N3Z4oqj
	 pt8Mxdcd2wrjMvA6NTpPs6BjzYbGYvBnEwCkN9WsOunTAh48xDO4zBiOVjfEV7Lli1
	 9FQPmHrTSac+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5EBBC3271E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 14:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172010192277.22196.11220234250600034079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73809f5aa1da981ed641688503a68778c7cb6844ca485815c40c7ed7ca77011e
Date: Thu, 04 Jul 2024 14:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720101922
