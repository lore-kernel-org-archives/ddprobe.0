Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C0A10FF
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716696863; cv=none; b=b1yRoe8TJPpqkOrHia0oximL42CfHq09iQ89Ickqw4FmY99jRePSYRuidocs+st+9H3KUqWA753hqHPSY5JjOx2SFwrPDkQCKHnXlr86WLx7idRnoaby3d76YoaQBBkeksUqON6/8TDixRNXmDDkOepn1UtOm6Ni9kFbGxRBdV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716696863; c=relaxed/simple;
	bh=XwTBWhKbWK7bHqmuZe8ReVPQX2D19XCehlGlI6eqiF8=;
	h=To:Subject:From:Message-Id:Date; b=uASguJjF5SUKgvbBPWGFDFOwHRhwmds68fPHUGAWeKeHXjM1VfoAU2mAKKrSQ8KMx3xnn7OIYWvMWGjHTh9jt+iVKf8wsFE1qhQv1I7lUOFk69I0/mBNu6Byq/zJPMlq8/TjdyKmGgOnH8sqGvOw3L3FMZAtizAldIsZlrdfCMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuH7nWNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuH7nWNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEF3DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716696862;
	bh=XwTBWhKbWK7bHqmuZe8ReVPQX2D19XCehlGlI6eqiF8=;
	h=To:Subject:From:Date:From;
	b=DuH7nWNvK526QO9OtRwzazyr/zvUg4orv0x4XIyyyiz5zj3SkLjZawVdLiZC3APYe
	 ZcWUzsUd5+4wEsh/InjnCwY/HbBh4ney+9m6ueud4H/UC6+sXatDWVjUIXpiMJ6WLO
	 8bHgdaKPAIkYN/eFOEtOsGeEKqAXkJ6nt2AlTbcH8j1STou/A6PdG/w4rF4TQuIDi2
	 40F1MlT4LQppxTgRTjYSVlZ6SPc1spVDUpcpEZuAlVYlU6F4y700Kr07nUTxFfeTZU
	 qwKZKw/tSY0DWwQiLGAUlP3klewo0x2u34vMx2kLGNkC5VEsGCJArIdozmb1w4Wu68
	 Pmfm7bQoNhDhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5733C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 04:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171669686276.3020.16631444915285540125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dee31ffe74aca18e2041cb9aea428edcc74e27b1ec3a0bc349e4cad5c76c533e
Date: Sun, 26 May 2024 04:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716696862
