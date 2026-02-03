Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8A0F392C2D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770113033; cv=none; b=qOPFpOrnw4ezypX+1vndmGNbZsrx/e//nXTB/M+MsNwcfsFufMpIlZbdsFdfT0om8sqtUlctstXwmH10QB/eEMyZ46B0+Oh8v0SwmfUNtb4ZTkrHiCBypbxGIHIroiAoE1+VA0sOf0TCLKSJTmpuMXQ8WAqBDHA8ubqWPN7uI9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770113033; c=relaxed/simple;
	bh=C2+fjMjqy2aHMeurbpL6wzNyNFcMo/KBK726bBJWBx8=;
	h=To:Subject:From:Message-Id:Date; b=WwxPeD22Em1bBQFQf9wtaYKl7o1v+AsWaZOoiQify2G+haBC06UnlwAZEDQ2ATMo46BR37etdN9WspacfXEMPoEY1t0kc3EN4G7hC6HtH+e5e75A9USbanB3r8YKlJqukJQsR8pwIFP0YQUKG+kNWkizXzNrr7W+r7Q/dxkA05k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neU8JYps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neU8JYps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30F1C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770113033;
	bh=C2+fjMjqy2aHMeurbpL6wzNyNFcMo/KBK726bBJWBx8=;
	h=To:Subject:From:Date:From;
	b=neU8JYps8HmftGJQTRxR6YAou7OYac1/olZNU3DM9LtyXOGDM9NJmRk1p33Gj6mB0
	 eYi47VBELtc5Vce0jEhJKtW5ogK+ufS0spPiljlQVzdtrjVAfnxbOHFqdZ3T4kONqj
	 fs0dwGJ0Zp3tDDxiekY0HB9qbMbhlvsoaWMGxI+D6d3HsThRclv+MuFgnOYiBh6vKK
	 CJoGFmTbESLUDEcQqhHt8oHoAeYlXGShVLc9L/dIZq7EeOxOVU5Jm3jlPl/xTwGmnr
	 k6NO2ZLJGCju7qK81ZFak5H43qXHm47xuRvY/Rh2K/aknRgYE66yOwEd1tdaV4o3ta
	 rOVjIXMyPQ2rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7C3E83076
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011303364.10000.15053567709957008434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de26f29710ea7de302a49334e176912995f48e86a8a0bacf66093a115b76948f
Date: Tue, 03 Feb 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770113033
