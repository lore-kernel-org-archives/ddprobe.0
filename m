Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36702156661
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765439574; cv=none; b=JXkDzq22p0KKb866QsS5guHOguTg5K76A9n/G4sjn+Q/oOgo6oTEETqWDBbhOKlv6gHnQWKo+lW/9ikEmfW8ECotOcqKwvWYBcuG9l2TqKVX1dBQ0cVgzRYz5tvoLKkFyKW88owxxtRNPeLSdNRvc4PkyLqqigteYfrD2zmev4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765439574; c=relaxed/simple;
	bh=y4EeMcpMw7H5ZLzOTE0q+QT/LujMCxzW3/24YhatvrM=;
	h=To:Subject:From:Message-Id:Date; b=f0Wx5RhV2LclhLsWyiNE0Gawv3bxyteSVtOjwQhzdjX7O+WNDZ2sSdaZ+8XQ5CcsbLAKWo9ZFMPPwu5i/cKFdIlWup920h4a8ntoxAUvyqtqmQ/+H1PObURfyAOBmNFSF0iT16GhWCUJ7MF2lH7mCvWSkjP1zapdN5cnLD/uyio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZuD2tCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZuD2tCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A923EC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765439573;
	bh=y4EeMcpMw7H5ZLzOTE0q+QT/LujMCxzW3/24YhatvrM=;
	h=To:Subject:From:Date:From;
	b=fZuD2tCJzc1RoY/cDuPywBSKhzZrJUCkfPS/j4jH/das5zjC5Fvdtjo+scUCmejHw
	 dXPbSpNK7WEhFa+Kh6O/IrzkjtKaYwAeUYjzEq6u9Swul4+U6TxgBeavDlyGLeYASJ
	 nEocb0b/jROpgjyZFP+fHl8wOhZMUAQkAWyMQ5QhGsi2HgiO1FeU/Jke5Q2UtTAOOO
	 zY14q5cfaue+VB22x5NfFQFVDstNw7bDHUKCtpyTvzsC38Mf2IykA9FdQch7YK9wTb
	 VOrDae9QTMXhPFaul0bmLK0zZi55hVsZpVTTHdD3viR6hk0HYTrI395NPLfehWO5b0
	 vAiWZ2FMJDzLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2A0D41C01
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 07:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176543957359.15166.17128907186070372273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81514f3ea157e4f8afc67fbd555d8f40f038598a500a70acea53577e5ce7adc2
Date: Thu, 11 Dec 2025 07:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765439573
