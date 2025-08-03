Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EC070831
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754194794; cv=none; b=WVT3CWoQD/EdywJkePjvk3kpK+5yR56s9oZG1aJ383lbrWVeMO398m3pcxLfAdqibJ6u95YNzxtZS6PLZGYD500PzKLJS3RXoyGsMGJ0tlhWS/uQqTErrXwzjfW/FkeyYjvfzyPAjINMMkxFe3ITjW1eIEpJFxzkAMJYn4117AQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754194794; c=relaxed/simple;
	bh=tjTorOntoLTdBRWhCBRf8STTCik8KtmkUElpWKBFh2M=;
	h=To:Subject:From:Message-Id:Date; b=dxDKWWmYv2FLmwmAjwgxVorOT4X0GFBMItBH4XSl5Nq+dq+TNLClUcK7PgrVchgYCE/ZSMPMESNLizJAxIHzd9zrYtdLYTqHQmXV/yCTpODD1fT/kVimBxFnovHG6DwRId8wRSLfnE8ZqHjirL2/CqW+92eWxnbm7rEEdqz8VlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/Qbha48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/Qbha48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E40C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754194793;
	bh=tjTorOntoLTdBRWhCBRf8STTCik8KtmkUElpWKBFh2M=;
	h=To:Subject:From:Date:From;
	b=g/Qbha489YejBdA4o4KCkrlAI03TWA/+hs02A4ZwyS2xc5kxs7nEzjX+BLoN5ViBp
	 QrEz3sVR03LuvsGztQjRDDvlTUkqdLG8lz9yg+DZ/3q8tgIoXyuavJst3Blfo2ns4E
	 fEmvCfKZD0IbwxjltaIH37jCAlTuujh+Pa8cbxxqa84q8COsnRlSmavVes0G4GdMFy
	 1xsBP9OqUKTH0K+7u4WHd5eFKeN4e5Jtp0wszgKbZphxT5VzJn7dJDMc3daEYNBntb
	 eoiZkdDSZa0j0t2KeiQJ+dQrbadjFWQvJen7X9iYduni4KLUkpDXRZEudoF+qVkDvC
	 FxlNInyFSn7hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9151BC87FDA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175419479358.31829.7889218188317659912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61711a25e5dcf36bf2ec76f169376a33671c12c3692ca49755c8fb06a75655d1
Date: Sun, 03 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754194793
