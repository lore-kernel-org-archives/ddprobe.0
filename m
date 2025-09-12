Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ABC31B043C
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757645394; cv=none; b=eCj5m5ZkeUbSRwmZt/uXR4J5IhCutgwM18b8JWrJBDGkdQVd81sNh6HwBq/0oOXV99r1fWn7l5qjKVniUhhAc8p6LlpSNl2Csib0FMFxaL3SbWU6upfj4g8tTG2wwHhYzpJgJ6exXcqsRUq2kmZ8Ga++iTWiQn3xPyiOVmEyYWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757645394; c=relaxed/simple;
	bh=AFVxIxdxSwer5eoZ9tbRUzNPhqROwDAlRjuBkFaM9pA=;
	h=To:Subject:From:Message-Id:Date; b=Ts+j7Hq4csCPvr6sGvnTqPLX+5ab6bB1mQjIaz6VQNUaGUPNQEXILYynpguu9uigYEjoCeri6hCXEK0mEDdFEAa+E/fIq96lHworNFE24t5AJ+v6KHWk1iZhHGtsrQ0ZcxFrLxdKTmcIP5jn9uXhpl+LCCblNHTee0CoaIb923s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/9puoeY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/9puoeY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0248C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757645393;
	bh=AFVxIxdxSwer5eoZ9tbRUzNPhqROwDAlRjuBkFaM9pA=;
	h=To:Subject:From:Date:From;
	b=Q/9puoeYBJD9FTAv8+ySabk5mdrQatLfVPsiiyUQt8VZkQVgXwiSKpYUTdSQZzprF
	 Qr34Vd+hYZ21lAFJWbzBUBCjPRCmk748MmQBMqn/86jHPWGInccO5Q9SH4GwhpdmS0
	 GYxaOTCbTobl2kdMaBHGi/0dsozk4KPYxrmzBI3xR5grg4VRNvA6oLGywEPva6yXYH
	 42oAEoyfpUgAsAOpySVjKtTPk2OMp3jNVB0besQRqMI1agKnont3J4Ygpt+Ch1jRky
	 eSEGpuQj21TXMFRwBpR12GypxsbeutfrF3SkPyCpSWjH7yMgBZ/hYgJpJaVXGm9Ttm
	 KdIglsHW7WchA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE73CAC587
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764539357.19416.11446353450382270329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ddba626b36dc1b15bcf3fc4d6d512d3cd1ac3d4b7bfcd5500ac8835362db3bc
Date: Fri, 12 Sep 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757645393
