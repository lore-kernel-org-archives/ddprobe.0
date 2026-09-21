Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56139274670
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789961434; cv=none; b=KrjoZJyG8tvwCJXY1lcFx7nRp8k14cAgc0q6w8ZhMdwcc6mhjMZQFbcSvTU6NA+9e6ouztFVAV4nSw8j5dsHLS05JmzrO0aGFI6A4JbdzbgS7MBFd14raYiOfdXGVqcRdTrIgobhM9rFVd2VCZo0dgK75haeELV04lmhhGKl3q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789961434; c=relaxed/simple;
	bh=tEjCZh0djoHwVce96YyLhjGqXdPbkHnOg1pVmg/Wsh8=;
	h=To:Subject:From:Message-Id:Date; b=fj2IpM/zKinmm4NY/0tZ5eUnYtyuvThZMu38MS/Isr/t6ns51iLaR4u4ZBWJt4jY0RCYknY6QYOAX0jvX3kwpQmxdyOjvZK8TmTT/Lb/gtTpSLpYAwTcYAH0vudSzzk5xSyGL8ab/z9qIK+FxAzEExAcgu5NwokZOeNsxuJzYUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2gmJ9VC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2gmJ9VC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB18C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789961433;
	bh=tEjCZh0djoHwVce96YyLhjGqXdPbkHnOg1pVmg/Wsh8=;
	h=To:Subject:From:Date:From;
	b=E2gmJ9VCfxo2kaKC5KIW8nAFGiieF6tZsyWbeFS5VFyxQ+aeCXyc4zxgTc9Th2Fza
	 0pc0Ty7RjEbRG05iETvnIaAY7VTy74ShtqOwwp3asGk0GkVOT17E2BqqvwKGIH9ZwW
	 xKscG8II2YRKjWqCm1Jbvkm67Ia+KvaGbE7iRhontwHDbrSMuACPi1JxEWSVlc1V2q
	 hQ2MZv1QQ4WlGJ22PDI7LZ6Nef/rSnaH2yCp7OhFqzFOiZAyqdm7RBz4ChuN1UVqHf
	 U7TzEfYDKPxaL04cypQ/YV0Nh++ScrWJcM7jrThBBOWK0R3AA5jeAe1C/5lDV70+67
	 6at2ppJdifpDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5C5C982DE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178996143369.27855.8184304924392950777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 823d11f9756bb365633d5f5653d997b50cb0a979eb1e9580a8db034d75c9a88e
Date: Mon, 21 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789961433
