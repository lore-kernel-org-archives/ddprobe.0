Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F33A3DE425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781351794; cv=none; b=sxB1BuGmXtMNY92uALCli2yaot1QMZtzsftPhcYCViYsJY2dF/gAHXnTZSREbtpE7rf6uYIA2XNuLq2t51b1pnA4HKDzkW6ynk7kI/LCGRgd3BLcMKgtudXkkF6UZOL1+F6qWh422vA0UUFWcmJyEdLgf/kvM9mmwds/9aSxb5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781351794; c=relaxed/simple;
	bh=3dHtKRHC9IdFDT9fWXIrOYTy9+jjZXeOOVdzg+IUp90=;
	h=To:Subject:From:Message-Id:Date; b=Bamp/MxLCq/CDU18ldY3I3hx6zqCbIFlOnZgZNUHgXwjYSCBe0osy7FaTgVB5dI0tcUz8gSjvlXqGnCTCPm1zquEu9X/w9ty6veVJ08YJc7YzUSPKRTL0HlOn13EdR/6DENCx7dOhjyYo2VUzhjO4h5Y66/wjw6Lje/oh4N47uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lm/2uJRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lm/2uJRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB34C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781351793;
	bh=3dHtKRHC9IdFDT9fWXIrOYTy9+jjZXeOOVdzg+IUp90=;
	h=To:Subject:From:Date:From;
	b=Lm/2uJREFnJPhzTSkNor1x7Gk1pw6Ja2Zsp6KQmzBRIQUubnsZq5nRhPxhpMhRpPe
	 FAAOs8J2ihlf65dOnsrBxQeAhOVh+PJVDzYRk/JKxeVPNcPN2ENzifW0IsoqJ1ROv7
	 QSAISu8M1XTN7YeeEK5JIw/+VgNRqCpFPm2GbPhkxAqTpbLcqGWzatLm7Z/2Yz1aRN
	 6zKMUdPKuhrwbAIf1HaOCl+2XTAtgWDvW2RqIklak+rEsbNMkPuA6vn+NSTy2nqFZ+
	 EfA/NK4CfhPYwBtpb7VRMY5ub+nUpnzsr7llt08flUJRIvIpWTdR/JjGJzUAkqQeV9
	 m+XoVh8Nfl4sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8DDCD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135179369.24836.15087160025877792820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376fc56c7d03b75ac3c4697c58ff0123cdc398f4d4c8fb373fe0cd9d01132e0c
Date: Sat, 13 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781351793
