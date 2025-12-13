Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2385A30C62F
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765669374; cv=none; b=SFGOMcN4RZa+3GN/N/SfxOPx7B3zsofoiEZ3iLgkYcD3PO74afngm3eHWbSdXbTlwulwqdLjeSYHd3+u1QgwjXrZhKJXCGRQBiz1QS5rgiKMuc3QShzJREgxTPDt0afUci7qvMvZaaseChy/m54KgIi8uKJmbqnyGqtMFMTPxps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765669374; c=relaxed/simple;
	bh=lkY3JmgcmtrCJSOrAKLj0pIa24C0n4ypk3BrKf7+qIU=;
	h=To:Subject:From:Message-Id:Date; b=DnnSxXnpJ0Cbju2aGTFyxbe/601ZCwneneCqwd8LEve9ThnWo7aL+lRCO5YFs8Js7LEblD8fI04S1584Y30Q9rXyBbTdAY/Abjnu/bCWUmqqugqhctJLmXKpqeFtZ5+7cONMhxVscKjo7NT+L44ZxHtrtUh74j7+9r+MzYrPBVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRRGjRTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRRGjRTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD3C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765669373;
	bh=lkY3JmgcmtrCJSOrAKLj0pIa24C0n4ypk3BrKf7+qIU=;
	h=To:Subject:From:Date:From;
	b=HRRGjRTA9Phj4uvoQmLmmir02RTAo/OaSGp02ikdFkhGipGHhKEMKLku3krVb8PHi
	 2dGhw6UfD7C9H0qi3b/+XIZJCykpiUPuk9o/1ZR3Wr2HIwxRy1k7SnYdFprUfV3Gsz
	 BZDFokmeCOr3wV1mELX6w2jIdXzI2AhaPlm3ZSJqfi9wliANtTxQlc5iMac/J5OCL1
	 xd6QroJVZMXJh3drTHVLPtGHjYLBobsIAMiuUpN4cXPKQr8buQgawWnlitCZNHSZj7
	 fggWvVABPUTaFR+J83p2AH8uJYnItJu0YlxCEENrnIz79Ga3i8rUkyvc+yXQQQkqEs
	 QePmbmVd6Yviw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92710D5B161
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 23:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566937359.3600.13138877222126558771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa5cd757a40cfbf94abcf531c02fb5c84c8b54f62d971b297d5809f22dc0ffd
Date: Sat, 13 Dec 2025 23:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765669373
