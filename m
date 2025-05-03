Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF31376
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746273596; cv=none; b=bNt1JPPavGLmJThleiV7hI+FduAonGWz+U4TW9lxZNeEa4PRMNITMv+YVaHaPgWl16NiU1p8fuT7KCHzGcQUL1QE/8ehCxe5GyxaTadXHRdbkJVCIM5R1Y6EhsxlESM5bcdZ+8uqaaYID+zuHPRavLAWANGVebADnLHfIsDxkAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746273596; c=relaxed/simple;
	bh=vaIybONbS5fom5vxpocnLacTuZ5K2cMD5xsfGtl5DGo=;
	h=To:Subject:From:Message-Id:Date; b=Qu5pCkdwTAWy/0+hFITHiVstrQ5IWMgyp5M+7vIpe5bx4g2lJYJjbNZdqv7nY+3I/AKzTRP7KQznpuHhRhB15l2/vtynr2/GNu0/kqmo4as/heCwS7NtdtuNYiY9BewOleZAQ9UdpMK3ifY697HEUvHMWP/OFQhV2Rr74WGRyIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjMQaiZ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hjMQaiZ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D282C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746273593;
	bh=vaIybONbS5fom5vxpocnLacTuZ5K2cMD5xsfGtl5DGo=;
	h=To:Subject:From:Date:From;
	b=hjMQaiZ3s6XN60ZffwzoyDmnuB477rfNf6MhmTC3VpByEixjmSTLXWohs5snWgBpq
	 O9i1fwugUhENRpXqo3vpFtK2hFs+CKWYVy8dP2ZsLunOGcwq+1k44n8fyQ5eX/2gze
	 zfFjtxQb0oRdHpA7L3D+2sagnZxJv7lV2sQapD2PVGoYV64UiiNEsh+6Jnicr/bTpj
	 23jVrOwx9m1vBs6TKERlWqvm+ZYDsIVnqpZIK3Jjb8SWMoHdRj7BPN+etBPIFE3oDR
	 DRant39IM5KZoXnJVPkvUEDuV+WFWqhd96yMNtAhfuGmWOxcYNSAaZesXkjoXOvSpP
	 GnGVwkKyiGK5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAEDC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627359357.19149.15388332263336018329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd51bea8325a2a6a1a4df90fa735c97e0224d64cf035654ad78c349b985b2e05
Date: Sat, 03 May 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746273593
