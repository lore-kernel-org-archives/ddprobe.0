Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9CEAD4B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735094154; cv=none; b=EF/AWnEQO0dgfmPASdRdTpnc0WJSpD4VrP5e/5YsTN0u4pcwan7nibo7j8LrVjrhifVAHyxWLhR417AXv6yyQCy/Lu2uSgMzbuJhD1sQkVDGwklYoZEbRKrW4k2D9XjKPGLZHEbpxRheZb56BSgNuBgBP1A1cNOqg0mQZX5OOH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735094154; c=relaxed/simple;
	bh=ysEuCwcmniqJnKN5NEbuoimjMpa5/1cPp0gJ0m47RXE=;
	h=To:Subject:From:Message-Id:Date; b=oZsllZC+opeqdo3QjFNJRXxiiqNhWFZJHj0Sr89gPd1xQ/dBB5dNQFw138xVT5U2ItrnV5b92egU+KsbAtpfZDdmHsgJsozgaAUTWj5dHRYo23/WRh86ZwYjxka7retL6+xXP0E1OvzO4rcwD9VVsIvrzVca0oVxs7SpdsG9Q7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtB3qa86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtB3qa86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA864C4CED0
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735094153;
	bh=ysEuCwcmniqJnKN5NEbuoimjMpa5/1cPp0gJ0m47RXE=;
	h=To:Subject:From:Date:From;
	b=gtB3qa86CPUCG4MYDYN82emdluAuj9eoNv+/+IpXtJKkjPQUEB0VyMReyYubNAvxb
	 gBxdX8Gux77QCNkpKM8hsgn50pa2gnrQrNdusWNRxjFBCVjkEntSPxe2qxEOG2Dazh
	 2eiUulmR47oKKFY45zsDsVvgaLeOPHils7oN3t3g+qOknYKBPseuFGTJLPWDBzTrwt
	 XSAFwxus+0pG6SdvZFkxnADCM8OUJTy341v+7mI15ms6Gm2mEM95gC8GVfjZrUA4U0
	 IK8TIAABXyZfR9LBG/ZvrkdkAL+E5DUcsyhzo9gM0qjUdLJ5KEh0xgG4jftCwcJBJL
	 /iacEgaFnvvjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D85E77188
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173509415358.9260.12421246739386153833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55b775bff5da58cad8ba4d66064a11f5c78d37677617f6ce2ad405fa1e393aa2
Date: Wed, 25 Dec 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735094153
