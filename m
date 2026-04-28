Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24320B67E
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777352854; cv=none; b=E68rkuIxpmqEHMPhz+UAfiR7QXytzX3tl9p7Ctwgq2fmJ5L5cO39FdUSHij8/zHHoXn0ibvM19y529H8U7gj9wQhR/EhlNhRKVLSe0Cj6zCbOlSIQHU7OpOBZa8pulV5XWtDAkB0yb+loAHGrE4Puxc5IzPPBbIe8mxaVldbDys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777352854; c=relaxed/simple;
	bh=bRqDkpogyes03nMXnFj39NyAu/a/fW2Nc/HJTtrfOrc=;
	h=To:Subject:From:Message-Id:Date; b=PClv0/lix0fCMUYElfN9fUXbHQUctpERFFkrrranU3+2Rb8QklAMj/Sj8UCA91FGO9ZrycD3rd32qbbu1uHfi5eF4o1cVQUnSFIRxpqN7NxaCLZ238fv3Jq/zpV5+d3n3tfWr6/fL1Xsz52fa2rMPCKK7phosO3YiogBvbLSMMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l48K/lta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l48K/lta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8BFBC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777352853;
	bh=bRqDkpogyes03nMXnFj39NyAu/a/fW2Nc/HJTtrfOrc=;
	h=To:Subject:From:Date:From;
	b=l48K/ltah9TOYAwRuUQ6M4+eBFMhtEDN+QXvgbKZN9Mvmb0sI0Ky363oPoXeBJa4b
	 8KvQPEjtf+siRp4bnvzwSLkD+8ZGG/QooO3RHm/URL1rUg4O/7QR3awI7yw9F/KTbs
	 Is4gp/AdBS7PF4GAw/nCQatv4mxJz3algeXiFmx8dxdJ0y0riYY2am/p9Su53QICX5
	 JP23N961Wj8zW0fleU/VEEPSUDm5COhWc6zPVXSzWZgu7zJP2cLswXaaBFL8lSwK89
	 o7YXRPfr0iyZQsRZKQrNuOPRy7O0YYobD27ZNlI0LilCLsF24jJ7EDGDoAadWvDiZZ
	 WYjxu6uHuNwqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACF6FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177735285369.18167.18188833854405590285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab23064e35caa78ca09cd04771ae714d54c0612329f6a41af3f212f1ea19a064
Date: Tue, 28 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777352853
