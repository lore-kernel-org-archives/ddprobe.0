Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EDA079F2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750675194; cv=none; b=D7JPbcwDuyM1Gh3NrceA51nIkiT4pfBwk4vZYg9A2OYve3LI1wrKyod0hKzNnxQRAlUKtjRdXQTqlmmIIpfNdh62KyAKzHBN7w733A2GKFW3AQsc9llwcRDFkZ0tPqDBG6k1cyOPcpgwjSGee3auJCvV0CBz3zPAjZVskVi2bHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750675194; c=relaxed/simple;
	bh=P9wAYAknygC6T83dUpL7agpV3VSkIXAYM/YF7UDsMgY=;
	h=To:Subject:From:Message-Id:Date; b=mQXVmIZzF9ndouTJLgnLSMTz+jJu9cRn8iYCF+MbzUDbZp4DTOIzpr47U5QutF2RuPzmjA4wQGld4bo0fU13KEthsvd3IjCWUZI5amxS7kyHXW6lZK7Av7/NCGqBCshUgDo7jZxm8rR4dZkdAoZi/Ne9mxGzXza3OR0z0bBPYV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dvqy4c1a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dvqy4c1a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFC4C4CEF2
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750675193;
	bh=P9wAYAknygC6T83dUpL7agpV3VSkIXAYM/YF7UDsMgY=;
	h=To:Subject:From:Date:From;
	b=Dvqy4c1alzh0YHASvRMEYv8/6LEpxdZ2TTmLZ8hpltAKWYEIjKBsnAAAPoeNKoqQH
	 gWGdGb4otj9wTlCqK1fIQHsslVOb9vQQSicBIGBhf/KCetOrfsPf7jYkJzQvPzJh8+
	 virvS2dvO1VxCdoXa9ib7o4d5doPraTPugAFvTAu1dp/U6cGYU5aE5B+Tw5YmGr9bM
	 p/DKSySf2kU8yaSEnnGDlt/Iost0sIskkL0czTaUbKdCtzvOE+3wSclQhOdDUnS5Oo
	 sBS9BW6ZOwL7xiIsYyYP8/Lsbj79ozYalx/1QNPMJkyeEtxQxl8IaGMU9s2cc+R8Dy
	 rmu3TDZcygGww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6ABC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175067519357.2858.5845149600433798962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e4747635ed2b8cc363273ceac83f5c33ac02af9e6c214b825e00bbb43f9bc84
Date: Mon, 23 Jun 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750675193
