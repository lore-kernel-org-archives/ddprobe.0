Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A35D35B63C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773991494; cv=none; b=ZTv6zl5kp+sEeMwF8O8nAq4GcLD5V3dEpL0+xrLtcrG4GtQ2cobQ03j0l9dJhEJpbn9wbxIp4Jz7FzSVg1zkR7OdLZfJxN/QTCKxPqCykL+rj/uJnViXaNPhUXMqK26u7+jPmxrPlc4qG36Io9fxi9vBRD4eRy2laA06f+SSkzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773991494; c=relaxed/simple;
	bh=0bPjXDL9+Sb6gXQJwlENtGSQMj0cqYKLRLITCaw6H+4=;
	h=To:Subject:From:Message-Id:Date; b=XW63+bvoUadMpCPWu00niDLIeQZ5n/z+OoAF/ZUY+VoDlv6oB6N5HaZF7M93rbcLtQDmhEHtLXR5SsKC2r3Sh9ErqVPCw/PMmC+oZlE7W+bhhjOSxdCfbTyOx6E2Z2gY7FIMm6pcJhdfKC8w9+EOwpeasiPJCjqcT7BvmCHwUP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqwmJVBp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqwmJVBp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F38CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773991493;
	bh=0bPjXDL9+Sb6gXQJwlENtGSQMj0cqYKLRLITCaw6H+4=;
	h=To:Subject:From:Date:From;
	b=XqwmJVBpcDPU5F83aEsgbfVnsFrfafvcvF+icqDBZ9+tUFFYUVkxvkGCJl+o2UlQY
	 3LSIV5Ypjm5rjSFrwZ1JNt1Er9q6K52yYJxnWijZHg/msr6lIwSANO8FjunyBE2rjD
	 OaY3gHsk8JA8fJ47vO1afhzmQ9VAsLj/TLpGkrXJyJapT6U/k/imYJzS48tdnkPY9S
	 l9uZoiqUmeDi5Mk/Fv/d65DWMusBXyCZf5a2MhpqrCtjV7HqoddL5tdaNxBayannOQ
	 UtDQegk1Mkc9ZKnjgXtNgTQo/1sUrgSQDT11/i3iOkJhW2GNBeOgQYIfjZuRa1/Nm6
	 SS35bIIFVxsyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901C51093180
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177399149358.29911.1499151599527345769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 675808048c9b42557085d88265651a7e45390dea29f7366895b3763d4b7d7a61
Date: Fri, 20 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773991493
