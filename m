Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BCDC3FB059
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773953094; cv=none; b=Z6CopLQi9ShWaxZ7LD8zf/fGR8F71APEjEg3Wuhw+suq0VNcXN37qkytavMvdgi5gu/niPp7ly1WlFTb9f8JvoN947dvd5FeoNWfLPzifrM2BPp0jVkgzo0q5A6haA+w9QE+K5YjLMtbl6wtaL/yE2y5OzpEehLOV5MS6rAKv3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773953094; c=relaxed/simple;
	bh=8vKw2EmAqP90OuJuUg0CZyU+8GR5MItdl9CLmbDhkUk=;
	h=To:Subject:From:Message-Id:Date; b=lVlQD6z3crLAWZD7x3Ake6RpbbDes7DuaUcnJ38zwgApw+7gYstigAzvxYkTI+7sIle2PeBUqnDXZbqegyadyin5rhJX4AnbvjbetFLciu6fdzEt1F43agiI6bOyMOSyj/DTVXbsDy1o53azJuBFUpekfkueGrFuokRKAevZ744=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Li7jGhJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Li7jGhJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECE0C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773953093;
	bh=8vKw2EmAqP90OuJuUg0CZyU+8GR5MItdl9CLmbDhkUk=;
	h=To:Subject:From:Date:From;
	b=Li7jGhJus6OQbiCiDx78tRb7IUyb8vHRKaeciQzIDLrcBOjI6yTsjkP/FPjY6pwGb
	 h/llNUnu+Pjoqxgc9pDXvzwwxufhj+vq/IxVUBOE72rtwSWi457D4K0IZ9vptxQZ2w
	 tz+wHsPN0vFrKn5p8ZzVMJmd96+O6d03P0/BHBHLs8TLKcanmp5WgQnum9jSc/M/R6
	 t0NpiideouYp2Z8mBs2ow9K+I01Kmnd8yK/HkB6i4VXtRckJ3fcFJ0yOIZK43k/Xdg
	 8bcvXHgnPONZfdLUolDyjY2l1KGe5ZXsmtmIiZgU2vJcdjhGaMzUQPv5MJySwdYxlx
	 xMrkiuwG3S1yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E4D1091917
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177395309357.28258.13655837771576973222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93bc01bf30a8ad9b15864215f46788c480277cdc0b3377dc1c707be8773db174
Date: Thu, 19 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773953093
