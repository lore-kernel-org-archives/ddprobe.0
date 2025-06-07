Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1244011187
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749304794; cv=none; b=ekY8bu3GZVv6XnCTpsl9/KZJc6wZtTimqsvY2ACdpnKg0CF5ReND67E8w+GVNLtJpUeisczBvs6NvW4LJCuREAhOaj/MnEWiSG0uE7JN19uZvaj6nLx406KxqsrfzaquUuYk5O+C55ywJncUnfeIuVuyIjGDKchjM3vsypvEqYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749304794; c=relaxed/simple;
	bh=CJS8g8IbGcXam4cGrxm5JBQwlLyopAvktVs7bT1Hlx4=;
	h=To:Subject:From:Message-Id:Date; b=kvzqa9/V24dSQ/R2ilTPMT5K6/80HBKAL+R9LlyoXtnNXlwUyU6UCPQhMH37DxBLWahZJ/5Dewnyo723ic27QPNHRoS0VSrsi25yjTd8Y64OQOGRCFznop3EyPwWRCw4dtUhpPn0XhNpIPah2PJvRa1VhkYv9hA96iazepnp0FQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=px0wr0Mm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="px0wr0Mm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C59C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749304793;
	bh=CJS8g8IbGcXam4cGrxm5JBQwlLyopAvktVs7bT1Hlx4=;
	h=To:Subject:From:Date:From;
	b=px0wr0Mme5JgXVSPByRGuGjLsM4gXSXxob9DMJzXV36Y+QGecC+q1ZTlgiUW7DdDx
	 1jy/pMJUcQmSegAuZ6773EY0Q/BLDKTQCFwNItNzN7qS1jM6r6+FgLOp6K+SnOAUwq
	 /HObJCmZ0/j6AP8Z1JQjNlXa0WDxBuzsC6UzVTvXFvKss3fuq/TTIoIgYEKGnloub9
	 8a9ulCZVvI4RkFwHTynmNxzgXmmpPF09AeV4YIfp2RcUjvR5ezSV5BxsEH5DmSJGTm
	 8XgCbxG3A5ECo8yzqZPqDPnrFYOxKFovaHVVke7a1+F+tBPw64arM0n+/ZM9Iko5v5
	 RYca62eStLXTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F84AC61CE7
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930479357.28475.4535377351406444334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3053bde58fa70bcb8a30f1fa903b73699cd7b4a2a11274525e7315c713b6d850
Date: Sat, 07 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749304793
