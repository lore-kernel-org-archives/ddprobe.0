Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434AE3D411A
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778929234; cv=none; b=MSLTxOQUE/paY20wR+90eaCiVRMD9hLvPvpWibE9Lu4JgW6YlRXgNO1Ae/JdMQFBVX+1nwoej3xbjj6ZXTUWzzOTFIsg3qU+qsa26SdUFamp4EnfNYYcSJu3eOF6eYyK6F6WDJAPrx/MfKgreYxtl+p/HgqdLr+bxLW3NyC8N7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778929234; c=relaxed/simple;
	bh=H70en0BnyhFh1DKTN3JeQ9tVnLr3z+G1xrSikEm5FZM=;
	h=To:Subject:From:Message-Id:Date; b=kzEXZNCkaQlMcGBo0onHw1oJQzLMGhCy35oPqotq/3ow2ZzD9Lf/LQdEcAJ5tHuv9kgCeJ5s0MFY0P8+n3QYTu2UNjPyLT01W5hKxvhvgfsPyAixJPDqyX5WMz0KWexDwSIworUDBX9/w4yTokwaR51DoGsSqI4B9VpuwTSLbJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFIIl+Jb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFIIl+Jb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC22FC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778929233;
	bh=H70en0BnyhFh1DKTN3JeQ9tVnLr3z+G1xrSikEm5FZM=;
	h=To:Subject:From:Date:From;
	b=fFIIl+JbA0pr57l8agM9FFHreAat2NbItyLAeMEMvJrH2/aHOXhX59Ui72sSBvpKd
	 W5xlas/RMlprWSj6U+49Png68sOUQz36KcYugMg0/bQM1Z5uZxgpgnQPp34bdwscXp
	 icyoHGOx4Tl9p4tykxya5xVuf7KW+1cxboO5WMYqHvKD8T8z9esH8iWej5fnhkZlgs
	 c7EFV5mCwXeuQunm6yPUGl3jmCjGoFofqkTzvhSOGMXBEXHO9EA51V7SMt9hOLr8U8
	 LAhAyzEOylrJ5yGPzOjldyyDGFu68orc7MSbBAFCjI6Ru9VXFsQEIs8HFS8ZfVjAMG
	 nxefJDGcghdIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7121CD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892923371.8319.1473360385336675617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c666a141cf883eaa9a132f7e96ef7f323d68505b26ca78da937dae9e9208b957
Date: Sat, 16 May 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778929233
