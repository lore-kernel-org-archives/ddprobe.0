Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778831FAA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713500963; cv=none; b=RKzs+WU1D+6mN9rc9S7GuCP8rSU4Q9e1FZ6wLTKQdbdCPBSCsF591DIU7DNRGSTbAD11maFNwINZ5kk1TQq1XuhcXI6gzhCtirRqrS0VboqUHMEPL8Z9hV8iaK5thwv97N8PBI/nOd/ALbKnoO7GI5BsFgyhspiARDA+dPNl5PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713500963; c=relaxed/simple;
	bh=qBKQkOQ32syljS9xKtA2zB0YXMr7q0sXV8MGZzEHvqo=;
	h=To:Subject:From:Message-Id:Date; b=ku1daji+nG+yFnykkWpbwgJ6E7rwgAvKaD9vtDVGrsCTKcznMib6k20rd5Lj9BcVADVqQDgkCfHsMXT0eOHmx0bH+NSd6O38Gzzxvo+ibP2jByA0VCHmBtzLulbkpoAM82I3rUX2P6uE79/JLigkqTSjOWXvmhUKmD++7TXPiu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1M3CCg9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1M3CCg9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E45C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713500962;
	bh=qBKQkOQ32syljS9xKtA2zB0YXMr7q0sXV8MGZzEHvqo=;
	h=To:Subject:From:Date:From;
	b=g1M3CCg9IAOnYU2hIFZ8MtDO53yB03ZLDE/dfW1FZ2DBCZ8YIzbJNpS2NFUBNDrjw
	 AHsx86Upk6XU77vcL4zmI+RnEJ+4v1QOywyVhsXcz/B6gb+AARAgvO4Doh35lYNi7X
	 ynzDExPRPYqOcnPAeECnmuAsHjkZm0HjYBk+0aXrLPwBnJO7ka4qhzb8Rpu9TCHOYn
	 +13wYwhPjsjThPh/6b2ZbgnM9PkJGBDEeTNhEjoJmPkFFu0oVT6f/nafJ1jJFPMYkJ
	 HM470fgYlypIZRTu636QHV0wybVf48GhUMlUE9x+4olf3lizzvhSwOpxRRbiEo98A1
	 BVyKjyBzS6Yuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF560C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 04:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171350096277.21933.369686377910258239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abfbad05085412943ee0f9bbdcbb456f12cc52c6de2c7a946140f68a3ea7f9a
Date: Fri, 19 Apr 2024 04:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713500962
