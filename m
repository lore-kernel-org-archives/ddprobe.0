Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175E22F25E9
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758143394; cv=none; b=Mi+WiqMvjyKKzWUodvovgh6qK7PGjOOYmsiPbvbiPwtmUsbQeKvD7i9KDhl9XwaA09jGvrxeM8+mlLOwdtE1bDg3oQf3GBoP1f2z8Xt4j1yPYeB4luHI2C4/fbCB4lkT5OxSn4zrxpl7Qu3ZMsj53t56QcrQr/srbup4CZWTDcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758143394; c=relaxed/simple;
	bh=0vNi62E10BMKUCgqLzCTkvMcRyNFPRmgDmu9gRH9/z0=;
	h=To:Subject:From:Message-Id:Date; b=T6SUGpz/43fUxvN/ZeynPVkUnAvSpysPgJQkVM8V3zMuDjEeni46NQS1VWGpUMeYm6dmOncye0SX/Ci1Oh+cN/eqZn2h1eBncanpT7AJAIs9FYCCZKb1IQPmKabMclRt5lU1/4QtEeWyi5NXBDzsghymiXsG2/jNPwvc2L4wQ5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uB2joaRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uB2joaRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FEDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758143393;
	bh=0vNi62E10BMKUCgqLzCTkvMcRyNFPRmgDmu9gRH9/z0=;
	h=To:Subject:From:Date:From;
	b=uB2joaRK/6LQdCMpR5j070YOIeVgKxOUwn4fDtY+iXdPrWxHHeiW9izfJFWizC/F6
	 +GhfnWuPUJpYK5+xSvw81Za5ZHk+j/F3Bji3a0je1fJrqQQiMLAfmOWs/aV4hp7vUK
	 e1FwHxQWrlOZig/0d+uY4ROEq/NuRY/MsueoURc4NcJftCsQy0QCTOv9v2rS2Nnvy/
	 rKEaJzv162WwZn8tTTPF9n3XYNxjoVkIFSYZVTs8W6v4j+3tNoJ5F5KpmFiUtjhnfO
	 Eje4xnEmpMcHyLISbq4MNpKesZqQJxyB9eeEg8U9siZ9QFs76QiAjJjItThSaa4X6s
	 I2fbgGE143PqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90948CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814339358.12854.18308001926542958469.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eb94d74c394d88d62a7cfdfa8858f27454eda5fbd6c4e271e6c7780fdb7c428
Date: Wed, 17 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758143393
