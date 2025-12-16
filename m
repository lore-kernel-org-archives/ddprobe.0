Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCEB2341648
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765884833; cv=none; b=sC+/xAJJcBetQ+lOJfjTbgSAFRz89mbtRuvvpkAoJoc8LeishmvpQUdAdPyGyY2VeGbZZFZKaTlCU7JF/udCRehgd0pJSjcKKJH06c4EadRQlw5TJGHW8LD9NCxYjBrI5zbiJtp423kCoWxP8BrUCwVFEpofYu1yErKfPMWINZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765884833; c=relaxed/simple;
	bh=Wfr3STklJmbN4Hm2Hn82q24zieR6Bj5iYa7sYq9jJ2g=;
	h=To:Subject:From:Message-Id:Date; b=Qk6BYQ7w5JMVEnqnQhiTTA7tmi+6zPoMkHmVDuNYHKFfWSDO0cP2imKyXwhe1PFQJjNNM5mrRWjPyXL4PhZm8+BxHdh3SUi9pSohBcHwzqbqmPgj4/hoJ7u/4A4LZUiUMLnA2Tl05kvTd++bCQkmZNgC1jgaG6aJ2mPCnwxBLUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DpW+riMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DpW+riMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39D2C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765884833;
	bh=Wfr3STklJmbN4Hm2Hn82q24zieR6Bj5iYa7sYq9jJ2g=;
	h=To:Subject:From:Date:From;
	b=DpW+riMjWRvU7dkAtrnWKr0M2WCgY3oHYzh9F25T79pQhBFy8wVZ/mh8YplpGw+L/
	 jBUFHRWKzto7aSJMrYa67jpey/c0qKvePSHAxPN5ziZnsvPz+3Uq2/QxHcQL5cHv3j
	 ofi5IVjnnyjn15nME55m2TdAuWRTCQ1RV94BEKUCNOV4wSHAbu7KTJl9fXG0xHR8lN
	 0lcN2TzZ73ipPdv+1VE95RFBl5IBKtJW8NKIBqKNo5H3/vj3kI/OBndCFrA3mKyZbh
	 lDVCpfDrsQusCHYJo7tjAK7WtJik5i7+MgyIA5mn2dlVGIYykWRTHTHPoMKPRybbFa
	 UnkfepHxW2MyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9275ED5E136
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176588483358.31412.15037823436960147050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8aceaa410cc6437d8c55417503651c17109bca2eed2e1d3569d6df7d6b46888
Date: Tue, 16 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765884833
