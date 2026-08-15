Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE5A190462
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786757434; cv=none; b=Q3QrryChl2E1Nr6wwzaCJXcRziWpK0Xalj5eADmM0LX5kVgiC79tr6Y9F+dHv6fMVeYRQhTF17XitJKy5eH0SpN5T4Nsxmys5w1z3bB95kzWctG+0aARJxEQKSFSV8msB/eOnEIsu9LL6LTaNGTFKww/9S7+zhhD75VvviTd9u0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786757434; c=relaxed/simple;
	bh=SqsgQUG7ZdJORG1W9ZWyEgBjDrk0w6jDdvATn7ZtmqI=;
	h=To:Subject:From:Message-Id:Date; b=VJxJwQmBHq9Gr4YH7QrsBx4GMwFrJrpLM7Cik030FqDgXJYYSsANF1icvyX3FpojRX/pmxySE136JvnldM1J9Y1NoiGvBjB6yuJAli/mOacpFVM7g6fc2YmHOCjio25IfFGnZbIpuNDmHo/rFuvtR5MdTjPfuvSO4DemnGGOMfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sC5lEnuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sC5lEnuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1C9CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786757433;
	bh=SqsgQUG7ZdJORG1W9ZWyEgBjDrk0w6jDdvATn7ZtmqI=;
	h=To:Subject:From:Date:From;
	b=sC5lEnuEr3upWi/4fYzXhG0Gtyux3HpGVWOrNLbFJPW1qlkDsSwsBovDJjzy703P/
	 tfCTaL6lf+uPDCaRZolzgXQgvNmuxEpbYU5IU23pky1T7vrxIBNl10Ym9FtqL5nNx3
	 abZvO4KiytrQYIlnSFH5a03Y+DLkZgFfOasUZRjjlUmi4Q14xcL4RVdIWpy5cXe6ti
	 AuOp9nYfIz6OWPa/4HEBuROzlFQHCXwV718vVHZ8D6FtKXronOBUZOextl+schbplt
	 jaMyLSbuvNlX+O7kcFFslYyxHQiGxlllJLjOfAHPBYuq/hAth6bFFwnd7cI3ifQUmN
	 xtti+N26p6K4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFD9C5CFC1
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178675743374.15800.13215585829066295681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef1c2b040f557160ae351db0fd8ad07e9cc2069ddbbe89d70c90170981dd87b5
Date: Sat, 15 Aug 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786757433
