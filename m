Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DC3A27AC4D
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768255434; cv=none; b=Y0nLMwsKpg8HHwR9LVj2U5j25XbCend3H3+EOHtjiETCjf1abh+A+iTgqR+tE4XAYwRE+tITsS+/j5Cixl8BvWx4/1hg7E2jTFqCWHwdlS47UTUgenPu8rHp1ZBxe1TgXhOl5peJhRRjC4OwQwsP6TRBNQN1iyEKoWms1xoNYnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768255434; c=relaxed/simple;
	bh=iUd4NtvNImrvsFowFPCCdQAp8V28vEuXmWnsw708loA=;
	h=To:Subject:From:Message-Id:Date; b=IP/RXkLMX611azpqluEJdzIK1Za/usCJS/F9f9ZZ6+IP+daLshFJTd2X4UzqqDXdiddUoJMLyBotdEBP/G/NrlH5D5JqnJkVIw/ZsuHP0LBAw1kUiisoPE5ptNY6ApkBDobl6GLRsbyF6Kb5ea7+USVJOeogzYGioyfq4K8gXGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IptTigop; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IptTigop"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07D4C19421
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768255433;
	bh=iUd4NtvNImrvsFowFPCCdQAp8V28vEuXmWnsw708loA=;
	h=To:Subject:From:Date:From;
	b=IptTigopFMpbTguICoVV5ok/9NWZWA/jNVKp6NG9tFXjpQmWWTkilf0w/ff0ZQ9m/
	 A7OagO9NmJE3T92nMJAC/mDNFvD17gGIHwqBGAD9uKxmewl3N/k2LSuZKnKsqRA3oF
	 sdA7+HBOOBkri0GyUERYLoKbtHhXMNNWHI+nY+wxoNnwwOOlbKCqEgfZ5+ab1EHk2i
	 3AmvjxjEKC3JnlYPvYNQBTDRrOeD2draNBoi8Loxm7VBYcCbEAdlF4zz5WeU0R6LJu
	 7jn8EyjVGQqui4gSw0olqZn+O+KAZjzeg7n91xgJmngtAVjbLPGIsiSQApcPNb2Xgm
	 Nj8DG3LwVrysQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D35CF45D4
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176825543358.25455.14868042853363879093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dec596bcd41dd53aceba7cb1a8b11959107ffd9652a5592fe0c7ab4aa90e832
Date: Mon, 12 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768255433
