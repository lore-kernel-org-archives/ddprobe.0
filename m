Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC3E23BF83
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765272774; cv=none; b=jJiE/ZeJsVER2gWOAUHMP6rGwCET7CW6F65RdGB4KtfoqigT8OglJ25PzLDGgmFGJyGkcCHPoY+9HpeUQQVYes4ilRbXTb89rG+psOuMaQ4jufbUxn8cQx50NW5NOmJwqh5J3BRNoOCV5kCdeaI5ROMruP3A1kLEub3kfa0Bu9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765272774; c=relaxed/simple;
	bh=N1uDpgkmT2nibpoJmXxbWMsaTXHNNgQNHcZjVO43LqU=;
	h=To:Subject:From:Message-Id:Date; b=ecWdJLIrB70Hljeg2guYGSoZ1HeSPYzyf5E7QCV6RNw3QHCvkidM4DYI++RsUq9aM+XbY14YV9NpSueNawf/fyTmZhUpa9Rof1crk1rO7oiwR4lJvEXINbrUtn0cMFomeBT7Jj8ehiwnsmtK+ZyaxrmdNyoEK1w1e3OYKF/AIkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fU6qszpJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fU6qszpJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C54C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765272773;
	bh=N1uDpgkmT2nibpoJmXxbWMsaTXHNNgQNHcZjVO43LqU=;
	h=To:Subject:From:Date:From;
	b=fU6qszpJbVjycLLP5BsVbqmm2s7bZJ9iskoaone7C8OBCG7bshtFtZeBTA0913+D3
	 UsfdtQpop0g242TYLxtuaW59eFhvKnpbwFRP+QLC+PFCz1I3JdAcXBpCt5GIPDvVO+
	 lf3hHy9lX38soIcq7mWQ6PduRsYWutOjB8xbcbPf8MNM0vXS1R0qPANvjTMD/YYOsd
	 KClsCc9x1e34fJLjCjhRssfMN+G3Xyi/ZvV1I/wsMlvMk7UyRVwVWnXa/vjpIBchSR
	 XQ+QBqLnsjmVcTwfVYwHxzP4eEB4n1/ndbEIn6IMKCRqfF3bzuyaUcVMa0jpLEsm5t
	 U+JBAT5tGGriQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F67D1CDC6
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 09:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527277363.7639.6215162567566340663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff538f7f33f42b62fd627a3bd024fc4e5266d87b45aef2a63eb0b7335c41246a
Date: Tue, 09 Dec 2025 09:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765272773
