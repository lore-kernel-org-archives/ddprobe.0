Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5C835F8B9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769723034; cv=none; b=ebs3iJ9x+M+NHWEWUYxaKwZ06Awb3GFd4krQ/TFKyD/kcUywOBs8S0GOeF6P0EBoyPJlNezY0qdCTDrBzMAmaGXFFyTO5cOD7pcn1AJFRP21ABz7IcsLO3LA4VTS11wErJAJjE7XBA5sRP0u7o9tdRFm/Z+R9yIZyNwvvfk5uL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769723034; c=relaxed/simple;
	bh=cvPAmXzxcXnpNWyZ5XSoV+wf2EpO2x4XoJIB4yZp6xw=;
	h=To:Subject:From:Message-Id:Date; b=FWDE7nXM5av7meLKRITS7N5yJN25sIWbnZqr7X9TJV/dhjvoM0r11BQYgCOjpC3+d7fzlOU690a2gaACdtK5UqU3or5zyvQela+1S/iXb+/M6LBpsbgQ2b8MKuLEnOZ6GQ0/+ap39LLAGeMiB+2ddvPPUkncM3/4SyJF7xpoCVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSccw6Yq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSccw6Yq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3E4C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769723033;
	bh=cvPAmXzxcXnpNWyZ5XSoV+wf2EpO2x4XoJIB4yZp6xw=;
	h=To:Subject:From:Date:From;
	b=rSccw6YqiObRdHu54BD1OZZzV8H3uIaJoq5K9KGkBXnhg8cU4F60CZbV75ar5su7Z
	 6wEDbLZK0N2914o4bcImAgykrQ3sc7sou9xNoie8DItlx8MuYFEDiwBIBctaM2ZLm+
	 5IIx6+bOtoV83tYs7qmYo4l57TAodaf2QZmh6aeFIAaV+ZDDCFtxx5e2221xmJOm5P
	 0D94QLYd5xayQBn/mxLy/9icdoxfoSNW77fHlwHSkF03H53smGy0qC6BNL8GYGlRiN
	 IkLyC5UA63TCGLs1FAD4m7pRDxXyLZ8JLJPypF8VpADLq9k2Y/eYcFeO/GhextT5ab
	 gQMGpHTeygoRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94977D73E9C
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176972303359.32671.17419726328572105782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b139eeb7e4580a41e98ac137bd80c79c37079422d751130944c6ba672c47e777
Date: Thu, 29 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769723033
