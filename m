Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209A914EC62
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756055994; cv=none; b=huPnqLuUjhI/clCMD10KfrXhaLzFpgTaXxOGs4Y+5qgX98QGGH8VS5zTvHIRVKh7vdxvt/qh9SDg2nWi1EkYSO1w95ymw6qFU3vCLccq8yCkD2JSJ+dMDH1pg9I7Ku4tXC7MY2AIZFFgXslGnkh5PooP5tmuQ9m5saRcyid02zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756055994; c=relaxed/simple;
	bh=A8IxW5dJzQYGvlK9hr3wUsAzVEPOJp/+56ztUe0bJoU=;
	h=To:Subject:From:Message-Id:Date; b=tAeJ60Dit4mGw0gA+PhNQeXOnVcBvz05nYkUwO1EqkOAug54N3sylJSVO8j4XmYJ3f0ZXZVaiYISJIJF8PUfAaDaw4f3JrNOS60GC2S3xsuPmtoDniCiyt4LoVpc2kj0UPx1W/fdks/gAb8SrOE2Gzx3Ah+uazMDTvxqRCxYhqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNiqKMBv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNiqKMBv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16ADC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756055993;
	bh=A8IxW5dJzQYGvlK9hr3wUsAzVEPOJp/+56ztUe0bJoU=;
	h=To:Subject:From:Date:From;
	b=KNiqKMBvlqO7CGLr9/to2s3rUCH7qjdEzY/PFH28YNNSNAVhy+sm/S054XSq5w/Tk
	 70pHdFzJFwAboHvKmTvC9fa/ljfzwLmCf8BhThGzJsMjcDqaw4NRWteBC/ru3yKNRa
	 BX9GV9xlPCaBURvP71gCctD03vi2P1mMgAt0s+YdYD6l+OnVwlQSz1QXSB4veMfY+x
	 2+4Dw9otRAyt3tBbbzNC1H5QbFwGCdOmAo3yBtXT2MHgYGqz0fSfA9TWkloVhIApFH
	 5wMNJa0EqvGwHR75yxxlpQEfQhxB0eg+ibsMbKJkY3abj79tcpSIZfEqnuULaFaVtR
	 JWK0+JN3PyiMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E480CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175605599357.13985.11053893752175903434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b9f15b4c260d81c43b3705e0cc853f5b1772fbcbcd9df2eddc24901fb99cac3
Date: Sun, 24 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756055993
