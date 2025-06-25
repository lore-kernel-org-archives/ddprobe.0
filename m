Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC26D19D071
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750864793; cv=none; b=gCWtINOWoXJArPfXN4NVbb13hm2JLtiHGUXS34ASiMhgt3wC/Wua3zS2XjI3vJRihgKuxXgO4ncp2FAIdLMZbH7uzoJSwQYBLOmgZZfiDYxaCGM8BqhWsyUwTDFkN29iQCwqJhcvgVr4DIqZ2imMWy72a483nQ97pA4IKbg016o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750864793; c=relaxed/simple;
	bh=u1l/th0ubNBSkqQmSYS/OS0GJwCMJBXXLSsV0bLJZ/Y=;
	h=To:Subject:From:Message-Id:Date; b=cUpI5b0e2qa9fVazrpEGiaUnOSxpc8qhKtK+YyutYNkyG9OuHWQOuirF/JDFGTJsw26xmRCsB3PqnTM9k73RFt3zqhDkwNR4824tr7vPS2+UIMYf0P9kbUzoJHBlDuRtMcGfZ4L+IP0+T8Q5EaK5oWYw9pkAY5fegB3sLRlYTGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YirYmfic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YirYmfic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20D1C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750864793;
	bh=u1l/th0ubNBSkqQmSYS/OS0GJwCMJBXXLSsV0bLJZ/Y=;
	h=To:Subject:From:Date:From;
	b=YirYmficsLUASCpoippcaBdLVpGCJG58Cu+otYNQpMg/O611TAQ3bETmCvcxk5QxF
	 UcUKUejvmVOv4sE4qlHAYMkYzJoxZ2WPsHOYNCjKpGw+BvLZwvXjStkyzyfB+xolIQ
	 vTx1XBWLQjRQKvpo4Hv6VkGNBBcFYkzxG0nOR1G2EfAzHiODjDUvC1GIzrCXagJOqC
	 eZk4IRHY0GH0aSzlPeZ7/Ron2TqWwiM0d/CMMtpKZYV5xw/Jn/YQtpbxbbhigIFTiU
	 gD4U2oISHYStIuvX2eSK4aVfDFIYgSsaHJ4V7ao66/3vN2jWibyDM91xJQazOfGS9Y
	 1bu2GOKEiaU0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD2C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175086479357.20622.5785381819625178180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d0f3a0df4ff1d36e886f6c1f44ba54e3ac13735e1f85887be4fd7f70a79891
Date: Wed, 25 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750864793
