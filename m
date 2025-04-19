Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C1318A6DB
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745050794; cv=none; b=UzBJQ9ADVzwvdyjobSUDkn44/iE9iuX6kHjtE5B8A+ltZIan2yEHnnZ9vJ2IGbJqajZFNOUTi5Z4jvcDInVED0yX1szV6gGdyVrZMngHYjDq8LYoZ/03xNHZiULixlC9Md5RYlyrxbOM/5lQRb6bUFcQUd9JFirOpch9ivxMfm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745050794; c=relaxed/simple;
	bh=0ywE7blq4wPg0p5iFDXnL26FXNVFuTdf0hzJ8eq/Vk8=;
	h=To:Subject:From:Message-Id:Date; b=kx47eUj4Kmeb2BNhvR3suR0UiX+ljjTSg55nHLp0ekbUWU3p+XOd86h48qmfvVD0A6F06UtLM6ykP7rI45bEKcf2cJI4ZKs/YGnUdTz58SAQrAz+6G5fkPGyoVnPdM4xOS0tnOoPpUeo1sAEojl13T58/CXgz/tgFLuYCNSCoMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2eVHAa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2eVHAa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7041C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745050793;
	bh=0ywE7blq4wPg0p5iFDXnL26FXNVFuTdf0hzJ8eq/Vk8=;
	h=To:Subject:From:Date:From;
	b=T2eVHAa4c7oqab4gCoDDt7/81ggpX9Y1Z9SEHtY1KdHH83lrqSTYIWcHaFpdS+2Sh
	 RZmOl+eaCJhYB7yWaWXyKlrW1Gu/ENlXdP68ccZyV3bpy819xv/PChEY1ULiPRQM4T
	 y9wjm4J6h5i5qfse0dL+Zhdh6g502617fsCu3evxaPtxeB0Ed9Q6pXKVUzzWBxyuRb
	 PVwVPHgLaSHG327rrAzOSiMqrvNMuqmWYCGhJ9pg9PcVPKKskyxfBY2AmazM6O/LUb
	 gBWJqZ3g0qQonnwZp7ljET6aIfEOcHfc3/gI1bGwPzMbp/Bom/ltvvTSCGx99K6cod
	 XOkR1/oQ5woxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971F7C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174505079358.14794.11786278878341821955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59933ecc657de2378b36ca19972013310f0a6c76cff5b9872e82cf3ba8bb7ee7
Date: Sat, 19 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745050793
