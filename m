Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC49111AD
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 19:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713729023; cv=none; b=q4bZH7qEWW8G9O9utJc0h2oe/AY3jh0g5KoaahcZYeqU2fcbSsi32GS0rxTNgUby4YCkGrBqRl+W0/a0MCCAs/dSyGp3bePLRrdCDximjuhLEZa8ZVlK2DN5nt4AL0nSuJ01lQCPprKIiUNVV5IBs3TYvk733SCYOU8uDtElRjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713729023; c=relaxed/simple;
	bh=lJY3HLW3X8YnHacYCkuaUMcXnfSTiRrGASkmEFhbY4Y=;
	h=To:Subject:From:Message-Id:Date; b=C7B0mj45AIcWgciAw/pOvo1yBrv9yx4EseSMXZoJv7SBSf0E5VmYWjsXyY4K2hP5ErxZOFcleiDk84jshoqvbqW9leVx83P7u5hMUZAX4/uSV9UOfOMNDizn0xj/BX/S2qFrk2wMt8WmSsLtDANWsIJEJM1qhLTNBNgDVv6TSm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ji+jUOnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ji+jUOnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4481C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 19:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713729022;
	bh=lJY3HLW3X8YnHacYCkuaUMcXnfSTiRrGASkmEFhbY4Y=;
	h=To:Subject:From:Date:From;
	b=Ji+jUOnCGjZLcHs5NLvrf66iTCOHRxFqUmqjaLL703KiuxzplG86/OSK+P8Roqs0+
	 8jOjna8byxKFygTpm9BWKxh5IXrIp+pk6NR0YlTMIaeNZo07mnRRUj3bxPiHYsKIml
	 ybnB4a/xRq9Q32w5QB1XY8cpMjMlmYGctyhKtmos8MwPzjB2SeBkQsUL7uQ2Ugkmq+
	 /y2bCe68I28OWCkBZoiGS3io8NrOvNkLC0twvVIL2/9bZky/GOOxZYWK/ND7/NCXsM
	 ic7rocC9LdffzYQPnpMlnZSSQRRHSALxUvsLOmEKoyxgQSBHOmf/jhv9w29jI6Jg02
	 irUQl3f90QdLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31B2C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 19:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171372902278.6889.4798002831369629359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0aec40536b3d035a05e95f8eb6e50b5a49b3b27fe28230cefb76d9fca72a3c7a
Date: Sun, 21 Apr 2024 19:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713729022
