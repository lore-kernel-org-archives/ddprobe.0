Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292723F9FB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751320794; cv=none; b=D3F/Lc3bd2R0aJt1V6oi4Wb/sQyRcKh+uZLJJ3mkH0RGa3v8sSgtwRBxIP9dAzQU6WcD858LguMMzfrjKj2MPSOczDo/3THupA3gV8Ds7QGzaYg3dlT1lMrcjsvHlrEOtDKnPeaYie9pQQv9tnJxFLnJWXFgkZhGX4kX1tHooR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751320794; c=relaxed/simple;
	bh=FySbHERz8uLjZIRMO8w/6hPgbYSzxmMHt5/xqAroQgY=;
	h=To:Subject:From:Message-Id:Date; b=TulYdcoG4EL7MALiEXY+/57Ri0PosR4e5/axYdO2qU3E+MkP0dObceGAY60wnzjOcm0ylNIJn88oO87rkTh9oU0FKlc+9osSygrcRXPZ5S87H5RcJ7WVJjLinng22zSOnEAqtJBLiCXJEZRLrnOUR5cfuDhHoJyzXU6x9ULU0Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCRYz9Ty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCRYz9Ty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BF7C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751320793;
	bh=FySbHERz8uLjZIRMO8w/6hPgbYSzxmMHt5/xqAroQgY=;
	h=To:Subject:From:Date:From;
	b=FCRYz9TySZ1xTXmTH2TztfS0uAmaVg9BM0ZhypHpIr6PG3KLrhBF6r/X5QGAPuFk9
	 F5bWyffJHOTmr2ywSFOckHo7vW4DCUElspp4Ahw+OhVTswPvXXX5LkkkEDSqjd7kY6
	 +jt0G0THcr/63Z1rIpKNYj/ItEuTPMf4LgzPPuuZ1iOaijlioRA9mueUzV9mk9WGFZ
	 x/Nucs1MOA0aglDTq8HGCS2aeqW4zFhajhitE1okS45P1Ikd9gttUBe5MZppDOK64K
	 oOKSLrwrUtY2X99mnaO9mraXZ4eycPN7oUfwjmevD9kLP+CrI7C/xfHxEafLDJN9Jo
	 d4vsfZpuK4bfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F025C83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132079357.19064.1627550802896542906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2611de49dff9fa5d4ec8c2b33d6700c959c029fe44528af00898462ebcf1050
Date: Mon, 30 Jun 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751320793
