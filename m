Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 294EE286D60
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758752394; cv=none; b=Jch5Yu0a2T4dj2aYZHQxaMaWBCOlfEwaG1tBnqHBFEMd/9EbOcUWIf+/iOmcEkHQYkAhqaCJIOngdPY9366QQQ50xb7GaTUKjQq1KQc6I8DeDa2+bZXGFG9DPmGZ5vJTTU0GSQI/pUBcP39jXEKaLUS5nHxLpwST4UNZSyrHSLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758752394; c=relaxed/simple;
	bh=UvGRcN8KvFvWTiVHMEbGBNYLSA8QaSBkY/7yyG8x2Ic=;
	h=To:Subject:From:Message-Id:Date; b=P93ydbmHQ2icOzUqWDhe6+f/dRkOU5873f4Ld5Ae4+jFdx9AXQ1WjhIwo//kdRXVtVWyKmE3DDZJP0rJQPjcNTQACDcnjxJkrCm7ZlOeHTO55gl0QDGxGyGT49yTBrXfA8YVC/KEJd4V8RgpoiKJrU0uxGB+nb5jsda3kXgeWq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0d06Fr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0d06Fr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1466C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758752393;
	bh=UvGRcN8KvFvWTiVHMEbGBNYLSA8QaSBkY/7yyG8x2Ic=;
	h=To:Subject:From:Date:From;
	b=G0d06Fr1/X3iGi8okbWw/Oa76GUyvVVKWgJhGExSaOnD368wPD8eMLGf5DQFNoT1w
	 UwoAhk0gc9qSDjepZcpQ0yeUpy0yiUd/Zety8uu11NVaMaqJcskEqLxnWsem+vszE3
	 TAJnMqAFO+dP2Pdp3sX4+6DEsprbwkGqRMhGHDIo3KT+wzzDDybQCYJPlsgVIMPvdi
	 so7kwAx0x3NxwkrEVUecPcWF7qc4pLSpNAEw2k0nNS5oyW0GE0tDi2q6a44AgbaRhr
	 NbKXKKCizp+0fo67NS3BvblAzY17tjbr0JN16xkDoE8Dg0gNt01tskEsTC+xBPghlw
	 6hJREmt7/5igA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92392CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875239358.11752.13281202281999280143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3680edb996a2463805b38abb5aabc9081a44bd158dc521e8d8fea6bde3177508
Date: Wed, 24 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758752393
