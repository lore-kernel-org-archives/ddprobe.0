Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335BF4964F
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788480634; cv=none; b=PkxABkKJv7C60Ssw7jSLA8qN0j04NbcL99QMjA9GuM5BZ5rQTMdLfSVG0rccajoIPqv0U6vU6vFjvLSJv12dhlfiMD6mhagqCPEkomAmaSsmFQodXWPmkWir2pMkXYPL0H3QpML66fL2E6pqYX6/lNzetTKAwJDWh4SFeRcn3Zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788480634; c=relaxed/simple;
	bh=+bnz8rAdB8sl6wNZ0a88XBZRW7Jxj0COKn6RsbJDIA8=;
	h=To:Subject:From:Message-Id:Date; b=JL43Zr1QemLdoNcK7C6EZEu4GMEW6mp4/LgZXohuiNsqAUiPpnCI2WczuKFk9ow4UaHWgVfxN9SUJh4oLQVn5hesWtZgpI4XCio9z5NjHuUBX6fZv0Ut8con2o0dMxxBQYNT6dtyOSeUgRVDrhPA3/ad7djCeL3Kjsz2E6JwW7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tIA0On0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tIA0On0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0544C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788480633;
	bh=+bnz8rAdB8sl6wNZ0a88XBZRW7Jxj0COKn6RsbJDIA8=;
	h=To:Subject:From:Date:From;
	b=tIA0On0FgJB3JdO3b3wa26MGLB4rUYkfXy7f9bMGj0lduMljs+Fdg7FI85c+e4Kcl
	 6F8NaPNoCbKoP7f5bK3sYbsXFWPkin28pbF5NtsIDWZnu8nvjscWXosh0OLU/WfbCi
	 K3IK3nFYfHO3qbY6Mj9QARVH5Tc1n34l8p7ZHWIUmTmgkFZOKw9wIa0dfZ+QlWAJp2
	 x7E/i7gVU6IvniIw3ZA0iJHJo5j2O9s5/eWyFlu5akhuVGOVQqyCDuK6lixp6lEqL4
	 JpzFCgJC3ZPQEaMKx5Qqr8XSG/EmKcRZ5ZbN2kP+IgANtYPq2TS2yCdz3Rp5Spiips
	 HSZwCZJnQ4/gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9CDC61DD3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178848063370.21618.14016331434580949750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36f5eb274cb7f38682231fd4742da0efef72dbd9a6d4db399dc510df331c298e
Date: Fri, 04 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788480633
