Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B542E339D
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743650994; cv=none; b=DSw1d6eDSObw1Px4aB8/i60o40KgPRtiHTNfibzH2O8rysSCQ5VNaMCuu+ajWXbHxm+dwpf+ZQ7PqBzT+H07i00GR0Jvf/l6IuUHePeK03SKmbcue+F0OjToV0T1PXAsh8kbbZQMzA5vkx6ZxUJ0teipkRpx1Bh6D0a4sfYF2rM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743650994; c=relaxed/simple;
	bh=CwS6XXUDbFZkXvS0S46qFIL0mWm/6kH5AsahT0jrx2s=;
	h=To:Subject:From:Message-Id:Date; b=GUYUDKUfgsdYLT4OWaBdOd6auDV0azImFOPrxTzcyOF9P9kTeT8gRA1C5DgoVoZ/3Zguyn4HQy5j+lGKo8szG/LK2ADT7gPvH3WWJRKL2ef0jNpbjQRZok9R8lNkGp39Ml/66g5wyzknZrBklIy6R1ijcLfp8RFmzI8MwTp51qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QYcnpMkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QYcnpMkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5EBC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743650993;
	bh=CwS6XXUDbFZkXvS0S46qFIL0mWm/6kH5AsahT0jrx2s=;
	h=To:Subject:From:Date:From;
	b=QYcnpMkfjEBe24NTW3x3R23XTzKlRTAgAHf0uSOK8aEj0yfRid4ioXAOawuqM2lKT
	 4EuII2VbPOv0n4BuqysNbJtSEJBYvAIE41iU/SMKOq7T56atxzOst8xPmTyG927oUi
	 ZdrsY59DPED09oawQU0lXx1LEk0MS7NcUZtJ49joEh8MXjtS37WVpAMcJ8lcjltUQo
	 JATUcrfGbXLaUlvYWyrIiRa9VtIaduc0TDPuIgraQgEIqAUvHe6Ne3Gvb8w8drO532
	 H5BguWFfVZqP9/iH1YGu/wAKbjgPWfoowdPN43U2wxGFqFo64HsDD7KdDMfhIK9vuR
	 keGUQdwRbMRTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984C1C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174365099361.16021.16493522568770896254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01174dc58308fb90eb213512192f85f464d6236574315b707027446cc3cc934b
Date: Thu, 03 Apr 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743650993
