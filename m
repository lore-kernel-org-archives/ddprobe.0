Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308632C0293
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762593594; cv=none; b=N+sxAyZV8rBJLgCSCJ63gdzbWIG2gHFy+Y9vFGQ51voXiLqnHbuuUPX5/1BMctgH9+2LqC1xw9lIkesXuPTrnpT9xWRa/DqyV0ypoI8svdld9rBoFizlY7zKiUz2UdHyQj7xQw7K/NrOPr2ETQ3FpboIcJyySes7rAD8DNrXLz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762593594; c=relaxed/simple;
	bh=/c594FkhnZ6SiLmL39KmaiKAKmFUJcNBEc7MPOdunOA=;
	h=To:Subject:From:Message-Id:Date; b=mNUVEnxxhJJv9y6gAJJLrk1th9eKVsazi/xAt84VtkKEDqeq5uyY4kMzef1sqnR54cRAWzb6uzuYLF8TP/DFCV44K4cbOE52ZrxLwAYcVMjfCwKiqV0G5dGYMbDaf98SBFj+1QPrp1c6b/+yuySY9SL1VX22pvV8ZqEHQcSKbfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ij7sOcPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ij7sOcPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4306C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762593593;
	bh=/c594FkhnZ6SiLmL39KmaiKAKmFUJcNBEc7MPOdunOA=;
	h=To:Subject:From:Date:From;
	b=Ij7sOcPRpZAw+6QMui3qt8sr+NOuOObBl2p6ZcEH/qzJ7tBTtc9TAVBRI/QqSrGV7
	 Mi2QwgxaAYb6nxRPv3OhMNUG+w5PBe2vJlWroTmPJHwQGZkrOHEE4eWQhgm+P2eeRW
	 oUf4L3f2q2tnYpc1fmTuvZLWKK5ZEssncanxqEzXpOd2MiM2gw2STthK/ZSEiW4GXg
	 qOcccn94EPLI1ZqwwOpxOq7AIgY5ETHaatKiYYNb4v/457p21TBnaZjK9pZ3se+xUk
	 aIdlrswe1vk4i0gMvb8vKeFdBz4ZHNSFpfbm6zpeZzs75IRhbdP7wOXqtugWN0gWzj
	 gE7ld1+eeJXTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95158CCFA1E
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259359359.24926.3065394473090455401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4064313cb6e6603ea650c4baba8a4ec133c89d3517d52f0eb80cafbd7dc7bd8a
Date: Sat, 08 Nov 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762593593
