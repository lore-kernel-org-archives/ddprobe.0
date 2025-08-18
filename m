Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39B832C235C
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755526794; cv=none; b=CggxJHLr7r5VdeqHhQygJ4YVoKVhvy2ZoW+Uj1ipeGNvlGSLibwPeU17pR8P7o/lrIu1AmxqN3BUBErzojeHhWLIqGg/lzCczBtc0uBuTVYLNXpXYuIS1WCRcPzry9+h/Suuma/V8ji9cZLUvc/FGll67kgfbVHPLk+ECYh48w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755526794; c=relaxed/simple;
	bh=dkXNpw7J+syd2DknSAfGKvzuF3g0T5ly34TJPDs7DKk=;
	h=To:Subject:From:Message-Id:Date; b=BCrUTy+30OTDTo9uLkNcrcRuEBvqqqKeX9vOIDTXROJeSDBp7zHXJUwtzOE7hC4DUyDZOEVYQh4XJfgjs5sOfgwX8GLTH/pYAQyfEnvzmaUglPP/wpgNQbNUh9uBc/jXBZD1pCVuG+1T2vFSiKbMcceFL0ObFFZvYjMfh3b5ok4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHjQSF6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHjQSF6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A702CC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755526793;
	bh=dkXNpw7J+syd2DknSAfGKvzuF3g0T5ly34TJPDs7DKk=;
	h=To:Subject:From:Date:From;
	b=IHjQSF6VxFSbJQOP5rMMdem4K4aGwmaQndfBUz3PmgjT8ezD3lqvWZT7fFa1ir3cZ
	 r9Z9fQaOUlRLu8pp4EEHiecugxtd6z3rAs8ey9EJZ14Ac1cBLukCc5eMjbI6JrjXgR
	 U3CQ9fXZjoecbZ2WCIWXmlhU78KADPnp9Jy4ttpjaAabEjs83U+pgfkB9nD7ROuYOS
	 eee0eCfFQeHu9l+KLhGSd0yRVL2PzAviJc9MQzsTw1udkcRPlbC+84jjdfT7bTFa9q
	 QnC6Z+GgszipMQRDjjtrEVAW1KbLGP+eFLZqUOzCWxiIYYqTIPKU6GJRGAO3+leRuL
	 /Pn8LSLQ5VEOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9848DCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552679359.16314.13917727920586396005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4e22973eeaafe809c4b5eb32311ed5e3bd0fa0606f19ad3b5849af49040805
Date: Mon, 18 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755526793
