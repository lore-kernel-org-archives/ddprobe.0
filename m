Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CE3826A1CF
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778790634; cv=none; b=qEwYDayHsUMyBU2d1fWBC+aL3bpRso3y8hmieuhNrQ8s7gnMuU5gDf5YiuETfkbWcL70MEScreTdOVE8b6ZAqM2kqd1yd/N5bJEzj1eavuRQ217sG3BzzeML+ondfXfzf2yKFlcd6n5M++/WTFJwOnGXRJ22987KDeu/VnW3Dek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778790634; c=relaxed/simple;
	bh=YmbSlUoRycLq2HcS90li0h/FIUDIzvjj3JIN/e9W4nQ=;
	h=To:Subject:From:Message-Id:Date; b=qo9cVu7CU19cjnjvFbMbsFGVkwNDInrFCRr4y5PEWufqzmURHtFd08x1ezd2zt0L2AGtjbNH0DFzWebY+shwA/KqcG5RS1t0JjgOTgToP1rjZR12kJ3SALIXv6Aeo2DU4ty8Xh5UpeCx/oB/Q43j6zE4dqhzBHWgWQGqx2OW1P0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QUjEMRM1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QUjEMRM1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4C2FC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778790633;
	bh=YmbSlUoRycLq2HcS90li0h/FIUDIzvjj3JIN/e9W4nQ=;
	h=To:Subject:From:Date:From;
	b=QUjEMRM1ZvEOUTKwp+VZEO455t51+MpKZPwsBCGIg8lTIAIrW8CLWdQYa8xh6Sycz
	 e1c0VZP5YNQMcg/cv5e2eKUplcn6CZSfUWUZxC1PTOMz/y+/HMtMWB8eusE/0AfUUT
	 o7P8Jion4EmyXQZCGMWeSHs7A/fCTd0UDzlOjln0Cc6J8HxZp4rWHyw6bDbO9dkTYk
	 ymuGFPrKUAizzgW/JsbLkq9BZFO9u7zhl8vXmhN+xzW+bwL/6R/ge1EdKvu7XOUJpA
	 nxuhsLHVGRu3CS+NjkPGOHc7tkNkhXo/ya7QtiMJHLUkz5yg3OpSotK7F9x9yRyYjY
	 85bpXPLZMoGAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1716CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 20:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879063369.4631.6228370483529603536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73ce05e6488f1899172c8ffb1b858c93eb39a712c9cccb51697f3a4ca2c4289
Date: Thu, 14 May 2026 20:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778790633
