Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3435D17B506
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777177654; cv=none; b=imywA9EFN0nUwaYUyK+ljp1ni9oPX9aYVNsMi8paEM1VCXscUJzA3BSzgvDcifjXIh4cyOUeTrS391OFHwDaFPm5YKDkdTtyT0Y+gNamLhxCNbtzURXSxtJRqfaHoxpt7YBYVPriD+NieFjeLh9h4iyYpOe4c4itlJWhn8t/ZKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777177654; c=relaxed/simple;
	bh=sOhlQMHNSv9uV1WDKpnOcV9m+2LQ9JjxrAAPwwHrxkU=;
	h=To:Subject:From:Message-Id:Date; b=POkkzg8y5sI99BgDjOUJm1NAow9xRs/9zxyETUXebYHJn8mfE4mUGaDy0SEgBO7H1qHKYkej8d6oEMjBGmZ3Xj9pTQJX/LybnePnsq5RitsZsq4/FPWUpEyEeb/HYSOsVKdhDVxjqGJa7yILnIxGvoZnmFJecwaHHzoqCVU082w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z77vVdL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z77vVdL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2C62C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777177653;
	bh=sOhlQMHNSv9uV1WDKpnOcV9m+2LQ9JjxrAAPwwHrxkU=;
	h=To:Subject:From:Date:From;
	b=Z77vVdL26uhBtNZIczKMfiTW9G3h7rXOzcYx4WAC+3QIhtS9T2/wbYTCI1qsjXpJf
	 wULr4jMVYBsDtlMwtYNoGygBOzG3qKUrmt5egagIP0yaWZmzjPqMpiPMZpq3uu0Vmd
	 cbQTMZcj1BJF2i0jQWZASyv99ohbm38Wg4P8mqnFi86w54wBg8yrHNDAGdEtVjhzh4
	 Caik/zzZbAF9HyA8icPRWRr25dMtCtY5EvHVFuH8guIjU7di4VN0Hpbmp9BBqZWf3G
	 GhPEcwA5OFl4qvKtTbRVOiWjNCONAzErL6pPblEyx3YNmoWEHnSfyBcGmEMcE3goEH
	 +rStVHAjrklkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B12E6FF8867
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717765368.16517.9184520405327024475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1ffbd3299a09ea1a7bb3561c081a6ef81c800e7891e5575a7bb983d3a3c52ed
Date: Sun, 26 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777177653
