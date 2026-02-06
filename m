Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CC0429826
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770405234; cv=none; b=M0KC2re+voZD2vMmQyypRmKfHa356vAn6r2DunmchekSGObJU9UXak0vVVKV3famtOWfUkd314JGLjv9Lv4cK6EEjF16AsaNqApPGJ9wbuKP3WlNQMkVfp7zgj0xhzsosINDwNg3libcAK+vJFWtrkNnImy23h5lk+XrSrteur8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770405234; c=relaxed/simple;
	bh=Za5hVUG+DcHS5+PxhVjkhEU0RG8/B4f9dJ6+T/h3g2M=;
	h=To:Subject:From:Message-Id:Date; b=UElCbGiH7E1QXMpfoQ0IqCA/Rkkud7VVS1ZWcrwjJxkPFyRWRXkrx47Gt6VbDOH8oTSkn7tLxMfRWG1bKZwVtml9rYL89H0S7FqACflY6rMk3sY+shPUDSQdc3dWGh9/XTSpZ4nm0Ku1HfyvCWJlVhfcBf8oMXOHRMx/pbcMWDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UX2AkcZN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UX2AkcZN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A607BC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770405233;
	bh=Za5hVUG+DcHS5+PxhVjkhEU0RG8/B4f9dJ6+T/h3g2M=;
	h=To:Subject:From:Date:From;
	b=UX2AkcZNUcJpq95Qw1ufQtTD/Fw0spWG+RSz8gK0nuvqZokQCHZ6BdsW0Y6Uy6Y3e
	 WQAvdPlTqESUtaULCfHb2T8t/nsYCTa1L00shkZcUqUuvSidiHrIpp1fnD8FreJsFZ
	 WJ/UyAWJw5fDdH49QGFcfgjbSRdv33KajhL4v/FUWfoKnQzAKVEql5sUAZvVaG0jmN
	 ZeiWDQ/cjyUKj7GXuhOq11rTkNw7Abw6GqJfjxYmTCRcY1quz58l2K1tA+pJ9QRiZc
	 ftO5gpca1FbGZoSzI0AtiOXwHfgyNowQ4xvloi3TqLmGrTDlw1uTyTIGfdQGLjRU0j
	 a1m/bDW5kzsaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9608BEE6B46
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177040523359.25595.2768384941041496958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1508ff2aefaf6e44dda64313db8865e6cbc2ad4528c1cfce2b5272894cdd2a7
Date: Fri, 06 Feb 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770405233
