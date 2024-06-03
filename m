Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303FABA31
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717427723; cv=none; b=W2mfZMtT5a9k7781EQRUK7WmsvdhjyT6SVNmlZraFjbBd6DFBCAeDwf2JS6O7jrZ5UkBTxe6j+IVAWeUy2QZgwujiJAkhaFORaYp55l3NzounQBuNx5KDBrBYHputwzIteWHQIoZbDbQI2UQ6bsZNXcZiBXwoZtTw4NQa/IduIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717427723; c=relaxed/simple;
	bh=+BHhPVdb8ksabHsfV/eIncDAoj6uifKi6izeVZvuJKI=;
	h=To:Subject:From:Message-Id:Date; b=FNNmphh7M1vigVSH8xz3zvijOskPrSRc0CZPGQxPRaNIbZwwi7ezlR+RA4xXjW8dPatQB8YP1emKCZwiPUYrTkj1XRGzD4RUZvkfJtRm6M0lZF2agx8Y6erHbREa8hze1yVogyzePY9FI871jwRjzbEwNg3oEAAdNPHg3ui8KCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BGfj+gUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BGfj+gUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1B2C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717427722;
	bh=+BHhPVdb8ksabHsfV/eIncDAoj6uifKi6izeVZvuJKI=;
	h=To:Subject:From:Date:From;
	b=BGfj+gUg+LioibmXWu1z0ybaHVEaL68jFD7x7CD+j5ziwDVvBdQmS4KQUM6NDd76k
	 JEW+yBKmnmMYbphKwTT12h7W4VnJZ8AMq5Kn8dW8ClW0gEWEnQFW4Kr9Zk+ijkHF58
	 WadZo78nzIpL2fjVHhjBzYDWKNfG2lchRKPpkpZyoh3dnJ+U780xOuMxAIi3AEDLqB
	 DEczdVNF5Xg2CulTrK67otLSeOoCB/PGH3/GrbLzfobhVCmzVaJJInWASpFtcK4HC3
	 NmYgqV1e9aqo7+6V50VV4FOD8dRWxytTmz7hEAwVFY5V73gqXDkj6jIM/EECZSE9lm
	 Mxt77pzeOLSEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD966C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171742772276.19093.17099875657044213014.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0ca2677143c6b036ec7196787cdb7a1c705649eebd62e98974901db751982eb
Date: Mon, 03 Jun 2024 15:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717427722
