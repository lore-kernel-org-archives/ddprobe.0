Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB671DED63
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765836174; cv=none; b=kMB8N3s7rs74IJfDmifTf18Gs0HFHAC92glH2np+7Ahy8ILJQH4EIUQ66d5MF/a2H4W6//GKNxMsGI29CCCbQ/5/KU84Zbmp7ZHohWOr68O4r1Ijmkxokt8H/rtge8l5mWApHJjXrvi96jksRwmtS8g8/GX11ZLwl2UK2156WTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765836174; c=relaxed/simple;
	bh=ERBTpabWibvRRMN9xcbuuGbgZNZg+urirRuewtJrOlI=;
	h=To:Subject:From:Message-Id:Date; b=ozckxsYw5ES25jn71eQ+xEDqCRRBGkJ+3zdECmy1XF1o1JzPwa0GyBu4LX8faqWuX6NTA/ioU3IOyydZ7TS6J1M5n5Z+/jePCDJGuvBhzY51ROyMwGkID1AOb2tQTnS3NNvPUqIcTbqPvJkFJgCfspdww8x9AUrDpm0c7iVgB1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8med5x0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8med5x0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA92FC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765836173;
	bh=ERBTpabWibvRRMN9xcbuuGbgZNZg+urirRuewtJrOlI=;
	h=To:Subject:From:Date:From;
	b=O8med5x09lEk6x5eSJuL2LU67OR0o4vCBZ/uoQ1scxWOEGODYlCLCXk8fIrgg6lkM
	 9fSXC0xL6MyVjoERnj/EFKZ9mPzKZ2tVCSvZmF3v+5szV6vT8mwnL7JUZEgz5ah/Ui
	 anQrRxM/f5oKfUofS+HPfu4g7PKEvptEeUhqCXDG3IzKMLUeqDJAWUPfbk3UmZ8IJA
	 mrJDUWJ8suvwqeqvrjeRHX9kdf2MWm3nHRIpQ2NZpkm8lZVQMF7YH0mQ34HjtyzH18
	 jxkUV1CDw3b9MWR8Z5B1zUa0HVKZTWke0p/meSpNk4X20Y+6EYkwLMmskpGrJ0SF6N
	 AJsviY0iarppA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E5D5B86F
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 22:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583617358.27390.6007715912544619824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0166d2a64fa85ed3ddcf9971deeab0a003b510534bcd82ceeef10b597804104b
Date: Mon, 15 Dec 2025 22:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765836173
