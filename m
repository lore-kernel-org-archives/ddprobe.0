Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164D52C028E
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758271794; cv=none; b=aBx2aqDOrWL4fMH96EmDklFr3sw40Mp6AjEj7TxnAvAtNnwOzi7JxabCZWWeS1jWvzUVuFUu0g/w3XU8l7N/JY6S4HcqdQz0V+ytKCmcFq5ZPaUI1LP7CEbPOwRiM+ZgkSpEY9EIXolu9BFaNtQxqps7+K7Z6szwBAr6IqhDPZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758271794; c=relaxed/simple;
	bh=fMIVBxHEd4FWbXZr65uKQ9X2xOuDUlvddHpc/1HWyHY=;
	h=To:Subject:From:Message-Id:Date; b=OUgRZRWmzj8Kz+2siPtrfPu1P0xB8PIbxtLwAuIdWCRvvBMZJAfkr4hym0LWZ+B0xzQWAaElN+JX4J3V4UeNEf9kmX3lSvRrwlUGr/KivfoHEjsMrX772fLC5VY97fqNrBzmiTRZzgPYWo7jD0hIOtxntH6Dry1wTrVP7Exu8I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lATqP+FC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lATqP+FC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BA6C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758271793;
	bh=fMIVBxHEd4FWbXZr65uKQ9X2xOuDUlvddHpc/1HWyHY=;
	h=To:Subject:From:Date:From;
	b=lATqP+FCFT5emYGkrAQ8ET1J/VjQCLLgpyZzMnEynanSchv0RIPzYjG7mmoVQfqn4
	 +uGWHyti/bX3tz7dDyypebxpIJZa0X9tcJFUHECz5LdKEoawo0p2MFzp5zW+lgq+Mc
	 fuAlLF4wlBZss9F69l2F2ushDcY3bwS/VEwRbREL8JZSE55MxF6KnAwTGhqKH11n/0
	 fU78y1MMJ755pnZtVUXeaYq0Nz1SIBkMBWOib3Ns/PosbRFQf5jLKOuAP9eqHM42k6
	 s7t/rugwKXCm+FPaB7TkNomDEtQkILlqOKhVxAswQcpTBZQWXwDbs75syCq63AkGbo
	 nRjgwv11Roi9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91417CAC5A5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175827179358.11923.3124090665679414232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bc6500c7a9ca7df8bbca49439a21b2a6100a37802f0b68fa42fa8974c3018a2
Date: Fri, 19 Sep 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758271793
