Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22EDD11712
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756013394; cv=none; b=AGQ54oTr7+IyDLwNNiOv7SbCu2e1D0IEgVwPp2lZ/qyGoLiUwgDDGcSSMCkxEyHdVGqB95EiGTJPU1vwO08MbMtg26MkaGhiXeaqLfC1lvC4Mi3LpOI79ZhpIvdczJuXLOyFnW+DAuckEnD3YImHZDdKc6y7j5DNeVOUiX1NGg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756013394; c=relaxed/simple;
	bh=WvGjO4cq30L2KQqnURu4UwJY0pg7mxWiH5U7cqDF6fM=;
	h=To:Subject:From:Message-Id:Date; b=AcC0mr5LbY8zD1k4Np09eJzNjZMsZbqLqgU/8+ZWMSe8nOd2ays4bM3ub3sImvFHUSHQptKS6OfrxSYbOWRrFraaJBQGwSeiNX5aG4g97o8L/PuvaB+GBUOxM07Bwe0QcHmeL1MiPnuNNtZvnGW0ncrbrQ/x+TRKaVkoiQeuSls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEmyIJVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEmyIJVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2197C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756013393;
	bh=WvGjO4cq30L2KQqnURu4UwJY0pg7mxWiH5U7cqDF6fM=;
	h=To:Subject:From:Date:From;
	b=rEmyIJVruB5YaiYsLFcUgu6xZ5b1mzOBr2sccHHlJP2clWpJmPYZ38oucKrtHmkQD
	 YXT0pyjY6TSgLlKeSMaE1WM69Pb+M5XdiCzYC/CmWp0o5J0qf8mqymJcEgsmnPrr5Y
	 CsvfxC61OQjLBlT/Ajb2oaX1vlRVt276dntgcm7QuEFguvy7WtlP2fk5acQJMac036
	 RyNCk5nSx2vqu+iwhbVdBs/IXaDZBPjegBbX05lzwIYO/P8XMVbfyHE03RV6geEfS5
	 1NmNQwW9fK7cVWqTsDOMwcKLKtRPmAV9W3dsRbx7zptYlH/jAwfnoVBOltrxP9+64+
	 Ny0BsZGy9mSMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DADCA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175601339357.22967.18241437841952974772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ac81125b4709a376668ec6e6e06fcf5be07e18f53bfc4da5a99832c369db4d0
Date: Sun, 24 Aug 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756013393
