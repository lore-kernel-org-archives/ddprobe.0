Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4673729BDB1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782213394; cv=none; b=dXevrcuyPEXpRS/JSC8H+6eXZFTcBujlKfYr6uB0WOAE7nUqJIfd1ywLYktuEQd/7dGkecCd1dDqZZA+cncXHzkGi/1bVwR0vQ/M3zQGzRL7RGVuxR8ivcQDuGoVrm1+ltU93LdYQQKDous0G01WvF6f9pcLju0hsYaqbwCIj5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782213394; c=relaxed/simple;
	bh=Y/CDNWwiVtwpUzjoqADQyWt1EN3IOf/42WgMRC4N0n4=;
	h=To:Subject:From:Message-Id:Date; b=XxVsmzLvdlm7DnElm7pqp9rZRMXtAmbTx72x8l1EP1FCjKXDCpWX04Y3xnxhbv7B5Wk2+KxaP8s6wvvfX5CkLsw1DR9Y1P+W726exNhquZFGXerlSWJGLNl+ApH0olsXcCyBRjTsSuBaPrxK4+DGSQq6L1g1OCSh6DgeZLar86E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfwBHRa0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfwBHRa0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D3EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782213393;
	bh=Y/CDNWwiVtwpUzjoqADQyWt1EN3IOf/42WgMRC4N0n4=;
	h=To:Subject:From:Date:From;
	b=TfwBHRa00W+kdAMstubgUZeL/XKzkKuDjnn5P4VZgASbLSUoN1wow4FPl9+IXHHgo
	 xPWfTAvD2IsLwRMUSWauYQYRicwSRmAB0K0vrfcXSuXIP6AHMsc3lwEqB3RpDrker3
	 qF0ht2jLOeLWN11gC9eE15+9vVYxm9jFhndNJCx+fNsFmCjlqO1w/ZHXASKFdmySuq
	 +wlJ7jUzWJtFdBTxQGrTENLdBvFUTw5SRB9f6uz+L6a4Nf1q99YbA9A7h83FaHglAg
	 /ts/pWWhi2qFnPGvZWKwVF8OiwLj/immr776WpV6XuABVycw16zI85yLyY6yUO4NIv
	 Lto/PcbL1V0PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B70E8CD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221339373.5238.3937224423626274446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bf50eb1fa6422f6362ff9a309f144d3ad05858921bef9527ea84eef4d5ecac
Date: Tue, 23 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782213393
