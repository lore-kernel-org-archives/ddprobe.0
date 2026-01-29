Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D38B37473D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769728434; cv=none; b=TCpQ2uZ9uZbPpoo0i6dzH1AZioVvDcxpcVFBhnw2hiXqZ9uzPiX9MntR8Np8IDobVDS0GIAsUp+UP1ObHOKY2J0AysNpS+tW8VbsivJYVFjbkvJIej20Bvk4pgjXVJabXCWXBT/zR2RsqoDHCOqvDm02ekwCAs+Em977mMl8rEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769728434; c=relaxed/simple;
	bh=xSxNjQg3wHIzZD/QtfT9nZ2fTc6xwrWqQh3GzzIy7xg=;
	h=To:Subject:From:Message-Id:Date; b=QF16zcXX4+Tvo+nKzpOndt/uGXjHiJF8xLPtLW19yFzRDT3zAPR80iF0n1RPAjIX67MQEFIb7nbsdZ0Lnd+PVjLh0XReSZe02W7bEq5Ka0AIad+bMt7qntzsBAtOkBNuPzRsMwXmPFrgvkh/ybvnAwP+sgDPqr/j1gBuP8MIr6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mVj85PuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mVj85PuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94A2C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769728433;
	bh=xSxNjQg3wHIzZD/QtfT9nZ2fTc6xwrWqQh3GzzIy7xg=;
	h=To:Subject:From:Date:From;
	b=mVj85PuW4ayq0TVTBFk2E6Mgn3NJxrbIjr4vW5qIObOnpMtrloa9BpJV37DXNxm+t
	 gAYg+YPWfjiG9SqDqhuEGb+AWtRrqw7xh7oXLzpFynxZg0RIbLceuAlrC8NGRT6H4/
	 NU64k0m/vtPAlmpT45qgBPeJ034vDcwDUm8PCRsyVdUxrkEh3Lv+BX1ph40atUOrfo
	 uOgcP0+PuI2sK1IP4WWFTD5hiFzrtyE0OtYnAA03k+sVNiKEP59lhk4AqjHi+lkvzi
	 20Nvy9l/BBjCuduQ4nmJ+LxnauHOWEFzqRykh1rc4R9u9JjDdvnjN1w3ZRqkwextZ+
	 JGgdQIkXfyXxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988B6D73EA7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972843358.22857.3491356077819504771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b794d4ab4ecc3625a73652f0f857eb7854cc915709c49b9960616ab7125346fe
Date: Thu, 29 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769728433
