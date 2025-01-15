Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47C3622F843
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736919954; cv=none; b=cZ/cj1b+hV3Gj/wB14Lz9qj2bDoe4fMBtjmNt8tEjI+5fR2/EP1RLeiBC1+bR3j8hgNQXkl4wHyaFYI+F1Pb2ShDO9SSYBdprJKkEWG0+Otxkq4InlYUHbvNUBG5zypiV+8zQW4z3gfyEs6POhto2UC4KWnB6vOfMU7hJ0hkbco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736919954; c=relaxed/simple;
	bh=CZ5HL9WCaQgL0ky6pJRYhtd5BiX67dmcRiZ6u2itmSE=;
	h=To:Subject:From:Message-Id:Date; b=fb1/ATmWXpLcu6veV+3IBVQY9F3km2qlqX5l+8LXz0usQ7UckQg5kSomw0+Jt3k6R6XOQD+i/nXlp5yEa6v1fqyfdiLRHPfCsxMAep6s0qNMppyi+6PbItquXOBpDSAeQ/Z+NE7U8/XC6tPsgNYZZTyezrZJHsX6RBbDFoM/w6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jz3iYWg+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jz3iYWg+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF79FC4CEE0
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736919953;
	bh=CZ5HL9WCaQgL0ky6pJRYhtd5BiX67dmcRiZ6u2itmSE=;
	h=To:Subject:From:Date:From;
	b=Jz3iYWg+aWIX/aSyvM9htdksswdgOw14/h9KMlsmDs/Yhy9nuKN6yULNrx7vKuQqk
	 oLWa2FwHQKArWuXj6OsaiZ2Z3xhLwaQvPFJ4DWK9byPmpTwesvTDhwRd6YXGqXsGBa
	 rjkrbKn0Xk5Z9uM+NHiKAiXSjcOIHg7llAPW7tWeLHMppNrox9kXqFp8xw7jgdh2yQ
	 sHnO0etayoH7gdy543MbuYXXNgr37cDBnpDv+sM8vCTBHKZN+6/mqLrY+Bvdklkn1U
	 750xwTnRf9Bq9OzRxIybvD6JzfbJO3EyS9zAWaFuVCtGL71gwHP8nveWXyryb4EhXB
	 mkkFSA59sjuVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B445C02183
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173691995362.567.12115936365786591762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf23568291af1bfefd5f174eb0b8c312414066dbfa0d3950cb39c20dc6cd1d1f
Date: Wed, 15 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736919953
