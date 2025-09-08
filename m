Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170581F09B3
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757302194; cv=none; b=PZXn1KrscJb3rkSl1Hkm/ZZnyaF6C8sEaE3jlXJJVwkWB/GOeC0NpBBvJXW0EVVgcWzcJxIQ+EWvOUx7NyNih897gyQI2JgtL0+CqX+N0k2DkgZ1nprRBNt7mSKS5aZ/VlEE6d7OPhkpRxD+zMjTaQo/e0MCvqbGH1KslYh09d8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757302194; c=relaxed/simple;
	bh=s3YVr992VZlumWNKJwOZCXZA3E1sBW4h6XCzJSRP8i8=;
	h=To:Subject:From:Message-Id:Date; b=JVOahfe6bwfBADqadbuffAlSyVzvK0Lko/qoO4Y6UCMq0GygjO8pOcBmcBinNaSJpzS6IJbUCfJcbBGxf5JcK1zfpRQYYToypLuO1HLjcYt9b6U5Qoid8USymchK5YE97zuoJfLD2c4BY68Y77Th3DkFlyK69Szr4+lD8Npzlj8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEBib5mB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEBib5mB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5199C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757302193;
	bh=s3YVr992VZlumWNKJwOZCXZA3E1sBW4h6XCzJSRP8i8=;
	h=To:Subject:From:Date:From;
	b=sEBib5mBLarzAB6Cu5XGvzkdj60F4XlHVY4/jvFjAi6gtquH6sM7VD6RdMzieD9ze
	 BstSsu+NLeEhmnWvZ6LkHfO1rG8YWJKU75xjDAN0rrmaGPT5l8ZHZPxJd8LO8Qt1W5
	 k8GfdNTa35DMi65nA4hQgGkni2hDGiJ5aLIyuDdOpxv1E8Nq10qYlwDRl2AyHq+cr3
	 N7zIkGujLTD62TBNghKEk82ImSCmb6qyPZ/EkbPAIMQ35CiNoO0r36ZPW3GETdUQjT
	 7N63IQCmGSsMSiFPHYDTbxdcZctMyz4uR0IWVgsoC9+OuJvxOgOSdBBcsf3Mr9T0x3
	 RnIZ+YYlDQ7/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93610CA101F
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175730219358.6831.8869969505795910775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113bf232ef7cddd567cf04ff92bb1143fbfe8edc952d4c2515ead6d0d1fc5b30
Date: Mon, 08 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757302193
