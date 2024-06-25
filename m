Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CDE45010
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 03:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719285203; cv=none; b=rOaINS/P4D9yOT1qfbZ20lDzerS48tgjHhSoat8WUuwTdcsI2RAGnTr21LYMkjoJfzhqEut87c9cCmiW7HozPe/BEX5lYKyfF/0VPaFF+ai927V8rH8994MWlHGdvxVbWljvZoZAvU7DnGgZwWpBrNRrNNkCm1H74RSRyJBAvx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719285203; c=relaxed/simple;
	bh=SENOWW78iRMweJ5+jL4F4KZGarLultQJmhF78gWC7h0=;
	h=To:Subject:From:Message-Id:Date; b=QsUdhhBP+NVh/bBirWY9UBcQlEvBBqVBBwjd1h5Va5093DpglkWA4so64BDSK1omQxtE2TdZg+d16Cl0j/pF0Hfk0pvdRBM2fP7xgqvaYaT8LUrRe0BLr94eAQ1Y5l9mW1U8E3xo+Ujg48y22XymX4+TwTKW0NbliIZXXNKkUi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/b+6Nk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/b+6Nk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E48A2C32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 03:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719285202;
	bh=SENOWW78iRMweJ5+jL4F4KZGarLultQJmhF78gWC7h0=;
	h=To:Subject:From:Date:From;
	b=n/b+6Nk4xnuvqtaCDUjjP++HwnLkkrX+5XZfzWZfqykqyuRkT5bH1UTlZB+EKZcWL
	 pookvYv7Cuc4rB4Q3e/YToX9+QeJi7+Mh33OfDczlhngY/cRtwgVdTTgxdV+OX09Of
	 zuUS9MC5lGGRdwFXDEGS1Z3ky6lOLm/Y6HjS0v5+bqFd30hQ8XBBpu2Yyz+/tNqd1G
	 /y6P5QsdC7+jA3KRPQ0oVgQkCc6OcxK5ChwRp2hZG+bZCeqyPOB2OLDDMQzRrd4Ye5
	 AZ690QypxhswWrwvAmFh0LL8ywSnmU+gCw6I6WuA6PeTvW46nt0o1oTBPnkASslg/G
	 3Ff2Qz3cQoGJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5515C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 03:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171928520278.17157.5940866290866654951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405cda806f93671211d5a06e60e7b9d109cedd53384b9631908a6ff6c7ae5484
Date: Tue, 25 Jun 2024 03:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719285202
