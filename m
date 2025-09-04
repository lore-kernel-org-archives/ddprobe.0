Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3436F3019D9
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756992594; cv=none; b=ZPvvGmzBJvXqFko48FmWxb81vUYXwMQo5Kp4qLDKMwP+NVAHB0Idi1zWwdQFEgDxALxmt/juNRCRDAsQbqDD0tBqH3cPSc9cp+ZfYENs1g40IdZRJKkq/8YjrHuzEJZ2iNqnpLZPvHpTlgLpwjxT+o43iKspE4cXwj8K0w24l8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756992594; c=relaxed/simple;
	bh=EGEG1E6KlpGl4rBBO3jX8giTZtaREIjsdvypPqN0GgM=;
	h=To:Subject:From:Message-Id:Date; b=hqNzYjTn4sG1DDwqT9acjp8v2tX2gzH3V1WSPlqCwwdE2n/ZU+BrDLrgLO0Q1IBCE9vvxEnvV6Nk/v0v4hCiPrO7rw2c8wLHKbb7aFh2td47RIGX8tGjPqmwitdAFzVmdaW3M5VkeOSl8lx2QQ+scLW/9dCgfIjgdwHOitMhTNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZVRjtut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZVRjtut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8933C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756992593;
	bh=EGEG1E6KlpGl4rBBO3jX8giTZtaREIjsdvypPqN0GgM=;
	h=To:Subject:From:Date:From;
	b=CZVRjtutqV8LmGrmSW70jNhF5ru/o9o8fmztv6/aFHBkbb0J8wU+PmJ7L6SeDA7ll
	 Y5pOvuuMjfXjaMCKKoiiBAkP6yjyf9jIc2yKXAep1iP58sdyBDxklaOZBmCPzIMRdy
	 dgKe6Qb0H59xq0YIDAAN4uPp3BqJ/fIKDVIHDRECbfJbIQoWgzKV3PHeXD6tC9t4sL
	 FzHoVUK3orqfCofmhrt76LrO/6j2lOHjkMa9qeFB/J4cEfQG0gBUVT2YhYRsJp/0e5
	 KNPLg93WqTXJ4fXJHt+FB/YS+M6o48+Mj3jksAzjnnz6oERwOHn+q3u+eANWbcR74b
	 WEfLhlG6iOTUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B6ECA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699259358.16838.14440078880090812426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a745229996aa2d733617e7a7c6b9960d9cc888c02edc0f1d43163fce688375
Date: Thu, 04 Sep 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756992593
