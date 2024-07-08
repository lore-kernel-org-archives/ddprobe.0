Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0481474AF
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720465583; cv=none; b=Jc2gBuUcS7niyAxSOHX6XHjZUEZPI8jr10UBxgup/KrXkYDoXhPD3gIZEQr1UazsWZxBAbAEX8R+YbOM/T+ggtE6bUvNxKELKbypTTMUYIAP00D+OLr9RIiWZczfZSkwNhkTBqbylc2+KPYdtsG7VC7bD3VMvKK7eaZBqv5CmMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720465583; c=relaxed/simple;
	bh=d9D7uVIT7+y2wW/FIO43se5rj205c5rY+QE5YZNbMnE=;
	h=To:Subject:From:Message-Id:Date; b=mKPJB6Rdmke+lpEbBJZrKI6ShSvCsQxaORCW6Oz7oUSBHZteMtQUk517rsoi8hWkLphvQZCyQQCsSE2cxPNnoEC9khKd12fhpPKSS0r91qYmaOHjx9JSAf0wKT6FEahtAj3jJFYrMtHH2wJ1fFBHbhmpzNeu5phxEqAyZGOgwhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpL/sDZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpL/sDZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D273BC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720465582;
	bh=d9D7uVIT7+y2wW/FIO43se5rj205c5rY+QE5YZNbMnE=;
	h=To:Subject:From:Date:From;
	b=IpL/sDZlr0A2/aU9c2NJUU6nqBoupF9/qtef3xeQ/XXDlTiG8akVXkQdqMBgTZuOQ
	 S/R9fPRyOxEYVDRGfZIQrGx+d4sJW/HpNyqAXJC3vMtVucQ4eeogqrUd3RgFTUbO+4
	 b7uDkdN//PyB1xTZ1QoYIS/Z0clriFVs5DdHCLO20eNpBuCjcO4hpMBZmkbfON+Pjb
	 SnLcxghlqrlqWRevfVzxs63WMtHdkjcjfq8a90OgvdbmSubRdjtL1JqR0C+qjFqI5N
	 pQCJgbnK7wPepfepTK1lt3pITEa2HVN2DuxmHjFJIaBpoRAbDVRdw6gXYJxbDd0K5M
	 TzW6q/LJdFYOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0108C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 19:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046558277.11834.17007494134318219733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54487f5031053569cf04acc02028ed05873a3a74f5dc20f01996ee78480c21ec
Date: Mon, 08 Jul 2024 19:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720465582
