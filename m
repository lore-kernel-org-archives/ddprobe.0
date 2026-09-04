Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 746843A544A
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788505834; cv=none; b=mvpC6LIRllpiOprXgSF+3hxDBXRgU7eFx3UMQbUSLSmJLH+lNhEdKgw/qSdPeeXPqjhCr9+W9QFvtMqkMwjhDfhH4h79ZIvI+HLe3vMl/YbXrYBmhC55GbV6Szy86vDX/q6VeSRoxgX+JHgGrZC5z/bK5FR5m5oAlQ4alMu39eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788505834; c=relaxed/simple;
	bh=NLtX3QUvEKL4RGA6qeOcZAz4UD5Ap4zjEPSN51bknIo=;
	h=To:Subject:From:Message-Id:Date; b=gwDMkzaPGJE0mJlYesvznVlkWI/aItYSqZ39P7O7LKnJS59hZlEazjlrwU2G/bl3hd5wTsXB4MjmRt6a4XjgpmEp1YR/Ckh95SLKX6s6bb3qPq5sMktd/YmR9O2ud13k0egi4lDtt4qzcRuiAFFsPw+G8FCyvNUC+AgOw7rTvcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meMUMgAZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meMUMgAZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9473C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788505833;
	bh=NLtX3QUvEKL4RGA6qeOcZAz4UD5Ap4zjEPSN51bknIo=;
	h=To:Subject:From:Date:From;
	b=meMUMgAZMwUHYivBMawF+cpyXv9VbGasp+xOeMTp5Xz3LEjTmHXiicj/8wfmQHF8g
	 Jz2IHSR1i5UiF6pkV62y3zeJLBWeoAkRw4Rdp/eSbN9upDx3eNW+6aCMi56qzOeKyA
	 i05r/5QIO9RamkwoOigRbkh7H93XkXrIdsmMVKgK/AchP+CoL1mpFM05zZy73aJ2VU
	 C8Ozijd5EPw1HpudqScWKXwTuG5452+ARv80bwN3fmjru1q8P1rBwjAKc/GlnUTWtG
	 bLgHiPgGcMq12xbz9R3WxO14XCcJyGbNEEzkuBzJJI25SYXx5bVz2p0B+iNCtjbBGO
	 mycLq5zb8i+QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED90C624DE
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178850583369.19344.7296659591356166736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79c0f0ab4ae606d1c895eb12477ce6b6e57d3afc626664f1cf59c14311d77a5d
Date: Fri, 04 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788505833
