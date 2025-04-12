Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1A7197A7A
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744493394; cv=none; b=PyMr29Zf2kZX4rT0gOZ0JCDXZ3v+ZuL04ueq9V1EmC75o5w1q2kKfajSxaDdVanqqSRRHIc+Y26T3yePejiyNIHJ5de9blCqLDdOh5wRfdGerla/QoYh8Ub4e9The2Os/Wvtm1yBf6V9UIw6bRlbTENcqy6CgnhwcARm7RyLhAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744493394; c=relaxed/simple;
	bh=xyMJt1vKONKduUZLbPgKuTHCzM16BPVZkUn2gneSLek=;
	h=To:Subject:From:Message-Id:Date; b=sPfys83GhiHgLrDs5pTl8RodI4xzM++7qSjI6nPYUDu0UUXfXYscPXHxGL8xK9mNu1rnmUlpalSbL/S3vQ/CoRbzkIxmm//uUfnuBr3GriRiQOiFXd7hOb15OT2sqIAUx0+MTs7Sxk+H+QieZAZZfNeh2VdMCXBlzGocfQ+o1HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqJSgeR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqJSgeR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36A9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744493393;
	bh=xyMJt1vKONKduUZLbPgKuTHCzM16BPVZkUn2gneSLek=;
	h=To:Subject:From:Date:From;
	b=iqJSgeR+mXPCw+LiT+DFOKbMoRmuLavmjRY/JXWaNwh9fRkJFcdSRCT1G5jx1SYFA
	 PFnR1CpCuQg5vPDcVquvLn7lpxmrCKdEd0LEIt7TXKgJ8O0NamomQw9i2PlJfqopwR
	 UOqWZi33L2pGw0lGknn6iaGtAuW5Ib5VEMAsqdaQh86glZLPERVrDbvSEBbadnm8Fc
	 85FubGURPqNXPKrVTkQGrvMri/wHgWYQGmNveRnDOTelbeLxvUYBEAwQARJNyrBTBI
	 dZQm03Cx+/XhQH4omGvn/uAngwFCABJzEEBEmqcDVw2cCY1sljJbgoZDHvWQlyQyJ5
	 lGG5I51E0Td4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E33CC369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174449339359.20141.6963358902916109707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdf85a28d0e79f30896b4be506e4322c343e1c3e95d1cdcfd442c971a36e5270
Date: Sat, 12 Apr 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744493393
