Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4BE347506
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786538434; cv=none; b=KoMq5Lw71nobcJvosPL5xd/xWq4Y5KaCRfiLI9Eu8c2+V9cWv7GU3kBAY8adiTICcJBV1v+dr7UErvKAh2lIvSy7HjuLEIMlcbm3TQiCY/JQEDUdWG4nlMKI2GG7cl8lEiu5J6qI/reupco+zbrcS9nL3Ht5n0HYmCL//esv/fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786538434; c=relaxed/simple;
	bh=6WM6S8tjQZSMkSeMTRg5hB6xF/shFZtRr2eSQcnHiEE=;
	h=To:Subject:From:Message-Id:Date; b=fGjtTjA2GsRaea7xNARx2LUGF1+lflEI7MQ+sq5gSmRtXrShoKhbVgQxyTTA+sr5L9vU5bqcA5fxMdwe6CiRLsdWf/2MSTSNSxdvJQOA9qgblQodieEa9BMuA+AXYhE0m2Ms6b2SIrQjXL3soAUXSXFoGugyjTI8DCedA90KelU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iem3SvtY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iem3SvtY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC442C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786538433;
	bh=6WM6S8tjQZSMkSeMTRg5hB6xF/shFZtRr2eSQcnHiEE=;
	h=To:Subject:From:Date:From;
	b=iem3SvtYwqpwhjMVZl9yLjnYRsRTyDg2j8LYD9+bw3hnFRuFySTblWRl6faUQK+s/
	 6kCSAwF5fbm5dd6yxlN72/l7IEvVnLgp8n50bt1nRsrRIHuDlpsVtTwecvro8kRw9m
	 eH4FwQ2BzcvLhNODQ9NGjrjJaUi51LLTxPtYoNvufMyfpSYB3ebyZ2vuWZfYLT/ITh
	 kAp8WDSJd4OmNp2/ZkjRkqPmPoJssyrazcoIiUauUa1YbSGCUzqb63fInqVhW/Yvq7
	 OWEYrShuMda3M61PgR50T0kKCfWDzi4cA2XwBuQa0XvlUxYBLAzI5SpYRmJGQ01VcY
	 DzMG2gel95m6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B61C5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178653843368.26949.6759045253024042051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1326b47c26800abfb9e36113a4e49ee5433dae8fc5da347772f82a436e5e6055
Date: Wed, 12 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786538433
