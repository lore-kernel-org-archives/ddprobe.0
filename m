Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC921C3C08
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760456994; cv=none; b=pYZlsKluoJbZu5Kbkqv01UnKiZNnzrxeysYEaQGfoEoqAq3xLxPSjZ5Ec8CZ2QbpQVQGV/UwvxVsuFH2q15/yoNQl+MQceNepuG8fW2GtKm/yjb++TjGElJmLj6Ths4KxRBJaccVR2yDfcEdmD6zHoGZ8LXLLPQ53g+YCAWmMIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760456994; c=relaxed/simple;
	bh=CwrpV9yEhGuF2fZdOX8ccGbWRkpklo7kDLZeemv8AJY=;
	h=To:Subject:From:Message-Id:Date; b=BEon4275wGzyltb4CMKii3Tq7DgMBneB8U+lzh53AWqSXRiOfyBDTPUurcp7NR3xfUFhqJ/fZsY05phVUUqbWq/mmPvoiPPSv0pnz2LYHXXjRLUuaRJmiNsPH3MWVun06rzE6xKE99jzklAEqyEOF73S0WE6mwoEXWWW1Kquo4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jltotb6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jltotb6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E403C113D0
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760456993;
	bh=CwrpV9yEhGuF2fZdOX8ccGbWRkpklo7kDLZeemv8AJY=;
	h=To:Subject:From:Date:From;
	b=jltotb6BzUh4isZK1uy1NJdyA74bbTLJqcJAesfEJuZ8aOx+whs5YN1C8F2uIhmCE
	 LIT/91i4InHTmVXMsG3WZD55vfKS37WU/NAvaV2bOrbBeRM3hr7eo8D2ix70HXigt+
	 JDKKl+H0t9p/Y4xfl3XCjkfyvUHDEx/LwggpBjZdnZvniiMXVRMswb6YO7jw7cyocx
	 j9iiLDR1LHtrIicYcdCn8Oob3jYs8A8otf0NZ2JC3Aa0lALlsljdFYhByjPGQ2YSlK
	 Stx1A6/bE1LqydR7yt9N/FgZFwRQe2uch+ico+FrmOj+swEscjEooOaKup0W6pOMuV
	 Z+owqHHo3BNSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B7CCD192
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176045699357.7508.7561985391428012909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de00533fd21fd6227b342c798ce79ba6bdd742d302446883cdfd8bbec903980f
Date: Tue, 14 Oct 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760456993
