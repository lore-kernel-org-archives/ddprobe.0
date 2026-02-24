Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB2136B07D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771926894; cv=none; b=FN63sUbKv3Uf6+/Qgn1aDzKV/XkFhtWVKywav8+mbccGsEGLfS3qsObhzFJ+m1FE5zSeTe8tjBqrvJGMQozdeXY/Il/e1/q8cH0MMuKOhseylFqba8nCMs/Zv85/i0EL/GaVC5W1uMzW8VVWIUTaWjfJF3OsF+mv/80rDRWQrA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771926894; c=relaxed/simple;
	bh=64VoByH/9MpzrIkeb+zFn5XUoiDjy/WLQEMzPkTJbiw=;
	h=To:Subject:From:Message-Id:Date; b=WeAH40v7wF+3CEgmHmQQnFX1nAR+wiqikzFTrNEgmzWsLjA2R6joU3txCmiasmy6SVQRQ7hLX1RO49CZd8AjxPAILmUOGyQtR+BuTPGduQ89+25b4Jg6qV9tPYYCbg5CLQXXFBk7Gwz44ltO8kyOAClPt1qIlag/IirEAJ+gtN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MWSEU8Ka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MWSEU8Ka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04BAC19423
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771926893;
	bh=64VoByH/9MpzrIkeb+zFn5XUoiDjy/WLQEMzPkTJbiw=;
	h=To:Subject:From:Date:From;
	b=MWSEU8KaMwEnLQMSfb163CzlJxZIxDjtF3ErqHGnXNFDbYQkyLo7cCn1xGFUkry8r
	 re3eBUrOpZa7HipB+w2KjcMRDJBGtRHSmgLx+sc3NAKBKwde15iyJkz6JcO2EeQnxL
	 uvJdvcjICwE9YJZFDDFtMFec7qugMN4ZUxaVEyHbNNEo6M+5zUmmp294iek/y8q6ME
	 rB/m6t7RL1+V5LLcIimz8SdsoUaeuyGsrAd8PjGK039Pido9+tc5FiCh/2JfcdzaGw
	 5sZyUTJugNUKupvqfTj1ow3IpuVLb5lj1gL5288/Un6alNv67mmSVTgitDm7Sm/kQZ
	 wKc+dqVHKDR0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90724E9B245
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192689358.23901.2658569958718924749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1619a7d3918fbfdef5e69abd301de7cd04933c059aa46b7b654daf2b3ea4fb0
Date: Tue, 24 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771926893
