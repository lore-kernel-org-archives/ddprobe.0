Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11ABB3009E2
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765344174; cv=none; b=pEwiZnqWYV2fuTxNyJ7zxLRJG30LRYo3vCX44a7QTUazSsZWkyVf+gh+vodcQ22yLfikjyRXgmcTEZ8amjmA04CIWcXxdza+favXif+4WyEdE+qHzFO7yERqigHkIFR5vEIdiDleFaorlJa11NKeIxDolEnG1cVnLW2cjdSEc2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765344174; c=relaxed/simple;
	bh=f/yPg9DeZoezD4MZOVCJMiYaFBusVL+AxpzTEepdnJ0=;
	h=To:Subject:From:Message-Id:Date; b=HQZwPdacMhVePGrATa+ojjtcOAwrNFtduee//9l4L+j0re4SXBM71wieiH76TWn2sDhv+RO5uEk8zSRLj9E6Glz0IA0QaqsFTwYRehryGqtT3uJAQv4yWQjsMYcjQny0mLBsUnr24YmYe+b/JSjFKZ6bkeU7ktkHcDJDlYYmr4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oe48KOJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oe48KOJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF6EC116B1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765344173;
	bh=f/yPg9DeZoezD4MZOVCJMiYaFBusVL+AxpzTEepdnJ0=;
	h=To:Subject:From:Date:From;
	b=oe48KOJXKWJDKagqF5jM3f7kFAepTgwdXc1BYSlnneu92QMqVI8O15QM8+CxlzGwf
	 XzgxYqkyAaje0fAyWtt2s/9WBg6YekTpmcFyJSZRrnEfZ4KkTPUqzNCfjzqx/2GF2J
	 fCiWRceEqrisWFNeg0OPVn72XFUK4xU0uxkc/Ha4E4Zf5NXyXmXyg8D0uWdtBKUku2
	 mKxXNaLqCfPzHskfoFt+74POBN9xODdLsjuip2ztbajfFZV7K9J5/KIjBQxJMrC1aN
	 klqEeUtrJneOYl+MV+u54Y411d39D7QfOTGpOCErZIhR7mvSp5tcMG3Dw4lkKzkr66
	 bhrExE6H3z3IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 972FBD3B9A9
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534417359.4179.3992324162417426971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b7378ffe79e0c45a8fa20c89fd0976e607a277ccff2eaf558cc90dfc48843ac
Date: Wed, 10 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765344173
