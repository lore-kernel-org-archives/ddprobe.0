Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607C22FB97D
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782237994; cv=none; b=AZeV0keI3bx69jnO9rSAw+BnB5nd5zb0lmyBjRGw7sncmCwlHkkka4nDTErIOLGPTPxyMai8v3nOICCp9O2Hwo8gZ6IIUa0hKDPW693FfBrzksjeHMiDKn2P3+BM4qxmR5eiD32QEopKKQYR0s0cOUnnfwnO7lUZuDmNrdS0Chw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782237994; c=relaxed/simple;
	bh=jAID/XKi6/O21cXSkBDWvWYuomhgYhQMtKDZCwVdmgA=;
	h=To:Subject:From:Message-Id:Date; b=jd/oCI9M9FrDRUwtoMYOzUdFZJnwCOeX7lFdPPGOfUCfq+sdgpIrJ6ldX+DWiU5KYLPCkYuBwIJtUsxnaKqqJG2sQl9kPUsjS8W9O0n98Ox0rQgIKGGOG/m5gzwuFNj4OyNGH337ageBukH/tV4Kkcmi9xDEeW4RVkH+4WdP594=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WBS4jZuW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WBS4jZuW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1469C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782237993;
	bh=jAID/XKi6/O21cXSkBDWvWYuomhgYhQMtKDZCwVdmgA=;
	h=To:Subject:From:Date:From;
	b=WBS4jZuWop2WtmVriXcPrm0F3osZrKDBnFR3ZAX+3RRC8nD8Y8IEtBsOjkWaXCs4n
	 /JbBRjGBmD/nZRtpwkX+AXi7qzQWgA1F3sff5JrMVxCd3+Tz9Nsk5t9irRaVNHtujE
	 JlFcqZ/v/aIaJF4QI2My1rbbksJjjaWTP7xH2DflvplaHYe/CCH7DxnmgGzd3HW6kd
	 cASz+JZGGFJKXN+YlZvoS0QQIbfUaHrea2u5CdPJOqIpeKANSpUaMRgR+s2IrUsrF1
	 ACjtvkHqQL5dLuPu6WuED3OhhYjswaGbXQAn+DQ4t9k2w+MYaQEznGlRclQHTlhxlr
	 M4OF0fRTKtktQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0ACCD98F2
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223799369.7462.1436820862521831822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8142e7235affba395c34b827a40eb096c829255a804e5196f19e9b4e4d262abe
Date: Tue, 23 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782237993
