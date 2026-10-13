Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437223CF204
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791874234; cv=none; b=DsRlfL6nAHnL/5nzgZoh02mN5H1EeT30/lzKQ3npycnfKpdwByIpIo+x3L2bDFzdFjS7PACxMm2peBbBt8jGRwQFwXex3RzruHDTLaEsGqRkIkETedaT/8caaD6znO5mYz+FMQTAFEbOJj+5W2Wpm1T7TqcN3sLCwIdEqhriRD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791874234; c=relaxed/simple;
	bh=wk1bTUljwJrdL7NdjhxE8+eTsKCP9VAIcONvnWDtz34=;
	h=To:Subject:From:Message-Id:Date; b=p8NT9BpD+gOh9zqpeZzCuXMIPyT5CAQbg3fRVahU8siMSLCWlrRDs0lMlM6/pARE+aO69JSDMTPWTw0qQrwcIDFVFrFMo0gQ1W0rpFfNqjuS8FI9iGa67iRnV5tYgHKeFBjHlWkioCbEonb1H4PoO7m807uJLjIe1D1EqNK9ymc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rjsY29Yq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rjsY29Yq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6BDC2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791874233;
	bh=wk1bTUljwJrdL7NdjhxE8+eTsKCP9VAIcONvnWDtz34=;
	h=To:Subject:From:Date:From;
	b=rjsY29YqtetfPNCyYRiYQzUL1QzxXmesdkVWXAqhrZx2a6H28GutVBWLIKAQutcve
	 +XgNP0TaOwmctQuMtIzBwlZsvxaTgcYgURBYUqD1RauPYSq5WuMeDPIet/7BlmskUz
	 eqfGYTedqfKsCc5eju8NZvtBPavn5ithOVKA1LkClmmF1ZjkY80F8Trxiib9AYdUIq
	 Z2cG8dmJKgCz4XE+aUYiBKeBVcLtBrTKbaoatLoHMGSU4BqbDPs9hErqAFGmh39PaE
	 4I5XIJcZYcR6fJU8KxF2ObZSMEJhPNXltR8hoSmr9Kn/sAbnoxQ54bx79Y18rIJy/3
	 Rf6KT+aKdm/XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAC0CC6B0F
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179187423369.23295.8242518631816471466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bfd437d7cda0ed74b5d92e9d28694574a0c2758d8de4ea8dc54baf6cbf84574
Date: Tue, 13 Oct 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791874233
