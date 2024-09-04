Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B55635
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725424554; cv=none; b=RMiD0bsKa49KfUifu09bDMqMBQzSKlvO3ZoIXHpHHegClX1bQS5MDMa1lD42sL53HWzc7YVOn8mlRTGmCNvDEI1f7ztclC/JMAHn4XzGU1NTMW9T/aFqgwG912xVHqlK1XPbmFVjT9i+mME3EDRxGcekTIuJsln7A/y21syUJg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725424554; c=relaxed/simple;
	bh=dETaapZMZnsCdWK+rpEgyzZDltOX0SaxkRTKcnow6wM=;
	h=To:Subject:From:Message-Id:Date; b=g8/ZG/RwmOefKEh36Syv8wAhjNlrqvp4exzdAc6c9qxCBFLlGiJFM7AJOkMpgtLyDCeyVFQntcMzW/608HJP8Aq43XniUTrgKVuMmGqGf+a8S1K2N90Ua8Q4Nn7nMp1zuCkAn7mm31v9bk+amOJkITyZymAWbFwyLcV9eaVzOsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sR2GtiZ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sR2GtiZ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B44C4C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725424553;
	bh=dETaapZMZnsCdWK+rpEgyzZDltOX0SaxkRTKcnow6wM=;
	h=To:Subject:From:Date:From;
	b=sR2GtiZ5n6QlhzZ7/PFYf9xus5+N9nvt85fJJRXm33FJhdtutP/V4cTHrXKETdAiP
	 oC6S5NcvPdGZ57bcKSf3mc+4PcM4RXcejVvz4Lbne+liK3eX6nTs+ErEOlpCr55LCZ
	 acZ25CZ/Zp36x913FKtQjfipNIzAY8z5HVriaDTVX9f3KMYSDeYX76OfVvXlLSVZz2
	 Y4BBAr5shiIM3zqkZaXvPr2PW8jp9/n4Pr2bC+aBu+f6ZkKlhbdgOOsIxvy3OyZiLs
	 k3MmAq9mtbvNle3nJHRkRk+ZDOizpsJlyBK/rICLK+OqFvECuF5/a+hTqKpGZ1t649
	 rD+Oqpymdtn7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3BCCA0ED3
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172542455362.30613.6566916528280074570.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c305cd40fb773b519b0648febdf77295b8825bdda3a5a558a5fb5b7ee4ca4535
Date: Wed, 04 Sep 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725424553
