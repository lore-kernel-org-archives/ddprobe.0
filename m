Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44DB4BD7AE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791217234; cv=none; b=KmHVxuQR4L35rXbxOO+ASTyZb1FhjD9Tad1tmi0yFN8KB4HwRDvyS0FYThxKtCVToTs9q2QQcX5YYvI5yHYjpr3xCvQyc8KJ147PaGtY5MQ9YXnpkS4y9Zlgf2LkbZIwRgEVVRl2knbXfJQe0ZleAXb+V3KLCMpNKrJXIblmugo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791217234; c=relaxed/simple;
	bh=DRxhyvbKy5Z1s/4Ix5bVh4r+Vc0R8PrQP22HefvaGWw=;
	h=To:Subject:From:Message-Id:Date; b=mGrJkErK7b5q2osdoFqt0OthMTDhAtxwCWxO13SenDcOiz5zANmzKV3pzkKUUTDg2pWRv3XnoSQpy05iZ0Kk0V9Vf6KSmzCK/xLmdwRm2nx+MzieQwU0q7V2wIzG+P/6V5xAreeJ4QusPGY49gf/96FjFTvmSu3yD2DFva3NtrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K1lHyvnA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K1lHyvnA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBA6C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791217233;
	bh=DRxhyvbKy5Z1s/4Ix5bVh4r+Vc0R8PrQP22HefvaGWw=;
	h=To:Subject:From:Date:From;
	b=K1lHyvnAodORXnbZUpD0nA66njuIyM/LC3S2SCK4mvy6d8reTxrU5OqGTb9RXwYRR
	 ZHTfc0xNjh6QYSfJR6ZkBCaDHvgXbzoQu+DowoOACB/g4/Q+lgP2CIW1xFbr6ceOGK
	 8IxPWdRyPpqtPMXXIHhNdif6YQbhLi1c/0BwB874yFOz2r+jps2QbO8A8fiTGl7rps
	 rag9oU0csFjInLYD2EeBhM5wtKYAwkbS5zZbd949UhLs0fvRDFbQaVh3IVtrNNfbDU
	 I1Q7IqrKy3amzMaPMltYhGqD9XDeaHhJQtLx3OpzwIWZzdOD7XfqO2RzMOdZmeiExQ
	 cYOUEXyLC5hfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F17CA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121723368.29580.4158610835968582823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ca27a002bdfeef8fc016e05ca6ec0ed82c4a5e9b960a08dd4a07b901a420225
Date: Mon, 05 Oct 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791217233
