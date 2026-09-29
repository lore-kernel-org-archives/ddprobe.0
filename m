Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA5C349CF8
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790653234; cv=none; b=uPlKyLDLAGJ3R1KRUbov4mBlDHouAHwKuGhZNYBwF2pR2IkBSPlUUoE5Qm5Clp8SHuPVblQYQumE3ZB74xa3vILUQn0a6eXQq3IT7wNWou7XF+fquhDCBCzsEM4G/asWFXwixmcnoeLwwviUuNMSKyfLrIN3esCTNlXozOG45hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790653234; c=relaxed/simple;
	bh=H5tuEoR0UjhFOA5ncDi6nQUqs4cBRQJnFXdIExToRHs=;
	h=To:Subject:From:Message-Id:Date; b=BJ8MsscW30sRQZUqJuG1qx4bu13PX0CBNMVd8XCsa0qpO9Yq4UNEWI06xkU4xBxMa0MQySPZqOgJr1GIZ70VieGHEP+rfFr0/NRqUvKrupbk6HgqeeB9SkoA2X8PhrHGvBMj0xXmu7kF9msuAZSAbOF+k6VLxJi3Rv0MJY5MDDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0329pGf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0329pGf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3644C4AF12
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790653233;
	bh=H5tuEoR0UjhFOA5ncDi6nQUqs4cBRQJnFXdIExToRHs=;
	h=To:Subject:From:Date:From;
	b=d0329pGfRj4Bq6lt+dEMEidbGgROjK3CEiIclcbV4CuuJoDKQ+B1jKSaBdq0ZGcYl
	 Bl985+bzYFTWoUq4DQKoplRMpCaYLzwVKwG0hN0PmWhaObmJUnYrQx6R54TzKCXGxY
	 j4loCVMuCkKIgdAPoqxN7GCKA/+R7aJVrhNF4C1qRMcJPiPX6Jb9bGioNEQ403vcYH
	 RBUr/T0ja22m+HIFzHyArJZqgBh9J5qI5tHlAAOeiPUzRBkPsIr+xn0mzEwP/i1XGB
	 AXErf8KAi6A6jkVchK6fIxIlF0VWhT9ltF6lhtLljvGdADPhgzdssm6GlgcFRSOgQ/
	 jGcia5ddhV6Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5ADC9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065323368.31985.13315697801494566552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99611a319aad4cfcce94725778fe5a4843a75923dfab4191cd1c3391f73ff449
Date: Tue, 29 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790653233
