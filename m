Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5976C233923
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786929634; cv=none; b=U8rx8eBotc/rSgAKa7kyXdiDUjhd8fxU8T3OE1B8A3KcyLvIKn+3dXXjPybLWhR534ztZ6cJ4HzKZm0YJnKATDo4kZFJQQjIsj0hRYrA81IEBq8JbL7r7Vk5HHr0/XJaRPNzEQ0oApjiBcbO6FP7+dsVynusd8xQqgZ9C4Y3ySo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786929634; c=relaxed/simple;
	bh=QN9KJNHprVqxLMV/SPnm/Lu/ZzzUcgjlRMTnhcl5Et8=;
	h=To:Subject:From:Message-Id:Date; b=dToRkLFaKZwcyOr2isbXeZBwfBLxU3DJYf8zfWxrcJufuO3yZf4FN6O/Jtrb1GP2ork0E6lA+kwELzQ337fmFRM9U0Xm/OyeQ6/ys3yzEtwXai0QhoyutflRc0m0dzqq3bWKB6L4U+BApeNw76t+x6xpclawWHlcusrK+U6jIrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CT2U5aN4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CT2U5aN4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42CDC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786929633;
	bh=QN9KJNHprVqxLMV/SPnm/Lu/ZzzUcgjlRMTnhcl5Et8=;
	h=To:Subject:From:Date:From;
	b=CT2U5aN497T3Qf5828uWC8T4DSdRVULZiYmTdQbgwOJ6X/4xrI7V3YpNqBztwjEjq
	 rVY3bk2GV36QTXjTY1zD7Q1XVogu+qy+EqAuEK3xufoaekrXfjd1AKH5NNR6EQSZd0
	 bOzRkB5bxiVFtkUJwWNfKlM3ZqSGeYGDvSX/8IPkSa+YRzepuwPo7bqghUmGMPSaP6
	 2I2Pj+K4rmKrrc50DztnXyvigCWXY2D/P4EwrafU+vuZANFiVLMJ6Pev+yUHu/74Hf
	 fmz4Q7ZCuhL3Bmp++Z3OZ0odElWH2QgjIp6Nq/2/nGJ+kvfXf8s1x3YJbczdGDz8Ox
	 LIaVVYjfnLf5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE57CC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692963370.16382.6870097298904164600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b26a788f44101e5631a9fde8b4f18df190f42016de3c88ceef2c176b3eac75a
Date: Mon, 17 Aug 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786929633
