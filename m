Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF6050276
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779647554; cv=none; b=iLNlBgMwIH0ALCrw5e70I0y8y4BvVnI0fceNm3wcpzrU9s3ezxmN9tVfatK9XXl4m8Ep0gydD7Y7ZvzGeJFQD7WL/TBoQzvF+K/I9ztMcm+TMab/96RG7/geYqcopoaRQx3J9aDX/aAIgYeyIKWmBLCClKSt0jqjPaLtWFlCQRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779647554; c=relaxed/simple;
	bh=6UajzhaB4/ViIbJGwQYC7dq2bp7VBcz8qdcXyt9Ojv4=;
	h=To:Subject:From:Message-Id:Date; b=u5JI1OqxBiADK1UeychF18Co0opvIlT0dGK0i8Z5rUz9wYzH9nxdjcJ1VAb8Fq9AAVXcXx/Jq5xX5+ISvOemIHTx/6NNdmcp8nBJTi6W9xP4MXTNPKUrBYMFNcYbMAabN5XaR0PA4cJotOVuQ3FHhPd5mnLdYlW0H4ytK4G9Oj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6LmcEPg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6LmcEPg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE0FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779647553;
	bh=6UajzhaB4/ViIbJGwQYC7dq2bp7VBcz8qdcXyt9Ojv4=;
	h=To:Subject:From:Date:From;
	b=B6LmcEPgQ5r6ef8XAwGe5R37fG071GKsorKdn5OJGnh3lsNIZn2vrB2UGRX9rtqNL
	 BWgChJXIUNoz+Ckstf1usoTfaZwxnCxNu1hs8C7qzJC/hgTgPsQp5XcLri6/MHXjYm
	 fwCJ2pkIYjhwWuzUUGQmndDzn/hma3uMOm3DX9XJrkcbSw48zjbSZoU76IrxmJi91z
	 g4J5eQgAeBNfOq7/oeD94lWQOK0j+AkY5CHzN57YYAr+4ZAsmTXWz6E8MdZsLy9sbO
	 pvmcNXg1aMY5O+B/4NdlW93chKG0Q9c3PpROu49BBeaqmB2Zqd1WL0pAtRl5iO0Tmy
	 +YMCxmpugLcjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1850CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 18:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964755369.9800.3442088827649585267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53d622b7aa0b092fdbe43606e33f1819a063d2dd3a1ba5b5c8470ca87c839645
Date: Sun, 24 May 2026 18:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779647553
