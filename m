Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1AF35C18D
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773811494; cv=none; b=ERh728qYhkUa71eE7jyjZ05JLuNkXRheJkh0p+DAcb6SnDqurvqK/p03YIWFAG1zgHe7dCtuN45/V8dYJFjPVWjghLV98V7exHzDzl+J87cdZK+HSqiN7aRDvz7qWu/u+vI4g9FT2BzsVSc74+6YrBzJ3NDDG/l4S7hKdZj8aU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773811494; c=relaxed/simple;
	bh=6wh3c6DomABsAZGc4TD8nokGE3B5mDV54t44kG8WWz0=;
	h=To:Subject:From:Message-Id:Date; b=H+dM5/8J2K1TvuOoISqua4X+hULmIzXQ5QT4AmGvlBE5n0V0N7/AT7x4IeLUaHlgkvG8xQ1BZCgw7xrWvT6IakF0MW1uboXwNdvG+UMm00cOH8YZi435JLLreeiDJP0xdpSPSh5RYQ9o1RRKuY0dxGhWWuGj5rTX9MJz8Otrnqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xpo8NLJU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xpo8NLJU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C0BC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773811493;
	bh=6wh3c6DomABsAZGc4TD8nokGE3B5mDV54t44kG8WWz0=;
	h=To:Subject:From:Date:From;
	b=Xpo8NLJUFYXyt+8g0IIxWQHyVEL4r3NGUQ47aDD6S/tnp6QkgPkj5/AArYJ9dMdZS
	 EJ245rBjYthMJOJeqiB8L80uXABsyiloyayZiOcszDByfWbVxwTMugemEbo8q8DFAW
	 G4J68vQCIPeQkaTZjIsdTDjI1oBk2goF37EsLxoJn+vkrDTAHoMr0tuv+hB7AW2n3u
	 RmG/gZhJSWW8nVctgXQPTNmaL6WZnRAV26sQbfQwVDdSUhMETuQKT9OkmOmuU6dBVo
	 EftPUfrfrnki7/XObNGDrqY0xl5YxJa1D5mi2/vTmqNYm7SOdExXd+98v0gIaF43Rv
	 skgoCna4DSV8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D665FCD0AE
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177381149362.2957.13898929069590834469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2389df6287b25210765336d35d735865112f8162d131028a1092231e7ce14d9
Date: Wed, 18 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773811493
