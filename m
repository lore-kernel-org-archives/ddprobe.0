Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7F9800
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766275434; cv=none; b=m1RdJWzjlU7LZQL8c99BnEhC7L6ZgZ5iDGGZbafQimT1HytYS+ZGUKMJ/abJxs+xN1Sq3a54TsRYvZV0ux3V9wZnpbzy1QNSDnaLOo+UmmjB097WTbM1ujHhvcKVjg0cUfo3FqdLyVReLSl4nD8QfRdzQHeJ42EMO871Z50Vs5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766275434; c=relaxed/simple;
	bh=y59oUG2swuji8Ka3RKePvtHdztaXky97YboTebPtyE8=;
	h=To:Subject:From:Message-Id:Date; b=kq5RpkiG9l+F+NLJIPJ7LR47O8MDgHst5AXIyj/9mFJnjjmFnVD00fagcJD6VITmqzjMMphA8hwHlfFSbYNVwdn+mdsZLL8IFGXa6aAauO1eA3BmXn3eLCpvTXPQSdwsXqfGl+nbwVi2m5VbfQ1/RegaoOuKl2VYesCpVZnpNu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3rtqV0W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3rtqV0W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A418FC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766275433;
	bh=y59oUG2swuji8Ka3RKePvtHdztaXky97YboTebPtyE8=;
	h=To:Subject:From:Date:From;
	b=M3rtqV0WoucX2CJg2TlFc3v0/7d+c2whgNG5gKdRZl2J0aNJYr2wPcnJCvIjGaFvb
	 u6zAZKzr6G/Ecp9w3HXQRa1k6GZ21v0IRrN79XG+4YdIAml2RL4Z6fXVRg351hPCF4
	 CVss6RtiWRNqFSZuSVpQ9wwrlkH9jYWkMIimf+7XCNZGefpm0W5i1PzkQc0x/+oTLb
	 PQ8L2pkkTyDclycDJcXzeZNlLq2rDizERnNgRVs42MaoLl2dlCSXCZCzcJUpnRVmkn
	 aKRnYwdKEXKlWFppwgp3/An+IeurzhdpsVpciHN6nRbBj4V5vMGAjdsJMDgWhbMmDo
	 +CWhXukG2Pc3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E6DE668BB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176627543358.10230.17213087448534178108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6e247af963fc60acca9da771c3e16b382af7e7057992bcb42c9b91a46d66d3
Date: Sun, 21 Dec 2025 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766275433
