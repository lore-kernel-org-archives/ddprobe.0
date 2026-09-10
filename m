Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73693319851
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789002634; cv=none; b=OBOzeSGVMRicyU3kh5s2cdh7ZYF99FA4xfKjcGuqO09R5quJDLyVHJA5Te8X4Yfs4xdmqJuHdeC0Mj+Jv+1vZkvBvtmb3Far4uZ2AwUJ74xBVrUptP5FTxVvdgylSDEUqb7F+PjWjjpj5Y/eFXYrCtSTU+p3T0M46SbouXIxYDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789002634; c=relaxed/simple;
	bh=Za0w8ot0Ey5ZQeSxN8GVt8C9FX0H44NkDwoXvRryR14=;
	h=To:Subject:From:Message-Id:Date; b=f893WeculSEIBzuWRJcmYp3nbTHMbznM2p607gGAZWQZLa4lnzgN48LIt95Sqz7MaR7mBa1S5zB0jF6dUgDypUBIdXkr3uq0CGCvq8neP8OyTTy4/l6ASv6CKUvzuvrjI7kz6E3FASlVUkA2zZmWG9tnkYhRQnBl5mfNqC5AmO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLUhBIpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLUhBIpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4775C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789002633;
	bh=Za0w8ot0Ey5ZQeSxN8GVt8C9FX0H44NkDwoXvRryR14=;
	h=To:Subject:From:Date:From;
	b=tLUhBIpL4u350YfBK3xlbi9Rk+FqxgjnlSVNn08uiztRADHFQxijteOLm3BnA93Cd
	 Ab6Nhf4G0cnGD2FG4Niua1gffBp4NbdRkbGX5J2f3W9EzB9y/m+eH4hew+DXSutig0
	 Xn9P6vRP1UlwHUv4T3+9u3hhZ3eIVk1bTbD6qc5B4/SW8gSD8o6lePSqZvK/cKBFBD
	 hHolEADtG+jV8iMacKB2J70VEx+K7d/v7yyUxR9bi6/Zcg+z8dmt0kKP117PceXl9b
	 w3SGKo0BAaNwiruYxsiTgl05GFJGUn1JT2sq8wDYpc2uAnjtkpydBgsZhMILZ8qiM+
	 73m2yX9CQfeBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C24C79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900263374.20716.10416513407593061454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab1e65d056cf29dae698258d9a2258c9d480db0514c288f9c942a662f56c961
Date: Thu, 10 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789002633
