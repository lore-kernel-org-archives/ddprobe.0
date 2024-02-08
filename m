Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204E32AD16
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 01:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707357497; cv=none; b=PIkG8/M1/qCm+9R6Fb7n2CxTWvPLsf+1BRarQ+DVEhCaOoZY7kYBSvYsPgV4oMtHt91z68+SpWAEnD8xr26rPh5BLRkS53IWfddbMNndYMM7pwLKkBBhUdN1VP6Z6zbze3zqQ7xkk4mQH3i+T6JGh9KtZ2/vHOUfA+Nro12zLhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707357497; c=relaxed/simple;
	bh=HeHPQruT95c0y6HJW+xd5Gk5NIVyKzGUnO66CGq7SkE=;
	h=To:Subject:From:Message-Id:Date; b=jjKdm9e7YccxCpA6/lGtIU+RHYQ3zmgDReCW1N4IufDfy0VNPg+weUW8sGpXALjDmo59QYhdJdY21r6vMikM8XATzkP+93eI69/JssALHmPWOteFydswf3J4jek9alLWpXH7/tUz+AlViVuUsGKjF1bkNZ2xVfMumvrOOnPd8Jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qCoTTRbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qCoTTRbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D509C433C7
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 01:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707357496;
	bh=HeHPQruT95c0y6HJW+xd5Gk5NIVyKzGUnO66CGq7SkE=;
	h=To:Subject:From:Date:From;
	b=qCoTTRbgfLRKJbSF4FVaA5w51hW0iKgYdJbhr49cEqnT3UVxPObcNpwpAta+LUuqD
	 w3SivnohifatU5vz/pxC+mZOYYxFYkWrFpS+3z/nCvzEvob7KnYlZAxYYVfJnQFdJy
	 F0oVo+TpLkJZaVIOSLNb+ArmuN9Sspgm7oJFFSS7tlyjbFJ0DBUTNHNplm541xqhru
	 i8BSUQDUke2d4ginf6azciGY2bvrjsvqZwiajrpIhDJH5AduyH/jpruXRQtYTflgQ4
	 lIBOKU4rP70Z2AIThq46pIraWSh7pZt8OkNt7h0CzHqCU3uFTJ8haV5fNk51BAaX5F
	 1671ap8a9Orkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6090BC4828F
	for <ddprobe@lists.linux.dev>; Thu,  8 Feb 2024 01:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170735749638.2353.11650031714912113216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e17984273f3f6aaaca5b31922aaa504ba3078a7380c2980310126c12ab79d76
Date: Thu, 08 Feb 2024 01:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707357496
