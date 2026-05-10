Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1F035A398
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778418634; cv=none; b=GZ5AsuwYvgcAITx74+BcAb0kaQWSbKLatrJcA+7SboIXI0TdenxbLNe0xJpNm4fvqnbnGlA/w/0EffpNO1kUlIakZkg2OZvqQqQPDFy86tahS8g77nMTXtRj0iI7PlsHsvnhb0ZUwRwzth+iykp9atZo4cT1GLr+CZQRjStyZI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778418634; c=relaxed/simple;
	bh=08nlDXWnAvEsaNPdET4OLtd3GsOAyy5CBL5jmU23f5I=;
	h=To:Subject:From:Message-Id:Date; b=TyIyUZ6BEDKCLH3jUYzX/xrW0tBjdPXkgFqb7Rcj3ni8BquBLkCglHv7OVbaMcXQaxe3OiA9Hw2J6dCLwNpQmlS4YO/aLfbhzcm+D2c5pAVCXn7UTLIAAnNlMJHYZCItKldE7SSr8y/bbiU9aOPA5vcIWgqJy9B6Ju0zKyOHP2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqtJsQEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqtJsQEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99D9C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778418633;
	bh=08nlDXWnAvEsaNPdET4OLtd3GsOAyy5CBL5jmU23f5I=;
	h=To:Subject:From:Date:From;
	b=rqtJsQEPpPRph+B8+G8iPeOwVsFr6x6jpB6ef4X0T/zz2W1ieymaVeotzWmqin5JH
	 HrsB7kTVLXD9W2Q1Fi6yJG6nrSGxE3YTUou1dBF3Uvr8vM6XJhHlvtFQw+Pjanp0IC
	 pojzB6LuI5anaXJJefBGiMha/klvbUxgyXEYPYU60dH42ajh7+cg6Mqo7yZVVVdkuz
	 eUAf+4m4Fq76S453ukJoiiUb4OXkYN//qesOV16i/gTbku/tmYzN3bt77tjQonXC1W
	 plRP8lCNo7Cojhj0sQ2OAaNxPikpei74/Nzxu1UcvYjYJHZLF+HWxABpetIdKzmarS
	 Ds/I9fwwVzmeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B67EFCD37B6
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841863373.10379.5666469369278121158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f378ba71c8624b466bc1f5b364595a42d1ad883e9f21efabc7db98317a0d7a0c
Date: Sun, 10 May 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778418633
