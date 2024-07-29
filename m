Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53FD1EB2C
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722239753; cv=none; b=JCPDAK0V2d6KvAOlz9ikU+l+0WQJncYGSCQ5diGa2fmrcb8h94Hkixxl7oJkDEjPQhon6kDzrRUFApcw6Sv2ZJe80YZA3dnqiaW6sQGq641Gla1oJaHuKp84e1Fq+TkUS0kCuMnhPoS99JgOdZt4WQv0bOGN6xbz816Djp9Lb7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722239753; c=relaxed/simple;
	bh=Vkp85tvVa2QdBL8eIysWbHfhvSZWxYUafKRNzbZKI1w=;
	h=To:Subject:From:Message-Id:Date; b=XZDd60QTHDJ9BKAqI9GzY687zpV/r/xEcBSeqLcqg4GLKY2eboSrJiHNzuyf85l/RIqGfcx/dVjFq3KNLGBA+i2yfZwkotcr3Zpboy8bXJ18wKPUPPPo89hPLPdglGT76Kj092KijpI2+0Uwojna/ZrKtQRc5eCjGtLVy0ZAGao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiCMX3LQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiCMX3LQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A410EC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722239753;
	bh=Vkp85tvVa2QdBL8eIysWbHfhvSZWxYUafKRNzbZKI1w=;
	h=To:Subject:From:Date:From;
	b=HiCMX3LQRwY/E5Cqd7nXUHhdl5d8BZzgSOWpQdLP1a9W1fSzSoJpf1gsT99NYyeO5
	 aDAfBhuEvSFGQpr8se9rW2KswZtTxgGRGL5FH9WS7nKrcI0qRYUWh3ix0R8g+6Ci9q
	 3x50JS8CyQ71vzC0HlgnjAQaYF+wUbgANt1LWREnOgE7Niwld7FdVpbca5HpXb1BjB
	 oFx95RtLpCyFmSS8s/UJV5NP3xvCYh/BUv6x6K1IK3KGsWOWSUuE4bDp6wZGtjdEsL
	 rLU5fsPpEQrUFiGbMwGSf+TfX6DuZabzuzT9D4pXdwvGSXv7ufSfvaJH35j8XPWg37
	 dfMWLZNGllJxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DF3C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172223975358.15918.7774946289944459899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f79c41c70003432fd2f81a29696c9c8c5e02ad7e128fb1f5ad97c2904026623
Date: Mon, 29 Jul 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722239753
