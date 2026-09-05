Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FF531A9F96
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788617434; cv=none; b=Lhuaa6X7kMGDHHsdVNBxTUd0JVENmZlMjmGTIszKXKY8zqZDy1zX0r0ZxrLC9kH3FEk7bErrJXjLQwRUkbRDXChqlS8F6kSkIhwTPAh8oDMJsAsjNfvhgaN5XxJ1yukp5AaAFICp2H3hMrLiuEzuHpeOfPvlOvJ+uSdZ5CNOwyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788617434; c=relaxed/simple;
	bh=kUuLYQjJ4q6yUzqGUXvGQSZmP0BIK4TN4LB/lgJnnJg=;
	h=To:Subject:From:Message-Id:Date; b=BHAW173yafs9Bh/H11eT3H4LMj58djS6KqSoSaxY50OSlPjXmqrJ/bImlhQPF3jXL0F0e167Vi30biOkRyBH9eBk6lqo30b8kUlXwD3jYH+WBFBZ+Ddd0ifA3XicIpNwLMpquvJ2N76GKMxHhoHMudmJkY6rQSJv/Bq22wSl53Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p+x0blVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p+x0blVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC654C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788617433;
	bh=kUuLYQjJ4q6yUzqGUXvGQSZmP0BIK4TN4LB/lgJnnJg=;
	h=To:Subject:From:Date:From;
	b=p+x0blVtou0HfSbj0MIaG9JZa9fHSTEqrO34G1j1Ap0PyZylA4TrL4zTD/X98CWbb
	 MbSvvHqjgYtA8SZ4IKm3ZEMFv/ALMyFnCaFrogOEW4y5Ylgr6RwA9kh0wWuc0YLclD
	 CIousvMvYT0DYNNOQQadSzqapwxA5KOKoYuQDwcmtBdZG0is4GmaHm/kefvLy/9EBw
	 fA4wisYYtgV43bepXBQcJpz6eSMd3Q9SIGrk4De/J6qWtgOWtJvcJi6h9ce+LWGc1b
	 d7GCfA8+/yP07zR3nQSc6HinJrLqyoHyJoLex3YpBW6NxnWneWZ9MIpKso/tVxwyNV
	 5+8q/+YD94h3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1F1C624DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178861743368.12043.8157657343323650327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2a6b6be8b45ca7c55889cc7ffe4403af98f9873fe357831ef650fdd063b042
Date: Sat, 05 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788617433
