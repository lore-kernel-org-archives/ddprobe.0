Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD86C120
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754866194; cv=none; b=OXOcPuHDmS4X8Mmboq167F2PFT48QeGU7QqHSCWyFQcw8fvdP7xZYmUigAl5KuFepPGyT3fN0QNQEpTuMB5CJCWQeqEElyzteKqW4XFpGALYs9PXGdJ2YYbNDlRRJR0HZ2GRNWrrhVUCKOtTIyKdAZ4zNMxUHUSLRi5sn9QTPB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754866194; c=relaxed/simple;
	bh=tWBTzqSbrhwWQcHC79115xtncItLb+PLIry2uAFjX30=;
	h=To:Subject:From:Message-Id:Date; b=h6yV3M3NY7Y+m/sVFclwS4hNBGMXU7kZiTL6NBHxv5ipe6KYGgZIUAWlGuJxfmcDSfTgY0kD71i6OSUZvNmdpORi8mlSHbBroL1uVgUtUCLziHWRCzfACZwOs5HrA5WuhKcUuV33na6Ff061MNO96FI5TXK251oqVj1qWo8AAlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pcfm6tTx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pcfm6tTx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD2EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754866193;
	bh=tWBTzqSbrhwWQcHC79115xtncItLb+PLIry2uAFjX30=;
	h=To:Subject:From:Date:From;
	b=pcfm6tTxYyvwOoLD8CHwxpFsYLj44Tcp4Jx54eqOppYSjNtxQdJzGUeJ3pzeGI3n9
	 FkajbXNEfqt5hJZMubpzow4CuniV5UCLS5MOyAeGIYOnZVsOcHXT9cLvIHee86M/Hm
	 ANaOqRwTIpZJ0K0dmJxZyYrvtHcEt1fGGyqRpeNqivZEZ3hiJt7qXlmI7wqtO0LTn+
	 dLBKqIP6MYF2q6zKK071JJ7RKo3KLNnz9fRCGSxzfhpFATtqkb0RMUBfMywGI2NKbI
	 KcCTTcyxkLHoxDwCsdWank7zjPR+9sBQEHsUCCBmKM4hk+ppPHyCDA6KVFP7No19e3
	 8Rm6aMCvYKewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB96C87FDA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486619357.11202.13654252505686656090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cca662da727b28e7f74d9541e1ffdbecfa62bc56dddff8e489fcc7ea06536f3a
Date: Sun, 10 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754866193
