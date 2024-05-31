Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C3515747E
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717154663; cv=none; b=PzzjEHNyHBOfwCB25HbYrdKkDaCc6q8q7gTXB8Lf5oG5GC12HOYBojYXbAl+X1Q+3bVw+zLtqtrb9cXadhjEFUBB80Csfy3Qze1EsTdk6yWtRC8znfg83e+B19f85oWR/M5BiE+QxK60IdJwoMDeRvNj0iEwJzuJ0f/aLb+lY1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717154663; c=relaxed/simple;
	bh=WR4VT9HpKIqhUQ+eoskcLqXznGG7O4wXIpLtUbJCsdg=;
	h=To:Subject:From:Message-Id:Date; b=Edn3v6aNqimcv26iJcyZ8KzY+iStvVDzhCr4cdspaog8C3sFi5M/pg0fY/atU/eFl54VB1pOLp9+ZRfiudh09D8nu1ugzz+5FLZ7unCPJYpk8QCX4f7IlB4KqWB+Hop7/gmQk/pmIo71R9o2ujTcOZefiAO3TwZsHIl/p/gAKc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XKaZWZdX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XKaZWZdX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E59AEC4AF07
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717154662;
	bh=WR4VT9HpKIqhUQ+eoskcLqXznGG7O4wXIpLtUbJCsdg=;
	h=To:Subject:From:Date:From;
	b=XKaZWZdXLbnNLM9mpAjpu1CX9LBnsbO9w0YlzXXBRcY8F0IHWyGFtGwBlRzceGbdT
	 nRZsd5FaTVUhWIwjwKPpeJs04Rvr8alSJYT7DXmegOmeLSgbNs78IHKH24pnabpB2Q
	 s9tYBtn+A6QGXhG/v5N97dvGh+KvzjfOSLy97cFi/KbqfrnIYiAXwmlrkOX8J/3p1B
	 N3ZSvFG2XrvC+S4JnvqRWREKDgYMwGVS7YhC6m2781xskG6c0OX6/72y7t5X9f6Y3t
	 P0ZXXHiLyiTWYROvxefRqG89XXKSBzDFFK44w7nTkjoHyfl+OR+O3OQmBNUC/iMoCH
	 bY5fielyG26jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF61C25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 11:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171715466283.30598.16511635710851458705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8bbcce3505041bdeab568395ba444685a2e3669e4933e4102d1aa13ed622c3
Date: Fri, 31 May 2024 11:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717154662
