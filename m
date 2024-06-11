Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A1C8488
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 04:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718080703; cv=none; b=TLeRWRaxqQfV1ZXyOV83Dh6hh9vK5oJ9GatHPacVgmtvtgYyhZPV36Q1OBfCvGjg9oAeAH0Vnapou2thDrfR2oOxIPCO9X9o9PBeoXJW1VmXxmnH0YN+nevHmUF5yrgGJW3tm9cci4PFFItl7dLbOpc2a6D9C4xu87bo5fXAOro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718080703; c=relaxed/simple;
	bh=9PcrDrWzDhKImFjBvw6+skoQAXOHvZ+v9DlW/r5OM9c=;
	h=To:Subject:From:Message-Id:Date; b=EFQm638E6MLEwSPto9iFL50dn587VYPuZzB0DFU7OOs8b34XO3OlN12Kna4xsGvby3JqRSIgqZvO9bxHcfZ3yzBlg1r+c1Uu2zCYthf6UFIz4YWUYGALwuJKlIgUva91dg9pyqc3z0QCL00Y2/7L4pz3fRQgUrh6EYOsYayFu2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dL00ZRry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dL00ZRry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3F1B7C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 04:38:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718080703;
	bh=9PcrDrWzDhKImFjBvw6+skoQAXOHvZ+v9DlW/r5OM9c=;
	h=To:Subject:From:Date:From;
	b=dL00ZRryAGRMMrqtBFhkpeXyuIiIP21I/mIgAuRUkrPpXvw8gRS9fgIOWWrspL0Mq
	 V+PMvHZIfJEnig1l2AugJtlYr11ijRKk0CBpWtkrKZ7i9o9FqLIULit1BaNzgDyVtW
	 jy/luwWmyg0Rg3RYYaDrdByopImu+2hj/StC/yJT5OZAcLCZBax/k6mE8Xk3AObFhN
	 VwMP3rkqeG/ch29Xa1/SH7kxzxPkzFQn6k29IV1JLi5fpqVteVI3UuirKz6I2XRkYt
	 ZZhCB8eFz1TAlvjsTCRmAJSgRo1hGqXWGtjbY1HATwAPEAt1kHfoA9hjruUZV53puH
	 aa43X58aD8cSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 19088C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 04:38:23 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171808070299.23193.5225422979038122329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6533817c1af2928e1cf197228b066ed9216248df65be7716b7cac81256daa5e1
Date: Tue, 11 Jun 2024 04:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718080702
