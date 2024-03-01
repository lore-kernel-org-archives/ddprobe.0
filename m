Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E900F54273
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709332097; cv=none; b=szGBczUSZA9jtEKyv03f/wbWcNLzE95Meg4ClZsjbZTfVdAp+gl6vZRVxHX5eWsfE86R/92Zl9y1qm2P1s5sAaEOtMdTYbxbHNEGuBJ9RUhfiKs+PxSIgmJgmxDnFYdVAb/nUxpCCdohINgf8iqKxQo0uyjlMlkPo24BqpUMu4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709332097; c=relaxed/simple;
	bh=C2NJk6f/Xp9Gvk+yJB4rZ4YvvzvoRwp14VtAIddSa18=;
	h=To:Subject:From:Message-Id:Date; b=P7oU3zhPD1b8NWJJyfIn/uEQbx6TzPb2pF3l3FgZ2DWVr0KFke70H63XC7CXOj4Wg4LWst6/9WQyWm7Al86v/5PsMB2fLQnsMtI0/RGmZzwsh/I1tWtAtXH0iRHH2KfEjxi8pDEY+G7xPQ9sazAlTXLQx4DP12SBsPeGFBWp9Bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBN2XF2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBN2XF2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F544C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709332096;
	bh=C2NJk6f/Xp9Gvk+yJB4rZ4YvvzvoRwp14VtAIddSa18=;
	h=To:Subject:From:Date:From;
	b=eBN2XF2QZh9bo2L5ChxDOUvg2vi+E5krJO//W7C0pN4yzIPmOM1RU0Wz7qvQM2vbq
	 QWVi1tkUhfTg5IjAUv8ll96QOrEwscWHCt4NWsWfqGgb1NFnW2x8EAHKuSFnWi3hAi
	 Zt5r/lWVkmKjHDlIhtStEp+uBJFgEb9NjC4C2ybFn59tvnG8NGQZ2Gv4C0I079fsTD
	 ylzbC2Jz02uENLth24tbL6CQPswn9RaoqXqAnUt4NFJZzut4i5NDI6Cb5QuTuEyfTB
	 ftxViAaYUBy/4qjoLuXDGNJ+OGAU3FaWbxQ7i3+Xl55wDkR4zSzti4ML+jS2pl24xV
	 hC47tELz2Iryg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60E93C5478C
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170933209636.22735.921056065538749442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e6ce4f0af80965bc0055471bdb82d3d387c76fb3d4a96120ed7f3393bd6f9f1
Date: Fri, 01 Mar 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709332096
