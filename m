Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F778F45
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717509383; cv=none; b=icK4PRCQbrgb90jQggcQCbEWlr7SOkWrr7YYUXZwDhGr4+M0k0Pjj+x0eiVBdX1vhdSjqj+yO7xheTMGMmYA2QGROghWkFALA2yap8SUgIkg28imgL8rtea0pU7B+PorMyiJd+SZ3KynrjmaTKaMGgzNCZWrsYWk1cQqKFmMZUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717509383; c=relaxed/simple;
	bh=4AMKo5cq5Qvp/GXsztZ6WAeLuw1lDJPRm6duZVAZNTo=;
	h=To:Subject:From:Message-Id:Date; b=jFf7LstscEnU3jVhtB1uQQxS56F4IZK91v1fNbzdzdRJaKJ5VcUzGd1NdLCoJm+0+Bm/R7LkuJ79hpVXg4l/HwApKAfAXCJ8397ZQddhyC+qqGz454M8QpiY3faiuIN/l5qOyjG7tE4nujPuOF0ZKM1djhWbYrGusFm7Fdt9Mqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HzWBNf73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HzWBNf73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD3ADC32786
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717509382;
	bh=4AMKo5cq5Qvp/GXsztZ6WAeLuw1lDJPRm6duZVAZNTo=;
	h=To:Subject:From:Date:From;
	b=HzWBNf73HCSRJ6I89kl/5iWN9of6n3A/PpWwOllZJ7fTlDXj6Sv3GbWPgA//1Xb+n
	 UOQ55UlxxAAK5f3qJvgcjOgeQ7+C3Is0aaf35wfCru4pTmK0UuLGq0sQzGXiGzk39G
	 +HWXLXs2F5O9YcCOqjfjeR6iMIqRvtfz5Ir66KiDSWTx+OC9jR5KRaq7NfB7rf+ltS
	 0GDMKfN8t4jP9g6T0nKctb6DR7C3xmHfUawJJfBLCBLBg/oJ5U9ztx9agw9ZzEtAFV
	 NU9JX728L26z/Vebl1VSENoI8i7Ngl/hMSN+dzrxFuPYUuwqoTwBG+TborIgaR8Aa4
	 EH03RtwAXDdgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAA68C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 13:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750938282.1869.10999186898779983164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbb23705331333b78a34a1b7ca76db66a86c8dcbf77b13ff34b4968c805944de
Date: Tue, 04 Jun 2024 13:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717509382
