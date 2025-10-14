Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C04530CDAE
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760417994; cv=none; b=Tw33lNKiLRrdFsG6ZHljKf7JAv3Q9TKuHx4I/ApYkBi9O9ChJm8ZCj18k5Ug2SsLq5tR1OGCT4zRQW+8M+V/wjvc6jL7dM7Us3GcIc8YYvqfBRuQsrY1TScmqRFxcMBNQ6B7WNk4j/pk0ybvnN0f4h0XNpz6+yMLvjQ+JcUjm2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760417994; c=relaxed/simple;
	bh=EhYaf2kFG2fkhbaDxzH/6I18mAQm995+EVntzegd1C0=;
	h=To:Subject:From:Message-Id:Date; b=nyzShwNpd86lpiSE87Y3yDbE9OuMAm/WT3EErhpQHd5t8ZRb8QW6/aY9Hw54Xf1IOGuOir0qBGXYNCcWv7Xccf913NXmy1XZG9Rw4/BMQSam/gIeepx5lmtZFNK7Bc1X+Sj0gDd15LqY/PUlBt8/smeB2QNGYjFh2TDVZBYfSsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODMJXBzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODMJXBzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1FA8C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760417993;
	bh=EhYaf2kFG2fkhbaDxzH/6I18mAQm995+EVntzegd1C0=;
	h=To:Subject:From:Date:From;
	b=ODMJXBzWGLthQG1s5cUPfJt4kn06dBN1mmuDkYrgBmktWoHWZy8AostbcwwmUEG3i
	 ANdu25P1DF8lCpdFWWqgAIbaDDTpisnAs36UlZSEwr9vZc5fk2WTTYvqmUwrTHz8iI
	 5+vnp+Zv2nezz35PjIDOqpVNV2AiNX5KiJrh2c4s6uMiw4x73s6QAwBg68zlG0/TWG
	 fRB7Dqu9GStJprQ1Iw0sOrpvzgIKTGhBo/aAn1qCstcxEm0tw67UzWWHpSnHprSP9u
	 b389seahD0WmrxDq/mwGgobTxIOyT3l9Boo9qsP4j9j7sgxEIdEYkxahrXiB4+c+0w
	 uhiCrnWAxW0uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE9BCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041799357.19313.1128392908084825655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d6dedbd9a486b0f539ae6745e09dffd483336a10e2100a29cd13b15164a0a2
Date: Tue, 14 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760417993
