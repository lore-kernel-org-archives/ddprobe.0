Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5358F1EC00C
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 21:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741816734; cv=none; b=kRTyXNke2+E+GNJ4T9zqXGhjp0+8ULr5eN4iq703vJCmDCoMF1x4rfq3zrZsz0tELncZucKBW3fFfmaX6r0+FgzqY2Dx6QGfaTm3PNZSommIbJYe18kzXb+QsqJEGmmL1HnVObxH4zRo+vjexhTaJXGuHyQ+LRa9L/c6rheeCOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741816734; c=relaxed/simple;
	bh=TpYKWsq6UCmFFgXfYd1xRZtMDO6J1jKIXoIbkNX/LAk=;
	h=To:Subject:From:Message-Id:Date; b=rrrE8rtHszzUdZUfjSR4VUvjfof+V8r1B/8v/vV2VWv/RdRvOsdiTi5HP0DBuTB2wzqd3HqtSeztlQ9KL+TtdJ3iLTVgr8cLZBd/ViAnKkpsGXnpg7JSAdpPYg7ofeMBAiSS8ZptlhjjqF6RPq6kILZYWVyHa0QkjltILjJ5okw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POXXIrlX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POXXIrlX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC82C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 21:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741816733;
	bh=TpYKWsq6UCmFFgXfYd1xRZtMDO6J1jKIXoIbkNX/LAk=;
	h=To:Subject:From:Date:From;
	b=POXXIrlXo9EVAXZwPh9yvBj6GFzUqT1mtO5yGFodOeZ4ntMEi/sB4x8CU/8dIkRS9
	 CuIyvhgzfBalkwftK64xN8v8JT/Zcf3VgN5Ra8DkrpNs+O8wkOQYvpP8mqTa9DYmgn
	 vhHAklvY1rE1YDJgYQ+aNvbu4zQ/ZcwNceBaCn1YRRL9dAIJ3RJ4UjzI1n+zbec3/f
	 coYrXuQADv5DNNopMjKv0FJWAPQuh7Nm7Xz0Bver8bXxCSeskwzSl5rg/WYpwdM88G
	 jmgQ1RnxTGrkvNV36fqTge9KFFZ9PlTaWVUQ6tCOqhQAUzBP4p9wB/eQSwERPo2V0l
	 tkVjWnA1oOPKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2325C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 21:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174181673362.21366.12226782313676672777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01e894a7b88aca96ca74857223e1b4acf6da303bed607e376b97cf94c575445
Date: Wed, 12 Mar 2025 21:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741816733
