Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C9430594F
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769510034; cv=none; b=J46xL0zfXwIMW7xAmVb8ACPY3BVbo1tvi6fsp8SLkCOa+dbCpB9Bt0hs4qjScVOIkp7G77PnBe0MT5PKilAl0yzRowWxJCTqX4URp20VAZJGOhR1Vi2xLK//T8wRGUZqIEKbV8D2jQdDB3YAgbRs3R8AzNI3/c6fCoH54x8So7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769510034; c=relaxed/simple;
	bh=RX79iMGZr3K6c18vH91xfNa2vXBPqA3zetrIeE6hRp4=;
	h=To:Subject:From:Message-Id:Date; b=MvUeWkBNmbmFDcdZ3gSXSlpldzKiPGQVSXv2B87nIjGzvnAblO/d/ot2xmxGUZKiERqKQteGlu1M4kH33DNNpwWf0ohSLSyDh9Y/yHF+nApXTk5qtUvhR/hsenKtfmClOUAiZFnJJB4NeD+zefzR3ud6jQsZLZn5ly2HoOca7oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqLcly0s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqLcly0s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50B1C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769510033;
	bh=RX79iMGZr3K6c18vH91xfNa2vXBPqA3zetrIeE6hRp4=;
	h=To:Subject:From:Date:From;
	b=NqLcly0s9j+qmzxpSXEU5Oq2oXdbRnSXnV9J9D6+YIhzDc+7LuwJpMNhqXDfTJrP5
	 0eZzLkeD9oat+5Z1m8LpovBeIzktNQjKPb/61ViqJ3dqk+4fTBzB2bzwCgKoR9DdUj
	 EXZuv6C0uUpSPVR09kx6S619x3cjJqRlaLSbGK5Os9aQHhclTD4yOcxPnh7WjQLfWo
	 xbjcAGUltNFfw+cnt6It08gLL7aBpdh6PSK9MAnmnDed4JOXdkqgEyZep874XPsyIj
	 ugvD6218RG/P0sqeRdm9jDPSUDkxjVtMH69tysKuSFG6jU2hcNNxB2wUyaCXLXXWoH
	 4f8ATg4ToK6ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92632D2D8EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176951003358.24927.9711938168349316526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2e9206e40b8ce1ef199ad4f11eb9017f9df61c4656f40c7442d5423204803af
Date: Tue, 27 Jan 2026 10:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769510033
