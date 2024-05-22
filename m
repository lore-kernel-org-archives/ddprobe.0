Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECF3145B36
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 19:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716405203; cv=none; b=Q+tr878RsltH6owORRfhF9Tu0sv2PWr9/qqemsbb7QnvUi0ArfwRiU8HGbDY/7MNrnWeDl3+MAwf/u9vzVSijAK4C9UPC+cGHkVZUM25YdxS8t3CNPTOk2MqSbfqrzk7WV6UDeUMI5TKvemu7CycKuuWh6Q+7KShLh8P+9AgC7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716405203; c=relaxed/simple;
	bh=WXKk+ZBgI24oclJShfFzI1QXGFKRPHF6tIv6EsBLIvw=;
	h=To:Subject:From:Message-Id:Date; b=oLJMDcOD+gMba9JwGurahOYPbjJPYKUX24ceP7uNV0UGUZOvJyY4G+XL4owdYwRJZE1wa6tck7SUgS2pcFtlOi5S7R4LJoxjKQrVThBvrKeXEbghd7SlLrN28R1ZVHAFNltqPVhOsNlegOfc8pBIIgLzVA65SZl1svGzQC7FXcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=esFgeZ5x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="esFgeZ5x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE2BFC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 19:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716405202;
	bh=WXKk+ZBgI24oclJShfFzI1QXGFKRPHF6tIv6EsBLIvw=;
	h=To:Subject:From:Date:From;
	b=esFgeZ5x1UK0IARqeTCjzuJGXPDuhJzgklrqHn/J48h1cvppFDFemEufLZajEFrtn
	 UPNgohFUxHUgUiI1p/PLaxCQgyb2L9veGYRCduUFg9N+QLV1kQthojioxbPNpNmM7Z
	 HheldHc47KvE73jvYh3H+j8lsVF7uKmvkpxI8i+DGpyvSoXlOPRpg5JQYNIUHNK0Fh
	 Tg5EhWensLXFupk1lw0hEezPDy69KqOJL2FndfYWcGjigUnyP8nBIQ47W9L8U03Y2C
	 BvkBrfeFntHh0oz1Unt3rcmW59ifO56ZJjaalfHRlrXZsgIinhYpGxA+fpK5vYXoZH
	 aYzAtbsHyweYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4841C25B79
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 19:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171640520279.12589.16019041654206857696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c675c8e1f415d012b7fb3f276927ff432c2ddd1aaa93745538c96e5040b9d4f
Date: Wed, 22 May 2024 19:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716405202
