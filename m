Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52F4477E2F
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772225094; cv=none; b=PlhxsNYOE3PgsaWMaYsZQBTxwUrN5bXzEs6W7C3UfWPPgSKZKcU2+EMdMQN/wY8FtDtBQhQpCzZOGsDeBavElTQ/TCtz4WD7/tqeXoKmjczdin7FyoyeHyP1lcxv7HM1lRJBOrBnnA7UC6cLqjryDCiCXdIyWQA+S5XPOS+MAiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772225094; c=relaxed/simple;
	bh=MvcMnnT9s96eHHy6JKIGlnwej0N5jD7hqoEzHCiPJBY=;
	h=To:Subject:From:Message-Id:Date; b=qVtsg0eON+lnxO7zY96gi06V81RchC8QveJIv7VeWmMNpCRChn3TJeKuYMjWxf8i9U8kGQAeNePosd+TC6P/KkHbhf3tsMsyoDQ5dne7Mkk+9jtzYnByj3WCfLYUXUL6TlCN3riSvYSsIE3hFTcbfiQRUw2SD/Ok8CwriO1PyaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVNYKRzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVNYKRzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A0FC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772225093;
	bh=MvcMnnT9s96eHHy6JKIGlnwej0N5jD7hqoEzHCiPJBY=;
	h=To:Subject:From:Date:From;
	b=gVNYKRzcQcyFeYg0fsqm52q+tu+ixT1U0rj3DZXJ8Tv6L3WzwKxfdAKTWx4jcwHJ0
	 jUt4vB018Mgq/3Y3Y+vGBRGoCswS2L4RQq/92vginYPddxjWjHFeQLE1wP2LAy6v0u
	 ZZ5SMlwXavq/BiT4N2geZ5iFvqV6aM7wZvKDXUHKzMYgbpPVqq9EOwoeL5KbqzV4UV
	 i24jqcPybasxGhqJsyp+fxZ0EYpi89KNl+o4Tj9SCCpfaVq3+Ekwvu3gNUAPBhEogV
	 dt4GdPaKNSWbqTw3uZG7iDMnX0OP5pVx8ojBgvDoqxUO//xyv+qRrep9MaUCLn454N
	 b7u3qrsyFjRNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D50FEFB51
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222509358.20890.16338106140911289608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17f9ad3e4a0a84461faf88c1d5d209eccb8bda9a29b059adc1bae0244661924d
Date: Fri, 27 Feb 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772225093
