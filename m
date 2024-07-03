Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5536218FC7E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 20:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720038323; cv=none; b=AVYjz3FYyGztr6ke/Ut5XhbOELTwK2Rigexujbg9AVj/4nplc3b01nbCdPda5ZgQU5VV8FWUQ/lDpUTkiGMhSxwx0ukNK/004glY7A5ZzAsfoH6evIHbRAH/7GQs2CA1HRrcdQ6X45g8j+Eejk6iNBnXY1OWFUyWNuHoK0ehBeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720038323; c=relaxed/simple;
	bh=4bmhoopOEiv9pUnKtw+Kj3mRzmtHt7seqfT9Dlqwj8M=;
	h=To:Subject:From:Message-Id:Date; b=LSDwnH/151fgqQa5YrJLfx+9ZYM5iIV9VayOtolg75fviWs6t5u7R7nJ3aawUiuyHUC6oXbR5NI7eoiC2EwsAjvoj0NNCA+NwtBAnnvR/sJgT1ic/+RNR831Xi8Hvjb1ICsplPrULNhZcebrH2KEXlhFWo+slkpgrMqCexSfZcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jMwUNUQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jMwUNUQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D20F9C4AF0A
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 20:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720038322;
	bh=4bmhoopOEiv9pUnKtw+Kj3mRzmtHt7seqfT9Dlqwj8M=;
	h=To:Subject:From:Date:From;
	b=jMwUNUQV7Rmt5Ej3Fzl2ZFQUc751+daw/tskeBwYD6FdWtBHC8udzO0sc2cO2UnTE
	 wYN3hg3YN5yQ7U2FCvE/0iE6lPlyMk5jB2t/6dx0tXhCQpU5IS5cHmV1XTGlx6Gzk2
	 8B9fRomLVyWSiXtmsEZ436owDZovSwFz9ttFBDjmDC09W9dyzX0JXUW+oqIMfqieSK
	 o6fP+49p4Yc1+Pt1KW1or2UrexWEENQyT6vKGq7O9yl9ZEiiL0QmNmGLDdT4UjBjcr
	 evHzCIc5IB4UkXCkC0Fn5vByh+8z6Xw9hd7kDyxiRTgt+6RXV7/v9MhwyRfoCn8ARU
	 Hrwkg7hq24zKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFA7AC30653
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 20:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172003832277.2119.1224619362910579592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7bde0b3ece364acf01b186a02fd363085e2a199799ef0a9472eddfb7d130d31
Date: Wed, 03 Jul 2024 20:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720038322
