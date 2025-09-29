Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FD01D6BB
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759178994; cv=none; b=miQdTg1zFYkbFw60Nbsp5w/Tj62hZCTp6TGocRls18ZPMy2CExVK8ROcFL6Lr/mIBY2z6sdk/r0xZpmDkpBhOUY6c0y+nx/FL+uvBB2HQcDivUwTZlHRdCJanoqmKI9sGQ+mj/PwywUdPpd/mpP5mjuNt5OKA9P+BkFyBTKO+RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759178994; c=relaxed/simple;
	bh=tfa5kpenRUyVH86MC0RFVf7EA29H79ahb2u0SazLUS8=;
	h=To:Subject:From:Message-Id:Date; b=SMLDjtoOe/K+EROxL5muAR7YW0SAsad74lCF6jFLSa77y3mxdHdA0Cz0k2XnYbe3d2Ecux9mwCuYTnYqRM2/4usXPM91LsFXDcA5IpCGhETm/ESdiMT3zjUF4wePZySyLaknX/0IM186BwWbTub5YWNqOd0aDneEeoWt5UcSMZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyBxhIbH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyBxhIbH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25CEC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759178993;
	bh=tfa5kpenRUyVH86MC0RFVf7EA29H79ahb2u0SazLUS8=;
	h=To:Subject:From:Date:From;
	b=kyBxhIbHnjTCwlNDOi7k5tZyQttvK0IpFmC48rFNjRzKTpO70peLhWhJ7k4W3Eun4
	 KPfZ6V0NBcjOeu82sgHf8y/RMJmIKdLdGuTbhZTcoPL9PgHMpZfa6RjIq2BILRWQEl
	 9AQGwaWOpiTNdeRTLeNPHJSkj3JpX4ohghGjG6uIfSdTYdzaUofNRkeCeSzAiW8vwK
	 F2cuPtm3Chr3zXKo9uxZqSxYC2pDASSYpT2Hy2sADDzELbDlp25wGKUeRSKX0+pLj3
	 xOEZGW8AezOgxHixCnHrCeFgzWPoThSvg7xtmw3/0twotuf7qecof9ZLaOYeVwak24
	 NqEZ0K0ZygnbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98426CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175917899359.13104.14646651042473894906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4335b6c806eb5f9bded4af5ee1a3439880fa809e4539e0808563a0681e4d045d
Date: Mon, 29 Sep 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759178993
