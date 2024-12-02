Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4206A20E3
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733099754; cv=none; b=DjVc4WhBnejMm9pSc8B7wbI4QKoLYXnWkQUwRgjgheYiwc/rx2OZbMg+4dMNcngSqoDaPkQlhazeXLxTKyj6w+0pCyMIC9Fwl6By9WHO+yd1wsWUHCxsrVfdsPgAoJNC9PCBajLlYcE8eoy2EG2GzDhrGeXujtP0Vs7Lee2q6jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733099754; c=relaxed/simple;
	bh=okcKaDt/sPQeuWhvpGvoFQHi631Ged2m78y4GUTjchk=;
	h=To:Subject:From:Message-Id:Date; b=USFUFO8WvAUG7eU+DA22bW+bdIuNhqkdwEW+mZt1lOyzt5hiyZG/ugfCXW1t1jLgisw+WsNRG1c2XrYY+HH6rD+l1lUTrBCPq24Id65xHBCM8HgGtXmw0zUwZj6uurI/UwohdTRXEWYLIAMVQo3uLUA1s+BTgoJ1icAW4a4HBiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hy75Y9kR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hy75Y9kR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0E28C4CECF
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733099753;
	bh=okcKaDt/sPQeuWhvpGvoFQHi631Ged2m78y4GUTjchk=;
	h=To:Subject:From:Date:From;
	b=Hy75Y9kReSRQY3QN8DaX18PQ+RcMAAC1EuNtzJ3JHLj96AZBdl6IkuJ8pT3VBlW8h
	 F6sjQb+7pxmcIA16KGghFQVxZwItH3bkUD99pJf/E1KrxlGB3iWbTi7BLGrr+dq72F
	 6GGffndzRepEobByEb3chyz9nmtDiF1W1j3kEms4Ovdf8WD9SxtxwxSdJP140n+FcU
	 vX4QLnD3mnU8C8ZUsjITPJTSirK6VAm8Twv3yfu9y+ee840Bos80XacWrZna0kLmFf
	 IDhVKTSpiYGii+/VyjxGrjcriGMWwtcRgAnIj6IjxZVwddWoTBjCRdjqC383x30LEb
	 J8hzglB/x2XIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A560D49791
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173309975362.21898.12727916040816331948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34b853a62b6ece1a8d37e0a24e5c85cada5a4ad5481967742cf33ea865dfbf44
Date: Mon, 02 Dec 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733099753
