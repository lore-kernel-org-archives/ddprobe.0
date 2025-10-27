Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356817083C
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761529194; cv=none; b=rmsNVftXoqaq/v09gEORN808iuPFRCcynb6gGnmQkib8Xak5KaJAZq4CTzbQU4K9iar/keLHXu4dxLvhqDV3BTSx0YereEYSxk90E444ZKUOLrJIEOQ0n5TL78IoUrKw3+ce/Gmym97x9uSSlfYy/LMluHkHc/7t2POU30qc/Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761529194; c=relaxed/simple;
	bh=VYJv8IHLnfaQNlGwVzbYAZZmkJEnSgx3+LbJni/HR24=;
	h=To:Subject:From:Message-Id:Date; b=o6xHxzCGfOCOVkZ9OyXPiUDsJCqzlUQrUHqov6rhQNYn3eXb57+UwFYu/XvNV2k2K2Xyhi+oXa6Q8PRNcwMp5swc+A/J+aMttvL8n1NNKfR1CAFGITLmm1hyysD7WiAmWYAELrtYdUwddfkCwcVeOxprtYtXOocRxVXo4hd+89U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnNOCsqI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnNOCsqI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63B5C113D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761529193;
	bh=VYJv8IHLnfaQNlGwVzbYAZZmkJEnSgx3+LbJni/HR24=;
	h=To:Subject:From:Date:From;
	b=SnNOCsqIxuoGQuHHFIGgKlvMvq9Q+Df5eL/5nvrx4kzHVSNC6ALMQgfY206Cy817l
	 t17DVh9YHhfig0f8ovjPSzLUF9OH2Tydya4pMHMba3i68ecLvTk/dqaJnrcqk8kdHM
	 rhP21wB9Kb1l8uFb7/38zVBQV6ZbZvgYlhgM4fUklqH6COZdZu+v2hBkSOSvHsszLI
	 2F7ZYILZnh8v0HlYfOIfyzaEJTagqAIA7xUjl21HFeE8769pyeLq/QEA4KHd7O2FLK
	 JU8MhqUWDNCHdm3UUzHtmSNtPRBIStVhIfpMagE/1rnRu67adc1qLhBvLKcpfZnvHY
	 J39eRU6xv9oiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94700CCF9E9
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152919357.2157.782090191294582924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75d94f828898f3cc29cf9b6f811e860b88f57e337ccf7073d99b39facd88f18c
Date: Mon, 27 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761529193
