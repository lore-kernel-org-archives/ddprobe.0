Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FF8B27B4F9
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744650594; cv=none; b=ikEK5mA50o0RP3v7PwBAI5mLpPRBaOcDtHxixw8KOTxZFL9bbYdrG7MvBNCiGwBcCFUExEnZlIguYGwmDVZjIRNnQh54wx3e0hW1vQQOAlNZ9QozscAAL6taGhyc38wk7MmbYbXF3aPiHh22a1paK5+uSThA4XpHGwDBqETkDl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744650594; c=relaxed/simple;
	bh=lq8TMaVOy9SV0+C3Ms5XAPt3EPIJtLtD++KKmGuZ7jE=;
	h=To:Subject:From:Message-Id:Date; b=e2ZE652GrPGgQUX/JgY3q24qlhlXvgtRKffbx1BZhuDCxJ7JMAfdY5sP+Boi3bXqf5JL0zWsktS/yBL4Tc5ergtGKCe7IAuAVpNS06J22L93Hlr1ZoV9KreLA/J5kBIHw8mk+85H2yJc/QfZHGLP0TgwHsoA1ni/yGcAM0Ea1xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxQwnveR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxQwnveR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A293EC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744650593;
	bh=lq8TMaVOy9SV0+C3Ms5XAPt3EPIJtLtD++KKmGuZ7jE=;
	h=To:Subject:From:Date:From;
	b=fxQwnveRJFGfp3VW210kGGzBUx+55m40Aa6r3pMKlra6wtab7kbpQN41jIiDpB4yf
	 MLwZW5gf+y+e5sQ3AuGXQZhId9PT2PB5BNlO4ZM/vXe5xpPpsp6761aA9Qmjb3XS81
	 iGFbX9ftzJYUwdPINpRuGezCkP54tICuD3k9fAUUhg5oxd88A13iiCDYWprqGSRIG/
	 NzUUslvUNxkTUBYB0wr+0URIBy9MPfxjasWPMHoAGvoL9Bn3nfHxnsMM/F2XxIyTmX
	 Oqxt1+7BMyh1WQ7jjtTN3hF+KnLv+ah80AzA3q5UZOzIXN/509mYE8mc3/ChmmJeLs
	 E9DxGP3uXcKPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F957C369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465059358.16468.547582575890364681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efdfbb3bb9fa848b7ff0f8ae571dedf6292999b00067217d69709b51bc38f659
Date: Mon, 14 Apr 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744650593
