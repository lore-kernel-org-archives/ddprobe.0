Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6E136F421
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791030634; cv=none; b=oRCrvr0NkMxKf40T0VJ1/vu+lwxHbF/R1VJs1LX99qb0TZQ1WK096or8s3Q3zyQYx2u8dNX0f9zccBtYrR8VVgzsIOys1VLNot72xiIs6jFSFRprJnavSr3MngXcm7EDxExcc+MQfNp47vkuEi3vNHWGVuZb7lIBsSRfMwxQ+R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791030634; c=relaxed/simple;
	bh=evMDypjI/EbWx5JgJsRdXImQ6QI7Ee2CpUp/9mR4+tc=;
	h=To:Subject:From:Message-Id:Date; b=p3VZEwobAdRM1pmABM2SpFQzr+9iEzVx4zzD2Ve4t0ZKNeIxIsOFWHNz1ukGcx9F2wqe/yHkAnnHfytOEL4HJ3HMktde/r+fXUkZlLE8zqTXPLNYdBZfgXGO4WpLjGgpN1q7eYdU1lEJDlmEOndglNOUxlYDetjgRIh7q41hSYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ATNGC6Wb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ATNGC6Wb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9EAC2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791030633;
	bh=evMDypjI/EbWx5JgJsRdXImQ6QI7Ee2CpUp/9mR4+tc=;
	h=To:Subject:From:Date:From;
	b=ATNGC6WbZ74NBy06npiHJv05G4mKfAoKu2PFOZ62bxYTBnfCvztkOtZH+JJc6iuDV
	 gUHDGMNqa1mXuW4tVD+R4F16ZEDbcWt0smZ8h/Yk7V1I/P4krti2+c+JX2PuUfJm/z
	 Pi9/TklufNOFbH02+YuYM1I0leDNVblrqi20O2FBl9qhPycrISEHQ0uPW5UOcyW9Jd
	 8WODrJ1lPMtQTQ0PBQ0W/5FyKaT90D1WDXoVQbM9gxElhF3+wlfT11mqI4ansY2Mpu
	 Tc9itiWc0bK0yNW6zBNnr3XdGh68fygh/LMT4eOIV5PrBYk867tBiRV7YODxG32tet
	 +5Fjir5YXmX4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A909FCA5FC1
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179103063368.27865.11846590710808540242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe636a81dec2ee5cc9dcaef76c6879aa1b0ca4a288152e04ea1a9efd3ba5fd90
Date: Sat, 03 Oct 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791030633
