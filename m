Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 560FA25E469
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791082234; cv=none; b=VpfK9e1S+IB2efnvz4Zt3tP4IOgQHdN5rH/uuB6n3NHTDoRlA1hCiWm1399EH0lKloWONl1lP7Rj/vRpv4q+71gQenYfn6tnXPi77MoxzubzUJwGwlzCjmXH308TOMAKv6Zjg6W3PrZgBXXBvGl/vu9lQ/6vtGQ7gHV+0asGrM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791082234; c=relaxed/simple;
	bh=7F93UQznHhKyxWLOP2vATCD3dFRsgxg5tnnRjAHMcSQ=;
	h=To:Subject:From:Message-Id:Date; b=YpLPYYPemcUjnwnGv1DylXIfVlhkw+Yl4wRXaydlZWSzPzRnalgFz7nX7/KGdkQURQ/YbR7V9RM4RNUGwM13zYxgPgaWsEmWUo+q6G4lTPMqs2pHO6HpXMIXe2AQamapBoxg9K5DteiAXljvAUHvWg+VhIiu8pTDaLR/0Vy8H+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnnsFgtF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnnsFgtF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BDFC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791082233;
	bh=7F93UQznHhKyxWLOP2vATCD3dFRsgxg5tnnRjAHMcSQ=;
	h=To:Subject:From:Date:From;
	b=DnnsFgtF66zGpihv5Cq1TCh+GY9/Hc2jw0C51fYM0alDPgxPNM3Mqg68XjqW3kwqz
	 DjkxgcPu+gxUoz2tHNbcOno4xDFEEQyDvGlD6Pc7w37d+sa+IHAI1DXhrBo02t67RI
	 F99cJ44fnpZLqC9Y5DVExj38vc/OUAkmGzJCcvqGZnarUt2D18+QFZDUfPCmvs/zuf
	 lzcJ8Nm9xVWnh+yz4bYwnmp568xGHrpvFTIBl/vMROgvbEZEeGjahwqmUnoH7lmjWj
	 b9C5lNackV0CXqgbTKrJ7PzHLWIO7fnltlQQS9mgbK6NDwLEkwDSNVt+id4d1xRPze
	 CkwpKlMvXce6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB62CA5FDD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108223368.24876.16200883599566665968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34bae8886e4dde4e5bd718a3bd50a0b2def2b53b432546020699ca9cc7cce0a7
Date: Sun, 04 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791082233
