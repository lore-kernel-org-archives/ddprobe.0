Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF8F42049
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767314634; cv=none; b=Lvclr4hN3FoUDIOxit9ypJKh/U9soNKDzUp082z1uO+HaItnJwafmHPcSsmiSCOldnNLD2EJnkiV5TqK5KocazTNqwweiESESZIhPOOCGYNw+m5W465KdXI7KilLW8o6PAX4NN7GTPZTLcK5z0MWNY9JsOrMcoHz+CqsDrF8XEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767314634; c=relaxed/simple;
	bh=yhOrEhlcBC1vXXW6T/iRd4xQJbLZxWUavjek84E6WSA=;
	h=To:Subject:From:Message-Id:Date; b=NNGy9pEG6N1Rlmn+M7FSv8vqVPRjcTrNO0lZZR3i+mgKv1herliFPE2m8yWcbeOQTk6oSp5DHPwoWH3cX36e0Vbp90OSh3sytXsRJLZO9i7835+zyqBEQkZVfjpfTSs3AxzI8noWfg9bcz8Yl3ayRAes7H/R/oZRLTo6/M4a9LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N4rAKEU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N4rAKEU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04D0C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767314633;
	bh=yhOrEhlcBC1vXXW6T/iRd4xQJbLZxWUavjek84E6WSA=;
	h=To:Subject:From:Date:From;
	b=N4rAKEU82BDO3DFgJXWjPSQmlZfOV+/DHa3LNG4akYJfWxxF1gNOkL6s2mbNyXK2h
	 s5BOdQAMYc9Zay7JysqRsp2JZcRaYuEh1sg4nNq4Sg4cQXc+eG2D8hr2Uj6qbFXtyF
	 mCzud96HWRxclwjoDxgMGPCeJ71wGGzqTeNOIYP03qw4N7qIX81DSYsbMI0TdDiL3k
	 vFufJSppmxzGGtAqA1uobK317MxrGYIefwb5qIs59+5CnMF+zwfXe/Lub+Nl+sCX2M
	 w2Mn0WZORiO7aE/SLTxeIt3UOiNHsWm7Cg0kVYgh9M/m8HTMK/h1RD+Wet+F/m5ZfG
	 a+ZT6FKtW+f4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7BDFA3724
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 00:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176731463357.17340.521369502401532654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab7150fc53c93d4dec52889029e5e0019ec79df7bbe89329d7f592e75526ae5
Date: Fri, 02 Jan 2026 00:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767314633
