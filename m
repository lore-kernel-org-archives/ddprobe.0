Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39593182
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732752354; cv=none; b=E84g55VsZPUnZ6eNXo3jwa96MASV8YPeCl67JqNRQGkZjbusN63ZRCpaxQ/y3EapohgifPaiqY8SejwmtqHQ7qUbasHQGF/SmVetXeO1D271lQvb+xeg2y1B+XhXHfr/6F2r56nCeChViVEQKAfqUoUzNQlu+YZj3isPN1sf5mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732752354; c=relaxed/simple;
	bh=kRZYpKGWIcarixdS59VS4btdYwUKtQjWfhMniKtvEOE=;
	h=To:Subject:From:Message-Id:Date; b=gc7kbBtMMImidd946AyE1gROud0z7dYDeDeo5UFfS0SJrhGFGIzWoqDkB9e7XCrDbjQcgUCWYwrUJPiYYDmzALWu+dyzX6xB/Qg443tJB2c5Nbz6clzzLefz8/Y+G/Bo/FgK5cQ/OMw683fNWV7ArIuVN+U62e+iYoUZ3X31/yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=quL6e+W9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="quL6e+W9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C0DC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732752353;
	bh=kRZYpKGWIcarixdS59VS4btdYwUKtQjWfhMniKtvEOE=;
	h=To:Subject:From:Date:From;
	b=quL6e+W9lH+I9l8ZwTMEMtBrEuby3brCcFU3cSRY3N4E18y13zgHbXAom263GICEI
	 19OrS0L/DGkjuUXz+fCykWaEWPDU5pHc9VvpG9/84Rd6if+8G/2GJdolOIXEMoMxnI
	 SNr35+rUEYQsBGpK7dXFyLelYXowpWSPpJ1Y6bcmFKf7LZADd807fXwN+GoGJKgv4V
	 mJgJCuyanMvEShFnytuC9JbeoYQSnRlR+3VR7neIA5v7dnuUGN6o+A00q2FEp4Xy7h
	 +4cqkVkHoeVg82DfLh1Q2FnrDHaXB7mLX8vldeBFuPMrsvFmCOP+SyIRqCBchX/AoI
	 2FOc4NfWzHYLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E479D6D247
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173275235360.1259.17342644332862906411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 884b3513430c4d0cb232e3d9a701d162ffa77fa56e493f9b7cc27a3d010c3ad1
Date: Thu, 28 Nov 2024 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732752353
