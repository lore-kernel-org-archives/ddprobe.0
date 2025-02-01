Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012EE1B86E9
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738421154; cv=none; b=Cf/kMp2s2l6AdEhMKeHHbtw7BtWl1/y14IRTnIPjT9GwRBslCozqqU8bL3KW7zIpG4UgChR1+KvxZOuMPkawWA084jm0UvMF2179jUHYV/bMKBAH3/DtSONBJa2Q48zROfDn8ocrrJnt5X3PHyxNjbECGyzQ6qL1z7TTxd357is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738421154; c=relaxed/simple;
	bh=YYsTHV6/NPKRxO1Xkf60sFXTRnnPbETjwQ89aqLvua8=;
	h=To:Subject:From:Message-Id:Date; b=UFZcsIhW6wR7y8cqJLIIrjQu98J2mCM+syU7BOpiIHawLH60K8CEYTTrjrE7pZKRQv3P8bHvYO7CihaTUl7VacfZAF5Ox2mMYjprLv9LpLbwtDGh1Q/vEFZPIGXCHtdkBn96Md2Vi/rvbH8OCM705Yq0Qz4H+vFZuHj947YNRMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8f1i/T/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8f1i/T/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4A9C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738421153;
	bh=YYsTHV6/NPKRxO1Xkf60sFXTRnnPbETjwQ89aqLvua8=;
	h=To:Subject:From:Date:From;
	b=B8f1i/T/FSwiVncx7XX+95tebDOyp40iXdrnQchjeqfeTIZRllfme0/fo6JVXdsm4
	 /x/EOHzySePng8Db6cn7JsiiUuY2/ZriseQuYzJV1WrH7rjVHZ33d2r6R40scNz+0E
	 PydeJI+DprMng+kbyo/ki1n70sHyd5D3VJg8tOW9brC+Oy8J9hpHzkW8HtiYFdxt4K
	 mqL51Krns71I94+OZnyxK76/2+KNO0K9xl8x3uduo5ibDefD9UMd/IB0X/UDEwnnei
	 7FYEIMj+Pndm+kUTH/inAw0xyQPtEIZfvNADF2YWVSFYZQ9BFrf5ilAyALwF7tD2Yu
	 4UJhPl9bVhH6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55E4C0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173842115365.2123.4094447639398468326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4690d86ccb7772cd5aac24b0a760a5af6378c774000bee85d82b17dacb7cea4
Date: Sat, 01 Feb 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738421153
