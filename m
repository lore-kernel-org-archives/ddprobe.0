Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156AA3C6B3
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 09:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708506497; cv=none; b=C8Igc42Yt574BlgTcocpcQBvYCAmugXpZapjs8UlHZVlSc0EgeVInTIF6n4A4SsUhwMU3teiIobgmiMokWNi1w0ZIaEmYIiJ+kcpmpxGQBWG3Wm3HvlgsGB5fTc5inN9usN7SD7a/wUfFEtPFMFXEKiNDoLQzN8pB1qBAq9pg84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708506497; c=relaxed/simple;
	bh=weMfLoA8MNqAYWbrfZ9ufR9W7jkCoL6FKAM8M1f8Gk8=;
	h=To:Subject:From:Message-Id:Date; b=oHpOMA1XPe9PnlV8obAznhcOzNxx8+KTL7nEx3fyGGUoghcwJKE/sK3Y9qGk1B7Ql+oWZmKHMA9AFoh4IfgKYDNAuve5p9suSH3/6ENsfHJrMatH2dQL0AATjVlywO3BLELax4KMr3zgejJaniZT4QJ1l/+wsRhA4fxX//5nUd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stAolJ4i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stAolJ4i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D846C433F1
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 09:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708506496;
	bh=weMfLoA8MNqAYWbrfZ9ufR9W7jkCoL6FKAM8M1f8Gk8=;
	h=To:Subject:From:Date:From;
	b=stAolJ4iwU03tOr5dM6zHZshq5aRnEAvQomUITn4p8dFvVUhh3tTP5gsIuz0mH8yb
	 o1/c8+/k3h0C/WDCoRMnZ5fmSs0/wsmlHmXFP3Pi5mHvHqgWKrRt0n/EIkmfMxHIZT
	 r1+hSFCX9zk+JAhkrTplWh0D0tb8plsUCibO3ogDS6jVCqOf/nrqODOZogjbM7NJVo
	 hOiV+IFvruNRi45ScuWk1sDR8o5ofwThupFKS2+ZFMgWy+PHhyc9NSI0+B3bVa6xWD
	 Rw+w+LdUfi+R83WcwnxPUZTio4IXG44JWv7djOe+ZBvmhgH2HDhFH9MaIemHzxlfjZ
	 M5V0y3oC/QFDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 651ACC48BC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 09:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170850649640.5459.16527001559309880186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640f3fb4ce3494cd456669544e1f6bea58c921d7e8853b1dcab623bd675dc2ab
Date: Wed, 21 Feb 2024 09:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708506496
