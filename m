Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 279D92DECD8
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754990994; cv=none; b=irUfMVNK25sLi7L6z4bcPgF46y+KNugsgHg0KhOQdLqM+Puk2Eieki9kpZ/0t4UryZV1Ok19XgLAUK0EQyYM32/6nXXiv3dG0Z5VIysCwWytgZrZJxTzYGqgxsPnGdS9CucNrByiRGaEhW3tcvmRwSJGYMcfoxnwAu/mQcwY93k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754990994; c=relaxed/simple;
	bh=nU3tfMNAhLnxNJFPbs2YzteUQ5b62t9KJX2POzN9zyo=;
	h=To:Subject:From:Message-Id:Date; b=QwVHoAXzp8R+bjkZpk8HObOnVKSFT8fliFwxymPe7+WnjIGSYlvtu4NIRJTA+MCVHenVdGxvfghDrLt9KttPLg+WCf/gnD5GzkF2p2Hf031hJVmgU1drl67Xoc6bXV7snJtJMeMnMwDrxsRl7ZZwhLHB6QPuMLPApJf+hgB/Qt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjtapuVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjtapuVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CE0C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754990993;
	bh=nU3tfMNAhLnxNJFPbs2YzteUQ5b62t9KJX2POzN9zyo=;
	h=To:Subject:From:Date:From;
	b=jjtapuVNLC3BrQpt5GjyPJ2KM77QMqWq2W9B6+0KEcrlZKNB0ZavomPqJnl/2WPDr
	 okTeIG1qnoL8OE0QlS0QvxbnWyUPzFf1JrnudPV9Ic99D1ymN3ymEsnqbEfMoveFpj
	 R/UAxjKU8Iw47Bej84Rthu0wu/WxTA0iTSPPJnKf2A28+7JLC3qiKw7taKruaeMuKV
	 KR16MWQI9WMSRX9qRXtkp7SGDc8PgYxXJfxWEXZoGlAoYDnLXlw4akUEudYcxwDVEu
	 dKnuRBbH03LCdVSmGIh/KGDH9cURqSFZfPyk/R552biPyuzHrWaKj38Omp1tB1e1Ls
	 RXvwa5XayBrlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA7CC87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499099357.17776.11011852718571386591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d498be0a666842930580fb829662b39b4ee4c0a3f2d00bfa6fc7f678922fd185
Date: Tue, 12 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754990993
