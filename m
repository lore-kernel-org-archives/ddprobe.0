Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ACA2369D4B
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782827314; cv=none; b=rsSLIFOb82urkxzBMgEKJpTPtAeVZkUvd9X728tKQ7maFkE7Gkr6TK4D/nhLYksvmmbmmsUpyBhbON3RA25rESnWUKzwkrSY330IVbTpVjdGDHsdZiBHLaVwCPoks1PP+r2qF18N4bWM5pVHnM2SXytzuh9YE8P9xWp+Dra2XMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782827314; c=relaxed/simple;
	bh=91ivkpzHP5KXKyono67MpIno61Q8axlRnbvIAOpmQ0o=;
	h=To:Subject:From:Message-Id:Date; b=DRWRr39jLs+r+MVvgMtEk97jRo5PJtPEGxRE69st1h1iWB+PnHFkQgRTJG3a6GhP1vFzPc+f8cnUdoTVukPJr9KaSjg5aw73F0L3M2MN62C/52Q4MZ5bKN9URmujo1upjhldAyeKRsln9RSPTEa2Bpm7Dcbh0Kd27Ob7DnXD91M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3xtv3Gv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3xtv3Gv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A02C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782827313;
	bh=91ivkpzHP5KXKyono67MpIno61Q8axlRnbvIAOpmQ0o=;
	h=To:Subject:From:Date:From;
	b=f3xtv3GvmlXWhCuMq9j1te+QBN8bR6bnnX2KcVShTfsl169h4B3Q0Q9//LZd4UAvq
	 AKdrNDd/gUhznTzh64ElbDtaqhBYW1dPoSBZOQ1ibW4rHalFRR6/KlRvTD7vSfPrZa
	 RwX9rMFmUI5PbsOkzfW13BYDw99XDBwqkEnn1M86mHx/ey5gdY5mRF9XMXBrlxvH6c
	 +tO5Ww04MPG0kIseax/JDtGLJouawtXitL6MhtX1LTEOq6z5yAgmBGfZsvKz9qtlUY
	 KnlT2YUk/zxbm8oADW4LWoKGnUjgQSJpwYqgp9EjwRtSAI1jjyaAL1qW6lfmaWp3Xl
	 bhXkvwhd7AoDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96BFC43602
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 13:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178282731368.8136.12190823604448940895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6193f33d5aa6238067b39ee6cc9e4ab262acdbf89bdf282d0ad75e0950d9d6
Date: Tue, 30 Jun 2026 13:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782827313
