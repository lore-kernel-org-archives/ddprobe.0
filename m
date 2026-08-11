Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A57A37E5D1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786428034; cv=none; b=j1v5oxDDlO9tjWiVQPmfWkSW+Aafo/yqHJ15nrk1KMuPl2gUmJdpF5ydrwJaKkRrozBBmIvMjW4mqQSZr8oLdZT5OWvcvW5PNs5elVqO+4b3XYzKRtTTt7qZD2Y0J4WevOnOvzWZpJyWJrJdc80Ur7LG9RvoVt9ExxSYagBwqo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786428034; c=relaxed/simple;
	bh=i3s/uz3hmtG8JX+yFFYM7moN3MnO+4f6kQhRnv2Hhig=;
	h=To:Subject:From:Message-Id:Date; b=E/f4cvQkpzTpbah2YXBDHCh5QrjsLUCcrnIsEIeGMmfNwc3pFNMz8ulamIL7Qc3vX3ngeq+U0WBf1pLZuL4AXQ9dr79esSLTyQUT68bcVAUBXVN6iajUBpLHNw3FCV9ayWw6FDgxbd0EluvIyVI1u6k1Y7yOcFjEz7UTKf8ZVyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XRtySzGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XRtySzGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB58BC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786428033;
	bh=i3s/uz3hmtG8JX+yFFYM7moN3MnO+4f6kQhRnv2Hhig=;
	h=To:Subject:From:Date:From;
	b=XRtySzGPC4R61VYIAx6+CJy5hVdOiyY9HWWGdW3oKh2gItl625GsKk2fxBsiStl7M
	 IY7pELG28M41RKnKkCgtxVtGzC/9nx9mxdWaj5bAgI8wc+teEU6Fmd0JENkYnMD/8f
	 RuXThmJaDoPQjeyFezomJSeAJAn4ySe4vYgq//9flmgCQD5ld9OnED2Zk8cZdnQVwa
	 ixV/97NBPdS1fEVpjhtwiG4zvjZo+Up58JLHLKgI4I2mxlG5mAxRFdZH78PtaR2ckk
	 3qIn/sOgVZq7ncUOI/Q1JML8H4nhXOmXsSX1hx3JGlY5K9yB7KrTTVBEFh4x0hG7sl
	 akUljtvf3Sk9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F45C5AD7B
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642803368.21308.6815952755840673273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a79dc363c120d4a0d8e585f2c5c66f74401d948970c0c27170fc230b0f076326
Date: Tue, 11 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786428033
