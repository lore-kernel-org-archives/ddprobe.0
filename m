Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E60D4B049B
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786929034; cv=none; b=ZACLM336wVm0L9XjWPtIHY1bofxTxav+hl5V4OCgPtZyc2emBdPgfbjGJup2MNvFE+nLY15uuLrBxjrIgJ9UcyCUguAcXK0qQb0WXGQwJZP9CjxQc/+G7BIWt1Bw2JKv2iNdq4sw2f5qp6ycJaXH66p1xPjVYP+OdeEmHMd28Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786929034; c=relaxed/simple;
	bh=ef/65VBw5W+BADIC+DA6tDQPpTBP3GY/ik9n82O3GdY=;
	h=To:Subject:From:Message-Id:Date; b=eF27RbEfxeN+MzWTPriAwA8xjVkAfjO6ImjgBqLft3S7sQJyv4npw2/EA3OjequdxlcgcT/y/Jbf4eDkYiXv+JB/qZiUXFL7nEsTxzKEirGaBNgbtKUGekvKX8IJzdUf8ETIptVjGhvFFTvcPRV/5YaTYilQywTw/fa395+x+k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIxWj/ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIxWj/ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD74C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786929033;
	bh=ef/65VBw5W+BADIC+DA6tDQPpTBP3GY/ik9n82O3GdY=;
	h=To:Subject:From:Date:From;
	b=JIxWj/ro/u47ndlKeeG01eznyT3Qt3XS2TJ1SH8KBhp7AmOH7HPHitt6JxjYgTJVN
	 00t4xNHhS8Nnpyxe8cH1n2Q2SZ+Zgbwam/eMgVxxguVnNhiZtDVkHdQdsaUeKMDsaH
	 HHhDIL+G1BRiD9M4sZLXL6QVnmAWQeaw9jhOUWhIgAkrWParNofgYx1+jn57dg65NP
	 K5iQGjJEeF6jl47OH8yI29NbtbAIef76I9ZjkpxcYwTKPKg4flu1hZjNuH7Wno3Uaw
	 JDdbvJpfishBCBAtX93duL84ZwQ6ct0v2kAEzLIsGRWN8Ye+RKouTNR1UU+i1XLCWe
	 f5s9Ok7COLgAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA77C5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178692903368.17243.10051485862234920574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48904f03f6c55195776cf1a60e38ae261aa07952fc5ed5b09de0b69c582c8a68
Date: Mon, 17 Aug 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786929033
