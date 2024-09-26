Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2904115B57C
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727372154; cv=none; b=QkGRkwIv5olkUDKjXZtWpqpOs5Nyorz4X1QT6QdCKOh7x70XLS6/s3zgo3ltzqtZ0Ro/1WCIq2JGndu5AygqHRfk9uQDu8EgER2wXiLNWr5lqMrJs0ghzj86BymsnBHGFmFsutp4KCVYTBczWa49CConZ2/FLdwpo7j1+TN5vYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727372154; c=relaxed/simple;
	bh=WuZNPW7ztbPlW0h0iROlTUKOSmzH21Oywka2mpeJyf8=;
	h=To:Subject:From:Message-Id:Date; b=HZBgL8nZtj7Q9OP4x4RIoZYV1aHjLOlf9bT+TDYy6ehxquEGhIC3cNThVHg0++STFuuBXWm9GKQk1aJaxQbQELJxi0D2gQNoWT+OpW+oSiGhYkTytxwoaz9oIdK5XYsk3jjhCB3gBoM+n799nAaKZDSzzP0x8qHy0EWM3fdA+sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIEF0Zin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIEF0Zin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A99C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727372153;
	bh=WuZNPW7ztbPlW0h0iROlTUKOSmzH21Oywka2mpeJyf8=;
	h=To:Subject:From:Date:From;
	b=WIEF0ZinKMb9DRopxlNi5oQ/wU18HTf2qEjOJ9JmaafGWSjVktl/wiBWy/1QAizkJ
	 68filibwSwqobye5DJ1el4UBTG9a8S7kCwgN/byzQHWFoHEZ8EmqcBC3DU/hoNoBCI
	 AmVOufuznhfJlqZePVNbbNdeBbBN+DaWoN0gz5Ni74MA3rEQPIpwIoYE1C7MD6eu61
	 Cf34tP2N8TshBmfwA3tNpL1BGZpXYZmR/cvQ6HWVdXrzxazeCiClGEpZY4xW82iSf7
	 NQbVQqzqcDRtB1LEhDOHMPHNgXtMIg2DP89mHAN2H0SD64SRVL+5dcB6SjcPTqpvCS
	 yJ1ra6IuVygSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A42CDE026
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172737215358.2137.8744662991551534664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c219314c658c8b2205d1e4b13a58b7e7c42cc1e657cdc9c14159abf1a19db5dc
Date: Thu, 26 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727372153
