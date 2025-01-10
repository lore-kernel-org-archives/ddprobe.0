Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C31D20ADF6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736508954; cv=none; b=c9WDKNdk3sN3s6Vg5BHREBZ8batjHC0BvBpCxyZLPvSmYsvaMUJ62QCzLWZxh2T8FTy32mL215LUfjcpv5hvsDuBcC57DGoY2FdSae68zGB3sGVvY8K+5wAbdpqADf1+DjxRCmcCnuQgn3cb2m8tgWXyLcKqNWHk/p/ouIhw9wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736508954; c=relaxed/simple;
	bh=csk2DnZEGz6GpYSyWWntWlr4IDG9orCZBvJ6Rk3FPuI=;
	h=To:Subject:From:Message-Id:Date; b=XCAhzfA/jjmoY0iwwZ0/aZadtzL4jfxukc9P2hFtwwM/a/VxGvR5v30QnEXIkp1uu+/T1XlNgcUexarDsvZzmOQ02URpKdY3PQWP0s9FOWyKZwyM9bKiu7BacCYFeapDpvG+I5E3pHOmpEjznVvivL+UrATBM4QTyOTHzNwn36I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxlgnSnT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxlgnSnT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB20C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736508953;
	bh=csk2DnZEGz6GpYSyWWntWlr4IDG9orCZBvJ6Rk3FPuI=;
	h=To:Subject:From:Date:From;
	b=jxlgnSnTv4EGhm7Xw0N1IYW+xLRF62K3RKxiAhW0tcM5Jo6lGkkuln7uxWImvdUQI
	 iqOvSD/giWj5nfW1MBFNcLcw77ILzlEXAALTrvJLyXdLcNUSc9igKwpmEN2I9By5cE
	 RPWPjxg+qRwv8xLndbfVYUlVIqMG98vHzGfIJJqF6x5846G7J9umpk3efsvnE0LWfP
	 cO6FV7140rmtcsmDKG+s+oCNQqkttDyupjrmxIpjdRys8BDlauQSBsbL8aIVKTfUwn
	 LMC/S25gGfnhlV/75yWi+oBMb3D8vB21d/id1hOWKZjWRrY1QYj7kG37C/qqYdvHSQ
	 bPjFVndjqNtQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B4EE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173650895361.19749.9958048771080684365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e03fb6b00b4ecf8ae0944b55cb4eb216045fd001cb9e09fee510c582d9a764c
Date: Fri, 10 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736508953
