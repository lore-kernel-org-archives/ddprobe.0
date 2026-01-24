Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292C417A31E
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769250834; cv=none; b=E5qHEst/Jy72tAuEQzbYx5W3POuaz+K81thtIcXQD3g3DFoBDKXAdnkd26HJSRB9PrplQCfAcyERntVXdUlNs9+urXXqlgzC96KhgR/Ld5jupFEQ22UYgmbXJMXG8TWTf5ZiR50pxjlbDciq7j/NkMt0tL2ZdTkJA023xg8t/bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769250834; c=relaxed/simple;
	bh=vcpYc3YY4xWXLk0Xqdzmngc7uy8D3YzJaF6jbzGQSEU=;
	h=To:Subject:From:Message-Id:Date; b=L/BbquibCpr23Qtw4AGs/YCxcQmwpvyZ/iUhsqC51If572HiBlAz/4FWwo8mjWJOGM86Zxs5XWnfvr/sm/ozzLELwQXtiOLUKS4MWAb6pqkZWksKpAMV4QmkpGNH9d7VF0CsXiAp2UiyXDg+29xxEm1P+yHWZy7wRMYZmIvKlOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBxfoH6E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBxfoH6E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C45C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769250833;
	bh=vcpYc3YY4xWXLk0Xqdzmngc7uy8D3YzJaF6jbzGQSEU=;
	h=To:Subject:From:Date:From;
	b=JBxfoH6EPYk6bIk6NCOXuXSZU5RsJzX0YgpyNMW2X+ohtX1ikT5FFZ2hgbZkAi+L9
	 j/PlHTiQtJcv5l2pucXfpu/kKWLP2BrnTPKPYH9tZI4nuLwuVN0Quw0+uWAHV9rFR3
	 rOaE9e17Z1h1UaeJJRLg6RFJP79amQizxWv0Trpyhf6BXjWO2LYAR7BzBrlnN0LWxd
	 4p6xfXMqoEizbsQ7KN5cqXHCCE7G/c4iGQpyoevhWcJfg2stzdGAwAR+29gLZ/OQqu
	 kvA0mL8CTM/18tNYJGYc6H1QHfC5LMD2bvxOjxmAXl1RbDKD3dIiaQLcdtyo4BUn9I
	 AXLCCaVvFWw0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F66D715DE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176925083358.27378.4213615024325687195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07bd285bf54c0c1953730b184816b3da8d71a096e07ef7bd3ff277ed06b75d3f
Date: Sat, 24 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769250833
