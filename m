Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC613C872F
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775831854; cv=none; b=VlRgQxxbLyiecXGIgZrRw1drTGjFcQPpTSAJU5b76croYV/VkJM6A+hkaNVFUsQnmDsRr+jMOwynh3cx5t0IfLXIbs+M86dQTlmgLRW83ic8jiyLuwAyQYkWg34Z98+tYhlUFbdyw5bEtOVJiO66DGyQmmTBc0YyjcW0YjYrqwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775831854; c=relaxed/simple;
	bh=ZiGtDBZL3zH3fgySziVVZ6A3x1X9DSMWREzJJB8bg1A=;
	h=To:Subject:From:Message-Id:Date; b=q8vgvyQnb6zjUSqspn0V51QJilbutIy90LvGzvTGKpoYvD0VWkKE5eyBCjpyEiURojV7fzphgFAiiR7+KE1oC8hC6UgNwpzvhjUE0O71jiU/cURCv/VYCxtfvXxYZRhY2eUMaIO8DkHhwOoFaVXzRJmz/wk5KT2JAfyCUryzqmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuxuIxaI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuxuIxaI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D76C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775831853;
	bh=ZiGtDBZL3zH3fgySziVVZ6A3x1X9DSMWREzJJB8bg1A=;
	h=To:Subject:From:Date:From;
	b=uuxuIxaIFC1Kb5ExEH6lLpAZi7Nz3n+WZHM4OC6+0rtHNpEDzs7M7ksypBeiEWqpe
	 A8MtyWE9Q8wW6rVuCAZhXuodNOktYpT4yEeBGDoBh4ha5K+mrWXjoJFYFEL6eKPJIc
	 MZaEKe41bLbTAC5EC7NQjYuHm5A5fS7S2bBYROXy4H1YCtLUkZqRi1QUcF2exxWkAR
	 ShhWJMv1E1IKHAuLN8M9SxCN50YpXQ4K/9irfol/C7Hu0dlk9IoHc8FyCR0OxzipZg
	 3FPg+Ne2usBxXoFJcLNKttCTYxnAQP3ebf2y84go8nzrcrwiQw1CiqsrkUG+i5HP3s
	 Ya6aLse5vVMIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB45AF44872
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583185369.13026.3648102803406110100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41eea2c1cc6165976545f5358a04945030a262bcfd00f326622e5aa20757a4a8
Date: Fri, 10 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775831853
