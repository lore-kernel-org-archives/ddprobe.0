Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE88198845
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735498554; cv=none; b=Pui2jQV1lUQQ6GJuiU8Qpz7QzAjG6c0v6kWUm+i5X+c0af0lP2XWXCIBzDWQMgRoOCQFaFR4MAai72STp4f4bzVRnS/Dd9OszwDeSxASjVHDoWITeqaGCNLr0PF5hzh2+bS8PRNG0eu3SiBYIHtN+vwdJzzsw+7xex2v+1X6tX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735498554; c=relaxed/simple;
	bh=hmIJXz3ViAHIfxeMQ3H8ue4p1+etVDjxC/CgWqlkRwQ=;
	h=To:Subject:From:Message-Id:Date; b=LksN8cRrFPQ7P9G8XFpghx1MzrNfgS4sXjwRf07NA9rn7UZvEcjpJugGYLR+XJ7EIrdaJp1QNC/N9pGZvRuGu5WiBIMaDPKxOpMFQvzG0mu+s22ciDZNk72BYpJGu2N3LXxv+4hwFis67AywTTxBLO6d5/TRH7LVrkmNhgcFgug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PxRf7J7K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PxRf7J7K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7B1C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735498553;
	bh=hmIJXz3ViAHIfxeMQ3H8ue4p1+etVDjxC/CgWqlkRwQ=;
	h=To:Subject:From:Date:From;
	b=PxRf7J7Khn9HOSMMW38fk2xhRbh5wSlMHVnv1dNpVq+sJgfjfAsddiUAcPp2t9fgm
	 GL1HAGldPkNfef09Ukty71ryxf/WHEqL/jAYFBPzyRnJVttbUqCNTgMwLIUcjOzbjm
	 veDt6UAWdldImMwxWCr0QL8CJE3xX3k+s53jhQFyrMk15Lc7CO5zafKDe7QACjtpvg
	 x3kUqO9Dq4siVAldIZUQl0UvrQTQvqBwEcU9/ghfAHK1zHUrKahP1n4tcZny1MJf6c
	 edKfEkINX1TSUmU16WN/p86tUGVyHHkVXvkAOzIB9GkA2XLQkA5Xw/EywwfbXEOkQi
	 n76dEm1N89NRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93414E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173549855359.6158.16592425408844921334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02e2c1ebb36f2a676da642760b1e2966f955f11e57d4bfaa2332fc187970e8b1
Date: Sun, 29 Dec 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735498553
