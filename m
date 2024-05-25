Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77FD04688
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716600803; cv=none; b=i0E2qXNhhONJE6xdOJrL/PPLOkLgmv7e0i0B8CMnlpOfRJ5qSuxwhUJGnhK+LJOTKP4F2gqBCcZGqgUsP4HhCLlOv8i5iPhHsfhSWO/x1pA1S0+BuS1F3ixZHy+8sriCqJVyC4fELXGwBB3XM30pUwGpX+3mMF1NkOLIDTu1KJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716600803; c=relaxed/simple;
	bh=/OWst3bo5CIiiqTHvaQhrcAL7ejus2MxNYGwLlMAsaI=;
	h=To:Subject:From:Message-Id:Date; b=eAro0PC3TPR91JinsV26UXHDs7aRx3XeJJY07RvmfHExFccKc4GIx3Iv1xrKCppWEgL8Crk2YVs8zoVnAAZHCZjXRVZcvIG4jeOIF/XQPArOL5W62mV6DAEvysIvMHLqhrScZmG3h1qUHTSfn1xf0T66TK5vuhx3bDzzTPOUpqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TX+d3vKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TX+d3vKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E18FFC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716600802;
	bh=/OWst3bo5CIiiqTHvaQhrcAL7ejus2MxNYGwLlMAsaI=;
	h=To:Subject:From:Date:From;
	b=TX+d3vKZAuAsooXIwQY/VaHXKSSWod0KNdIm7IsD6RP2EJDjcFyaxO6fMXYjCuPtl
	 xmok8UsuvNtuTnAQGQcAI+RqKXquAzSApn3QZqKu3aQD7gvEuCMfLid3gX0J+9RB3k
	 zIDGkAPwIDUBLD1tw8+HS0q7fAR63E+FAj1vUxvf+Y3MGlB8r8KBifin41qmBo/jiH
	 vWV1EgHbDtcSVxACq+wtYwpjopfMgsEEBMCCvvH6nVsLuTPvAgiTP1q8O/cXJgEwr7
	 Po8DdJXEA+IclaM610M/bRIUdsO42OAaM3VlSiBfqob5WP8gQBHQPzOZZL/v/6Dl7n
	 0tusqXQmRJmMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF32BC25B74
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171660080277.29089.15674213566980313787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e07f92915703a30c6f3599071fe513b11fe1bbacb5ff4ac745566075ff66b8
Date: Sat, 25 May 2024 01:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716600802
