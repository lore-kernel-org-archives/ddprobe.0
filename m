Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464BD21ADA4
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775306134; cv=none; b=U/c4jKxZghFQM1D8ULI7K7GgeHZhX8szCM0K/a/nCNi+JRrQ6nr4NBOl3ysAQH9Y14OkbBbdFVItieM8LrVjnEzKHu4SnsLiDWD9+5wSx8Qsr2kxSxthMcn9qwwp3Ry0Q0xTrjBClHTz6lovvbUWotq8urLgEUxjRQHhsS1DHGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775306134; c=relaxed/simple;
	bh=8rX3BCTlQJ0peoB6FjGdxwNL3alolHVGBeO0PXzoRsM=;
	h=To:Subject:From:Message-Id:Date; b=sJsf0VJxTEX9k9mF1Iz6fSgNVimKfZytET/qkAB9gO0nmpEQ8d/556+o/WMPAQDiUC9tuSCRjoSC/YPctK9Gt4WB7qz7fskdibo+xgY1Ya/TpJreuBWSApsuPlpC/L89EvYvX7gGMVV04RVEerHsxyNHRxhrxmrfQUQYC/LkBCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwXl8kAj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwXl8kAj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37C6C19421
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775306133;
	bh=8rX3BCTlQJ0peoB6FjGdxwNL3alolHVGBeO0PXzoRsM=;
	h=To:Subject:From:Date:From;
	b=XwXl8kAj7ZB500YxrbW4LBYZ0z0vIW6Xtxsfh90FnTy/zx25E+cgc8Lp0ZLpal1+D
	 KSwH4/UExul/ju8Js166Tc0DrahS6czDYoo8m/QhT4JahZ5R6avR0al5R5rAy6yoHu
	 aZWq1QByh1Y1SWXrgKwkNzJchgH0EDXf9WBVvzB4/dMkZSG9IJS0tElsnYzeDJqzTJ
	 fGC7DVAdht7Bfe8BrSTekRT0+wZh2UYCBCuCBDscSzSvV2Q4M0JZUA0sxg8KG95fII
	 Opw1c88nYxINRpqYbc8sonBOn+4aLJFfNnI56/g+h88SGIpVWdSR27FTKYYE/thaKN
	 d6ChyAKJpemeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9FCE88D8B
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 12:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177530613368.10955.6739639181500961720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a930a45fb52a04a86b62ee64cb7ee45e6f694b16ced01d522ea91785020fdaab
Date: Sat, 04 Apr 2026 12:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775306133
