Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48C1187346
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763828513; cv=none; b=edxm2vC3atiNFyPsWX11op8LOHXgumNDQ5E9l244owMTlIC+zQUEk+ta/4QxAKGutwVqQL1JwzTR0u/bjv5wByc8mMhpZTwOeZGfdQ9QcPULI5DFCrG8iLim7kclLHRdJKtOFmhE02bR/CLQdcwHLxHvXps2u0tM5DVXB2WSUwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763828513; c=relaxed/simple;
	bh=yUSvHaDwTslLJS/3sJW6Z+ipGHhUQtrNsrsvarA79S8=;
	h=To:Subject:From:Message-Id:Date; b=F719u1t9HtevDWxcuafLRIfg+PK/pYpzEmUCAFbEVbt7GKa4BuVyQqflR3KQbmDh5TbMKm3dnRf+oJIhyMftR3EvQ5hc49Qr9m5GnyROn1+vtm8r2hWpVP7aiKXSVIReAeUpVIK676SMAYAFBgYTajhc2q5e1k485DBiIWsy8OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ip4N7HBy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ip4N7HBy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A878DC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763828513;
	bh=yUSvHaDwTslLJS/3sJW6Z+ipGHhUQtrNsrsvarA79S8=;
	h=To:Subject:From:Date:From;
	b=Ip4N7HByuWpMdG4p8vggJRQ9l/4y1ewjNMVmHzMvFjgLNv6YPOwQQrwJQPyKGwI87
	 /XWEnoIkQ2OEsVcXpxxO6KhC/Qf4tHJT3zGxNvRvKwAkx21ZAWlrSghFZukTjcwvzX
	 JeUfkOcdv5XvNLLCjtECe/pa9Zh88dLGzTp94WmCpfMAzo95A5N+JOKWAxgXYKYsF6
	 WJJBjmNIySH7dBtst6qoDuapKDG6dNLuu+NHIBsVQbXVJIhBEfMAPa7fUk5KIteoFb
	 79Srt14iiqw0c15kzHI7nII1r7kD53pGIwUsN5ja+B4FeYVy5puNO5mZ7GXTR62qla
	 z7FtcrYVBCf2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941B2CFC51F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 16:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176382851359.32155.11827996458021851407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e474c295b330b041a142c407fdd444ec0e12732599e367a07c2003a82056439
Date: Sat, 22 Nov 2025 16:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763828513
