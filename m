Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F43813A276
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719512663; cv=none; b=Budedv9leESg2QFhkHOTiMP++DpdPMub09o1qJ8UfNBhiI114pRJzU9grSIsmmNodC8OYg1TibEm5af+C3F36X9LN6PP+E7teOzux/1eLbPvPz7QXFpGDRKzCF/PAF9DabInJRVjRLr4Lg4VKwGQxsqZZFST/pRhAvTgxPcsVag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719512663; c=relaxed/simple;
	bh=yLOg1P8K00lI/C9SyVRMlk66yB/gzeUOjp+z64pdG3w=;
	h=To:Subject:From:Message-Id:Date; b=ZoLc9T8TdZLrfvHvGQrby0BM5jY7NXGNQookpeKfGCfLJBFK0fW38vWCxh591AlShoXRDo2Dhf4Z42WAVJpT8LCPBsbCThu1TmzSsd5UGddTkg0BqPzmaj4eh0PmO02BfZVHuLmHKSoGxEoSwfIwYjTW49Z9M3fO197wO/ausJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XZOe5Tjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XZOe5Tjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38C3C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719512662;
	bh=yLOg1P8K00lI/C9SyVRMlk66yB/gzeUOjp+z64pdG3w=;
	h=To:Subject:From:Date:From;
	b=XZOe5Tjj89m/VY2QGhHDt5HPsUswmvP/M4ae8wSGD9c3uPHay79OlJtr2O+eNS0AF
	 IKA+4J3vZcUkkoCFm1swAYDYQ7WDGwsQlnMz0vo0if5F0kV+KNm3TaHVSrJK4MgzCb
	 RINAYSKjf46MdE6fIGeczLqKhJQTdNbfxykxJa9EP0eLDWBpD3/GycTc9srJV3nV7q
	 Pw0RM/GOrQXxnZJvhj4ywNNblvNM5ebVavYgHTlU4PSjqS2UbRdTGrDsUwC8HsUfNN
	 2AaBQAxj27nMtnOwoOMviJbhHJsSw0WYDjZ1SYiRPul5z3wmmXsHHwH7QQIt1XZFwj
	 KYtRQkuskANDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2259C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 18:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951266278.26843.16452498365926288743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f6993b37fbfa51d136cc7667e27334c286a3fe8e018641a1b5557c602487896
Date: Thu, 27 Jun 2024 18:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719512662
