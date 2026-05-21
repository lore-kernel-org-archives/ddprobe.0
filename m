Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DFB22A7F0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779380554; cv=none; b=Tc2alxahFyet1h+sg0p1BHhoh+PEDCkhdElLBZwAUWGnqtND/E8FX49s7f/WJVBxwEZ8n4xGQVGoyNLxyzwvq+d4DRQ7e7mJueZw0UNN4h4N3m/rlqjLhUUy6MDeqDIYhAU4afVE93bM7CnIfNcdOFiHcIENOIuvGEGBAJ6nXUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779380554; c=relaxed/simple;
	bh=mBexeltqO4L96WE4LSQqRk54i6RmL0QQCeC7HojTTB4=;
	h=To:Subject:From:Message-Id:Date; b=ka3DW2FVo2benovW7G9M82iL34EfgzdEX4dYOofhc297zDiu4vVPnYe+M4Vru1oc6KswnuPZcdztWpmdOmAY3WbsA2zwOeWkyNQP6XDLRtbohmfL1DrmRNqkZ3mVznmcI8Hki6Y/gnaTGJiFI49thgULNeP+8Huv9riWbgFIv1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T8JzZ5o6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T8JzZ5o6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7949C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779380553;
	bh=mBexeltqO4L96WE4LSQqRk54i6RmL0QQCeC7HojTTB4=;
	h=To:Subject:From:Date:From;
	b=T8JzZ5o6ecrimb5wC/y9JxAGu4WaB39AErC/i8SUpsrHeOTLX4ER1t93dbkPYFAR+
	 hVK4i8pgP/8wReJzzboZXvjLKevizj/wN2tF19WOArWFbpZVIob/0uY0NJG4CmOK9P
	 NoFDcjuq03+PykDBan/gpQsFRwyFCU+B2ErPnVoRLB4VfS4xPmFFnI6G/F9rrRUw7Y
	 rv44Z/wKGx6nQOYdI9VL4/x5AUQS+X/jyrUSb3xeUSRefYrDbehOQxjKSn29nXvOwt
	 bLiSFsF8cm67G+jGdriO0xvmCsBiULpjiPxUe/GpDt+BUP7gJBtQWsdIgZqKjYm7tl
	 WUax0/92tRCNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADE2CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 16:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177938055368.19089.915481846046285043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cf1ef451b193465fd86f30ee376b8dd9a75fb1b4d7f03e437f6d4f1013cb34b
Date: Thu, 21 May 2026 16:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779380553
