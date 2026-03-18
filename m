Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EEC347BD1
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773860094; cv=none; b=sBb2q53kIMlQ0zvPc8owAVaQA6gEn6LRcZHJhWW3zLYxmEgYBwYQ87OMC5Es15AxC26E3jozr0epu15cenfwC8SI4dpt2nEmTGG7WGXHa1qkBSyxSnc+WEgxJ2PZPLlmjFApIBpHuBYGl97ot62nqAlzdu7Au4ruVqleIzztpb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773860094; c=relaxed/simple;
	bh=p0TZ90Twdv9OIU3d1qzR6IEhLH1k57TK+4aFNF5FcYg=;
	h=To:Subject:From:Message-Id:Date; b=p+nOhWnL3phzd4hWYGimqsvrSom9jnrq99R3+zMzlcqAvn/LCtWth35W4pQbGfKf4Pu65IM9L6Q85JsoM//ZQIO7INa0rdc/DOcvjtXosB0PVKMkMbEDGDho1rifXi6nkXBtx0LpTxxlClywANmtFBypDbEqsQ4dXib/gOsLdgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z4UteCae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z4UteCae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8B8C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773860093;
	bh=p0TZ90Twdv9OIU3d1qzR6IEhLH1k57TK+4aFNF5FcYg=;
	h=To:Subject:From:Date:From;
	b=Z4UteCaeS8UZvFVaz8CND7wjBFRAyRuueaK/yuQumgFqzLtSeDuABdnsJExYoKBsT
	 i9gFCbikNpDF/LOHuCkNAyqxT8ebekdzrK1BPtUdY2Z+c9JlUdXqK8tH6+odeWo7pf
	 fSE88H4UeYFqi6IUh/IIf9aC/1NOIgc7r/xHXWCdQ7JxgZjdCtFNHvdBfV/itWcS5M
	 6xmFqz7LE1ryDmWjEkm5g3N2gJRxlrn27XeDQjVvVfIilm8nJN0Czs++28aZTM+i/s
	 uQFeM08QoHfHk7evN205irjuhG0TWLDDaFP58CV2hvdWnsz2jS4pnCVqCDpk8C2km6
	 dy0lTyJPxAryw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F21077608
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386009357.20924.15586513147848750266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35721464019a0685cf7d5dae3133bc6785534b6975da63cc1b8e28608561b382
Date: Wed, 18 Mar 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773860093
