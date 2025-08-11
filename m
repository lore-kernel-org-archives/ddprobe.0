Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAC87081F
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754938794; cv=none; b=GPj4r5yfnkgZ7PLg2ka6QE2sHSQtvjVpt9fpMtJHfq29ZsefEmt093EqrqhpI5HF5nI7h4ohWISVv4q3j/3MUItM16wDNCz1Ns2p9+eveiJ5+5WLcy1BtuXd/upwqjfj6tQxGkc8PVGqQpY34hYUYyn8PuvXayvP6ssEomPyJ80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754938794; c=relaxed/simple;
	bh=yLr0WBIratXvAKhla4Fdt6ER/7DT2nI4M+193eGHYn0=;
	h=To:Subject:From:Message-Id:Date; b=BFvW/h1noh+T/BoseSrP/H0INYK4PjziJU+K+APhXLLNzSEBck0BlW04w2AucFy5P/vtESg4wA94tdiLnCevZAjmfxt32k/CT2ef3IkGwOte9YMmPR1hmampeMSIpddDS0tiAf4myDXgpMAZOhc7S1LlL6czsLsP9z9yObKkfHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d+KE1IN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d+KE1IN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5BDFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754938793;
	bh=yLr0WBIratXvAKhla4Fdt6ER/7DT2nI4M+193eGHYn0=;
	h=To:Subject:From:Date:From;
	b=d+KE1IN5Ko95+2DsWUtV4C5nGHdIuyvepiteSKlWPMqtU6S6eP6YbBEOadiT8mRSi
	 69Ijq/dOkDMrEsuU2mq319AoPnMg3L1gUSn5Slahvhtbi791soZt1E93KYurRGLyHJ
	 gz8j75TBrS9CgfnrU6XRauenyWeRPH2OBrqaVjWryZAQvFJuF3b5PXAB8YYzj+jmsX
	 NnzU5tpdBZ9sGK2gADWkgzpxH4LLWpfkKm3ESk6dzqQaJk+ftNsP0LLVnAWl57jfjW
	 mOHwIgt85MZhoWlUiokyxmVBR772RQiPwqC3skrctS5PUdC8nkVX9ibbJot8lspZdH
	 vF/TFpUSPLYvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F60CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175493879357.12471.18139933654666494279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 420af4ad911483b71e296d1df8d0e353c417a1d15b17f5569af3b155581440d5
Date: Mon, 11 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754938793
