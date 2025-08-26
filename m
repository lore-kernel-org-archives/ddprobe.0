Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7DB2F49F2
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756238994; cv=none; b=aM2zCnmNhsviGuL50zchtDN7rWCJ/zg7fqE2vfl6eu6WihuzXYCAopeqXomFUb9woKith3vI1BD49PwTlsFOGFg1d8ERia6rrKGKELvof8UYrgvQS09a0zMu/rOJOBhqyK/r2BRB3vYHnA0iwXfOI09cfmsKzElYi6SsfSVAIbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756238994; c=relaxed/simple;
	bh=1+YAGRhIpRCg1C9gy5ifOJa8oOhF9AXmh757AbX9+Hs=;
	h=To:Subject:From:Message-Id:Date; b=evWYQlZxWCIE8dB63AanIjWUgdN4Bc93tCRfiqIm6is2g8lTLDY0P8afv/EHMz+2fRM3uDwil2motg8cNl34LffKW32qw+bqq2lY9nXDSMKeWqO1reUiodJIWYjIWnGUym8S/M0H5pqojsSWoxqnq3Vg5C0GsbQclkx/CQ7H+J0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTwAFwjg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTwAFwjg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756238993;
	bh=1+YAGRhIpRCg1C9gy5ifOJa8oOhF9AXmh757AbX9+Hs=;
	h=To:Subject:From:Date:From;
	b=GTwAFwjg1v0n4UIc6cLejPreduFXJMn+rebDlAMNR4A09StxtTgMgxbck5IjH19h4
	 da6Qt+89/dbfqspqPNnk+VSUpVR7ScAYhccsI8rJTgH15IMWeOdojB2Kz4zNLWSzyT
	 mpBq2oiaa8gaICXqVc7V06790/aT9QTi+ROsHspiJT7IRnxmNRaoNAP9CuGEd2aZBd
	 fogfWUYiUqR4xQ2aSLAsZiNeSijElABjwOWfgSq/JwLFjKDRwuWV78qQ8l7/VuF8XN
	 J5jg5Bij0Vps/rp2XjMHgRNYJmuh6jNdRUxilWgYtT6VTWn5ZdZNzDmyJ2jTpz5mqv
	 XKzYz+It3byDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941F8CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175623899357.19916.5557190330855623415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656a97b3e2ee6774343595d87e3611b06f3a735ef7c40738a88e2d0720e03953
Date: Tue, 26 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756238993
