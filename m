Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7FB2459E5
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782480454; cv=none; b=Db9knmrOIjSHnwYFyokfPlCoGz0mqBk5j31Gb2vbx0cKv7i+b/xe97jV7OH9g1EhdTaXyXQAJPurZF6LlrIDSQmAdNTDHE+/wj3NYRWKb8EhRcP3YFVNtAQxcMQCgAP7lvVWO5kwwk+LdVDwFEct+1LtnF1Qn8KKUlP+QwoTnCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782480454; c=relaxed/simple;
	bh=QljFOkn3UwCnZM9E+hyd6F3qCW6hy81zPOeFumuIkf8=;
	h=To:Subject:From:Message-Id:Date; b=InKI/33gGUL2sZ9txvK0r82CbHhmxHMi6x+3bT6VKn3ZAMVjeq+ZqdZBufcYqidR+ww93A7mC9yuaJoIagvn1+p27zLMgHSrb/Rq0ZZPulmhU91/96SOyosvfj2hleovZ2ve/lVgsRZzCKqhwP6YiuPn381lPYeTvMUCNG6lVcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uSMQVVco; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uSMQVVco"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D3CC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782480453;
	bh=QljFOkn3UwCnZM9E+hyd6F3qCW6hy81zPOeFumuIkf8=;
	h=To:Subject:From:Date:From;
	b=uSMQVVcoZS9H/wB30FNVX+mWjknbQW1b/VBDhs3n7/ShwMH4c1q3a+xTtkQUgv6Du
	 ymr96IN2XxcGWg8U74juQQqOIhyfMcwvcdx9Aj6avLfAv/j5R7wtmveq5v69BiOk//
	 hf1d7YWC+U5yuEcGDr68p2ZjPVjvtQ4NkEBPYyHjekANG5CRCG0NwZL02G1wCoMtAZ
	 eFrC6fUHKTAjG2YLHUVTcG1OIRxYU6jQ1PoZJBrnM/Weae9aPViEBa31PkhVbA4pC5
	 7+s5GzepC6fkZGpeZYp1TZIQDKtPyPpc8o8yZVes4SammuJJM6FHHoSw/NB812ZKSl
	 5vi61fYqPBYzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5085C43458
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 13:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248045372.24816.18365722514089804035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0478d444e75ccf216ebc4e415af96765357f5fa8ba6e9c0ead3ca87e34ca6987
Date: Fri, 26 Jun 2026 13:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782480453
