Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E353347FC4
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763462514; cv=none; b=F1iLhwOwvI13aPahsYE2fnBO2JYe6x/vcMT2VslXvC1dXHQ7CUA4MNYkb2XdF8MTIbKNBebK9CYvvSXBmQcltnpisG+c2VND01l2KJrQNlgPgzjdd2U2jBWayovw7zB+P5eRnKGl+7EYSkOHj4BTuq1fInnvjhiO1Pmu7dICx5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763462514; c=relaxed/simple;
	bh=9sa7Iy8IoT4mrlfbOeyxGwvHKKlvqgzl11Tnih8zSeo=;
	h=To:Subject:From:Message-Id:Date; b=ALW8vKEVMUbIQUELyV3w+PBkGkZwQtE8X89z+XUhJnT2ZVFxhQogGAUAi7Dm0+gZSZRjY/F3qCFQeR/LyX3VZefs5xt01I7JSPYR7HoyFG56d5ru5/Xoyxg6vjrJjrmwMmYBtFvBUQYvbXGpd/2oWI2Z6Cskgzw9zj3Rj1PrgWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a0eZleZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a0eZleZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7D96C4AF11
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763462513;
	bh=9sa7Iy8IoT4mrlfbOeyxGwvHKKlvqgzl11Tnih8zSeo=;
	h=To:Subject:From:Date:From;
	b=a0eZleZij1iVkKdcrFUXPq/Te+0xMygeWzNV1nSKlXvsy9qpcn2QSgBUgfKiOEhjl
	 odqCejddMadSYudmF7q+YyeCTpcnuUHhQCeIn1+6RkBpo2OkKphfoNFWy+OX8JaY3+
	 d0Wtaxfz4vB9ZwEXhtQvCcuwwMTaLwbuL0V3jdSYHiD00TrFlfQA0h78FFx9cpMHGv
	 zSwfO0nFzpUvxyF8GF+WTxM0G/SOJchxTx0Nt4tq1UQPNZ3WpYMThDG3w+JKR9AQVL
	 ER8UmkiKyyebYkQ1eUnoX+cml6Cw3IEiH7EIeAVEaCiIdVBWE+6yI8jP6wGryYIh9j
	 c7RJpTEYdJOIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9463FCED279
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 10:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176346251359.13528.7412222460582175543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16ce56e74215fd8659d933d44a02e62b2f04f8291530b73bcf11548aa5c23ca
Date: Tue, 18 Nov 2025 10:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763462513
