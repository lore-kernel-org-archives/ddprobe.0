Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BB533936B
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786576834; cv=none; b=X0JrSxpOczJkbfpEiymYWG4+bpS1Tr+bA7aQAZP/+oF5xp71cIniwNRdvGw5raf1DzMjFMQEzimXJbElsbRhCHv+adtxqkmFC9CZVCTZd28tq6nK7KdopLPiDoYCV4pWMToDIhH5Wirvs/cl5ZeVDi104zfdX1iTCSLyftu8J+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786576834; c=relaxed/simple;
	bh=tFsHH49dGW5pZY/zBecInl9fibavv6th13ExRIEG3bU=;
	h=To:Subject:From:Message-Id:Date; b=J53oghXdmlI9c/ts7OE1+N6Tu1aS4qneInTfmWNmqhm/bS1QDSrXQEzlnnbTAX33Tf/oVyKeOAYDNUu2JJcnBYi3qK0Z5CbUK9KSaquu9epfZQ2m6SzJBNdJCZ/DwQtD6TJfFAVZaV3yLhOH3Di6koxWTHzL3ht5GigcpgP16IQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aKYiGM96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aKYiGM96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4685C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786576833;
	bh=tFsHH49dGW5pZY/zBecInl9fibavv6th13ExRIEG3bU=;
	h=To:Subject:From:Date:From;
	b=aKYiGM96ZKAhREzrM5tW3BKg1i2vX103KJGBIwkC4pReM7q2QoRcrpkjhVEWcBNH0
	 4YhaxQcnffbpWMAF2hEsr1LCTKiXt9PfeCvS7Las6/RhIcWqmkjvmn9IY++4sGTKsz
	 yFJ2OZjZw9DUvp1Lm9UePqX9mJaIC90aOCYua1vELBt+M4pWavb2U8EMyuqLSkPh4/
	 ko+vI5sLXo3T/mv+edLSG/7533xZgjmUbyazH2Q/PNj8Es13utzw58yolWSR6Wqvpf
	 XBZUusCVTCg+XoCw/K1TpetuEhCgbctHu8h2KXTosfhmFVD7TXTD9PW2xPSL0Ekwsn
	 7IJGXDY2se0qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF629C5AD5A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178657683368.8610.3117961920644411919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ee4f3734dab40f6c0a578642ce74b28f27d1765f8e557512cf31300755a95e7
Date: Wed, 12 Aug 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786576833
