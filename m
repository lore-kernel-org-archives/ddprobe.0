Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA8850094E
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768694634; cv=none; b=RW+3KjQI4lcoAOt71T571NL6xCMT94iO50khm9L5Ts078KYnu3WNhDlFoaNYMaeFGhtsGs7/CLBP6HKjzCJfE1yTzzsNDBE7lg6CJZwmpxL1VLkEWiBDxJ/3Nl5HYdPhlrHvjUhTmbs76HwX4pobtIZkSy+mQHh9hiPEH5zJpP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768694634; c=relaxed/simple;
	bh=qRcwdlUw6IiyRLZpzX2cZZtH4Zu54jQLWF/MsCJnQ3g=;
	h=To:Subject:From:Message-Id:Date; b=eA+rJCTuj/J78Mesdo5nOO4R3B44ylBYYO97EGW9FIOClAGM+dTm9GlUpLT/ztDfWDfXkfR+ulxkgRJ43aDou90tQp1taTIRkk1VzLkZGOJ/SaZ+aLiTTdi+3ELIOpZ/hbak9z0Sf1/+cHp/5TeiVbczAjK7WDlrENDoYT1nw4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vHUSQz32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vHUSQz32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A303FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768694633;
	bh=qRcwdlUw6IiyRLZpzX2cZZtH4Zu54jQLWF/MsCJnQ3g=;
	h=To:Subject:From:Date:From;
	b=vHUSQz32p2Y1T++gFHYpg5aVpkzOBYDKec0ie74cygel0hjQUQvccNgrGT4WzpL/1
	 4AKJbtEmiZ2PB10L60tXOfEk1qlxk7KOhcbtDjHdtqhX+nUjrPOyYhl9qaFY48B3P2
	 XGdG5nEey+hEavDQbkpbf47dzN8f+B3PaQ6e68A4TSQHT6kejZTlraL1TLKQe/L2ul
	 L4YXCqp4MtFi8hnhXHzTjI93MbLO9deAlV0qP1wEYaq28CLlrM9Qsnq3FHKUsilQ4B
	 ofu36fKSyyQ2YEf9TKKp+X1h1/6wb3VYvLp4wlX4stWhH1nyjYuQEjeeB1h9xsRWc+
	 SH2P4ZvBjtwoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90740CA5FE7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869463358.22981.12141914633224463026.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530212f80329673efb7832fc14373bc1dd3c6d32fbeccb51ccfb8bcca06aba50
Date: Sun, 18 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768694633
