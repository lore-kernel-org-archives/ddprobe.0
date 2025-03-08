Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD6B192B7F
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741464535; cv=none; b=pWG7ktbD2Ix7/NWSWwLgK7A/Nn8DbmrziJ+v9pcyD4eR51+keD/v5VvbUqNy8peQy/H3kWmaB6U4fWb8h/7eCmwJ2qdLE1gPPCIWIoQFysTr8/Ne7rEvTzd94Xag28y9CopVTdsKUmJp7f3WZ3anVmP5FXiLafpmv6pzi3jClNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741464535; c=relaxed/simple;
	bh=IDuoEqGFF7Tz705tRZ/f/qJ6yta+UCmLd9QHUS7BJ1I=;
	h=To:Subject:From:Message-Id:Date; b=rtoLyOhsCwoGzDtfOsXjQiTRf0oiC8Q4QkIWHBaLhY3/bpvgAotwyaYT/NEygdPlg/V1+ULuCfUrie7jfgbJvpRxLe1TBZ6EqFftrNnJqtA/R6e3DZR1ymjEtyVOn4LZmNQcikjc4OO5v/5AicbuN0lr2wEuzrsjyHDlr3tW1DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qzmU83Rf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qzmU83Rf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B73C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741464533;
	bh=IDuoEqGFF7Tz705tRZ/f/qJ6yta+UCmLd9QHUS7BJ1I=;
	h=To:Subject:From:Date:From;
	b=qzmU83Rfzr0Py0ysBbVCGGZPvPV/We6UCWlX6j40rsL4vkwzEN/3o0UTF2id1/aVr
	 epziSSpF0bzVDVAzGzalH+j6RaJeqwR/dnCg0EWmB6Q32QyXiHM6fNW/x1RSKOSQMD
	 XIaaTbAe+mi5PtdLYMpjip4/YNmL94SKGQt0TSKCIdcC6W0C0MkRuoGljyrIKMjAer
	 cAla7ZTLvr51AcuL/IpNVx80Y8R9nM0hMKJYoHTRWVpZTDc5LMf16X7b2acWdFy4zW
	 W4eNfatvG9cBhTTw3o/tc2DNdsnklGThNxf0QIIWZamV2h0XoXO+cjDcM7JXqVjNrR
	 /1Di9QY4yuzWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954B0C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174146453360.8929.6334193218209630030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898a719661f3540f1f690c547aaf35f29062e53a59f9c7f309f333af9460f842
Date: Sat, 08 Mar 2025 20:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741464533
