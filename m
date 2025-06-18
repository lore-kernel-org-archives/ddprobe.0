Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277132F5301
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750207194; cv=none; b=XKe4ttFOvrErHSIcV4ZrmZxvXUkdb1y1LSYoMR0zovaYZkV3DmrfsWByIWTaDZooP1/PA4IuBrYyExLgGwNnUwDZ+1DQYJvuLGAnKjHqsGLvrR209qX+dr6u4I4Ss+hMzjAjYb9AcweaUYL0/62wESjWplLKY1LH0qSpaMRrN6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750207194; c=relaxed/simple;
	bh=feTq1RBiQxqxh2NEYmFueU0UGEqs8Rz/+ZjoCjn07t0=;
	h=To:Subject:From:Message-Id:Date; b=szgcxBEAZNtbUjcWUR2TZwyhkhnHCQ6rLZiYKFiYuFpKDgbhMY3qaAj2bumTeuiN/QFwrsm8OzHZp6hhnUXOF9MRmNNX4UuFQ8rQ7XbUQ5eCmWMw8JALwuaMU046jS7m7pTOCaw8gJBslYvK+QRrB8Vy68z0eUNYE6uSaI1dtLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTAuPh9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTAuPh9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A051AC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750207193;
	bh=feTq1RBiQxqxh2NEYmFueU0UGEqs8Rz/+ZjoCjn07t0=;
	h=To:Subject:From:Date:From;
	b=RTAuPh9jK3nErQF+0aJ3/n4is8hyyXwKle+6fq2ccKhRQWC59pz3oytElwVuUgjAS
	 XRUmxBoNPm9gQ+crgETqnKefSzKaR+8UJg68vVYeBHDLzsYnA/zqufHycElrVntwwT
	 Zv/CzXNTifLOD68sqk/q0cxZX/sTsUZCOu/Dfrgn3xyRkpebZj9JicMg4XzWhDwhOg
	 MlsgaZKQs1yhgbtXr55fH1Zu8fJMBCiPZjEjL5bBqvTPITjOa0RrV54/7wF0dpJzFF
	 XqlOO7X1Cy6BCchD/W5fb5ns8HccxchULqjaUlYidvTSFVAzyc/b375ZpNgdVB1vzO
	 HGRoZq6yrlSkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90949C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175020719357.22616.14418226290918645023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ac3af3a2940013fdf9b9129ba078cb83cc8690fa37ef8e8aab28be302d446b
Date: Wed, 18 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750207193
