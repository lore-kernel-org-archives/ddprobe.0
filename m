Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A1018DB37
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775688934; cv=none; b=kNykBHZ4/pPHs6URYGQfZlgi9a+B77Q2mphjBxYEEFrMf3Kzt+Ls5rQ1Wmlm3INb1fM3OfL8iyYM9FSPgaiz6LzZn4ryvzG87MniO6d6kvqoodqHkUvjqdNaVT6ez4jkx1Bsn3n1Em+omgMOqW7TP75DHvIWu6RSLKOzhVr17cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775688934; c=relaxed/simple;
	bh=koFXqC0J6qi2IXTr1b5/boeADPzsfSni5RXYXqN1QjE=;
	h=To:Subject:From:Message-Id:Date; b=PJGTZrsja5lW4VSpe6TJwN2s6N6Qr2XkTx+Frd0gi5xWmTLaXvsjD0lUAlijWTkpqOjnW66iBBQNeP9uZXbYJDf2DzIVfVCy9/1JWN7daQWdGQf/0P3+tygPyuZOkP9u5U0/jDj4Kbx0pEKtZvUYRTAs65C0KhCjhrFK4Fipl6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ekv6+3z5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ekv6+3z5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03AAC19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775688933;
	bh=koFXqC0J6qi2IXTr1b5/boeADPzsfSni5RXYXqN1QjE=;
	h=To:Subject:From:Date:From;
	b=Ekv6+3z5c7Alai8blH1Wi0B6kP9wujCSEV0JI8h4pn/xXlNWjxsu/eqyWIsBTOYci
	 7hEVVYRWGya7aeYVVgj8isQ78HRTmVjuADOhk1PYm9g1w1ivk2V/2/V/S/uUGd6wy3
	 iRvBm84Ctxc2w6v8bHnjIkJr9K8zqQh6NWbHmGzfoavZpHP/swtoK1finqKEn4EGag
	 hWbcf7WAAL5wY+mQFWLWzPmCE0g+MVoiAy1C6DJ1ywGGDYE6x41qQMGaeP+dwTuC1W
	 qngt/nsMKDvbjyokojsZdp7FpJ8kWJTMwOHqtHS9rMk2YRqeIIZRBg21eXSk1uLATI
	 eYR4iFJDzvKBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5BE10FC456
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 22:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177568893368.27487.15992365097180070939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfb5afe98ce5ab015cfc4b9547335b01416238f9a6a98a73efd9a7a4cc275958
Date: Wed, 08 Apr 2026 22:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775688933
