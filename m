Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5443D0934
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783668514; cv=none; b=NG/tW/XBbb2CcbyGDaWV1ZOjRWGu6RDJ9mg7MJMEQv8r4YNbSoLt/w8jJtQm/FTPon12K7W+rHAuGQ/BTPqCK3F+JW6ONUUU5BtWZS8RhPEKfEkD3ltHOoG7cqAadP6prpLQdWGBTCzcQmwEb35odFCf/7jUxx7ASKume05Szlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783668514; c=relaxed/simple;
	bh=dCbV/a77Agn34ZcDwSNVxmp4TtgMAn/QVFtrV+2KYOA=;
	h=To:Subject:From:Message-Id:Date; b=oZwzXouW2EE/CEUrlpdeoQkoQDhiEBpOKlWCaDund84IXxzfYUkm5pb2RPfU6QhRbgUHh3BCYuttuYPLJOuKRIqy+mUWA7NdeB3tWzPC6STMnRvi4gNP6FbDiryBDUtMd7GkC02O4dYh0SBeplebxoJFLCUHQKh5UOZ8P6zewt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3JykbZy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3JykbZy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0F3C2BCC9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783668513;
	bh=dCbV/a77Agn34ZcDwSNVxmp4TtgMAn/QVFtrV+2KYOA=;
	h=To:Subject:From:Date:From;
	b=u3JykbZyc9+oWrFGiE2SQf5EwN3Ne5v1+/aBNO6uVpgePl+0v+G/UPjSGUYAotyB5
	 S4ofmWF5sLCr3LPpbF5l/ZeleJwmiH/Z1cqJ8CtmFo/kvYgXIM+ShE2z1HifLUmCbI
	 TTYWpwFPoFdH7oiz3lHpwnkQO4apFXynfTtHu5S2UYRABGa4ze+HEnrE3nljf9pu02
	 jh0Bvfzo3xOk19hDUjdwiEPmSACV4QFjHtLbwNb7YvW8rN/Vsgqpn0U/Pm8YUJj9ZN
	 qAeJIQFDjH97qsSLKVu/87SZnPLd84uPug3Y4ShAfYsONzzNomLnRAfyXGARi7nLuE
	 nOU4R/722SZ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88BFC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366851368.10975.8686735085774276369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f4393ae76665bf16c44de88bbd37b04b39630b26e2e8037326c1c2fabbd3890
Date: Fri, 10 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783668513
