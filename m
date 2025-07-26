Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BAA8635D
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753550394; cv=none; b=tfoTUn986a5x7WvwMPV9rdNxDDhbUQ0Hpn9P/wbfrF//m//hfkeU3wwWcGh0qcoWWM+icjixu/MnGOf7+wFgewW4tZtLkYupzRnTRpGTJ2Z3ahaXnqRQkEgJQBSPFqqG93MzEobWm0dtbKBG/W2CUTE50WurA+HdwN3biWIUNkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753550394; c=relaxed/simple;
	bh=Gm5QvEjqqNf8NvM3W3ZXJY4/q//PeqzNPL1VYY81dU8=;
	h=To:Subject:From:Message-Id:Date; b=JWb9TE50M2z8CwveME9pEtihUd3+seIsGNjs1lmw1mzT1YyTpBrV/jM4QLLX+8kE1AanT1Dy7i5PzM+dKBCbsC2sZwo4Xo35ybsxPQ7UnoEI42/PvHSNmhRkKojIXmZfKVIzQA5UHKzXjOX+ddQNbfYTrIHJplEnVp6yh9TDpqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p050LNYM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p050LNYM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F55C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753550393;
	bh=Gm5QvEjqqNf8NvM3W3ZXJY4/q//PeqzNPL1VYY81dU8=;
	h=To:Subject:From:Date:From;
	b=p050LNYMbeOSFfjq4K55jyrbHmyPlf6HgdvKP1iAnZwaIhNtbS1mjEFZvbgM8BUCf
	 hlvOf2/5/A9AjmVvnkhNaNUj8txtlTUgpIfsipLpfh241hApmM2TdWMrDrYUezPhty
	 ylqeHu4bYkVhzGih7LczWARFchqD3rDve91VHfHTBKzuv8O2RBxPztHr1m1up6/Bvm
	 7ejx2N6XwI/YWP4HmmHrRfbTwKp/zL0fhho15ovHWkggBGeRySuksZiKtJ/Lz4krFU
	 lHxMa1jhlmGgQYxUyjgEJN+9bjpsC2ee6peEadh43DVHHMJ4OcJ59EYg4qDDfpIE4T
	 3s/iIY4bpj/vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A70C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175355039357.29533.5068354840929050211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efac57ec8a6021c3ce118069cd5e75d1e9491cef669e92aea6c5f2f334897afb
Date: Sat, 26 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753550393
