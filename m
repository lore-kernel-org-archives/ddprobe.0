Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271EC283FD9
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774250694; cv=none; b=l7BJbwJ5z3DIoxFwDbexss3usaRAXlheOUp/y9yuOHZXzObnsigpTI38Ab5mg1oEJm+eEfOou2MRxSCwEWqKNjUeRxPBHOr/nw2hKdnukoDhERA/ESqZPmSBLxMQRYIuQ/n2+adNRx1hJDGYSN7FNXtu9SgBiwKZsip2xZGLUqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774250694; c=relaxed/simple;
	bh=1/hQTaQOQoCH5B86rJF2yR82x8So3/VkhHBnQo/NN90=;
	h=To:Subject:From:Message-Id:Date; b=ArlePpfedlGGLqr4Y8Rc0lddwpeivIQ/agPLZeOgBxIItxv7AAVzJxy27IBFbZk/Hi0DNPeVnyrCiqHORQCGaRnE33/X0G6AgLRmz8QGMHPbPrH9lt7vt1Z5Y/mgClkQLwg5x55z0P3rszV1Tcp3ATgp7TmJ6dZQ4m78pMiqYKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uLhlo5Rl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uLhlo5Rl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51C0C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774250693;
	bh=1/hQTaQOQoCH5B86rJF2yR82x8So3/VkhHBnQo/NN90=;
	h=To:Subject:From:Date:From;
	b=uLhlo5RlVfnAcpctkKlJejGFcrrH3LQr5pSfflqZkTupNKtFEOId5KzgF0Oba3eRX
	 xZJ5CNwoj/aUL1zRpwuL5Zy6op4YXZ98IfFeMbg6cUN47Zy99wjqwAon9LMWxuntIW
	 pk66NCKpjQtkHhMrlg9xU4EkIiUNv9vAFcZ3vf5WN5rX2d94VMpCwDQU/dg/vi2mo8
	 h2lN9v4BQhfpaKf6yZBINWZI9OneZPeQZtCS5XdE2dnPpcll0Gmyr2ZZv5uwPzKyia
	 AsyIJFAgSZ5Fuhrf7i0uPuKAlsefHfl+kuMzbLpq1HMJnqyOuRkxnoMz4+7LDb11Kj
	 c/n8GwCGNXewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1CD3FC72C5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177425069363.17273.16413284937807657355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 101ca709b172f5246b329d23ef8b2e1471a0ed36050a3f148f1e0f397b1aeacd
Date: Mon, 23 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774250693
