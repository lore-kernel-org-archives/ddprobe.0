Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDFB3B5835
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785603634; cv=none; b=ftX/cMgLKlZuTQIM+bS/IGZflePftZ67OXem/JM+v7TCcLmWVppdwhvQisunYkVJdAaJgnOAqDjuzvLXD31ijhR7md077yF24eiBV00+xvuk9R6UCIbhXOOGYKU3g0kb8N6FJ1TwuKETmBGZuenKS/5KBcH8WbeFir7Wv1h5CZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785603634; c=relaxed/simple;
	bh=IZZHs4gxNHBKW/jjETs7zWTDeqlyoC2n3sRy/xcfcsc=;
	h=To:Subject:From:Message-Id:Date; b=uzHbRGP7jSnPTy+Ac0UjJhywfE7G97OQLbzm6R3kKfyHnSpBbc3pa9G99/7t/WfrlhpPv9MtTdAPAXJGjVz0BsBmd0R8+93iLtzM2RoaN/Q6p1MM1g9ERtL5NA7lIk+8HpO8Qm5kwsT4keminEp9OZxjUPXM/m6jujQBW4XqKC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQtIPQpB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQtIPQpB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DE0C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785603633;
	bh=IZZHs4gxNHBKW/jjETs7zWTDeqlyoC2n3sRy/xcfcsc=;
	h=To:Subject:From:Date:From;
	b=JQtIPQpB2YEfYk4BAS7l5QAn4jnynpmGvmNnS0ZalpKWqbzelYEE7/iZcLRQfxV4C
	 6DCuYxparrcUxLyw5kXNi5eQ1vedUnWNL5AIufpZgWv9gnERXjnTWYYjbMUsCQJW7A
	 QMgH8QSQhM1nOeaWAxHr4E5Xzf3iQOnxp/72RQ82VOqrtqhWXTtbmF7JLZOKlCGjwW
	 ffSp/1A7HXuFPDYRWOartOY2BPWKGkaKeRS/RQLp1FsEnUMRb9q1mEdCbIH68vkS0v
	 CUalSEEI/gXmD/HVGP2GKQRRnaoR+Qmp1JRIjCIJkIMJ7hWqF6SqsOM2mr92upRgxS
	 jOGKUInoJ9MbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE52C55172
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560363368.10393.9372493395095741721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f892832a79948ebb18fbff0bc569a815c92c3555daa798be6ca4dc251e68545e
Date: Sat, 01 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785603633
