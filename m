Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333ED1FF60A
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745827194; cv=none; b=hkN3dVpjxpOtJGcjru/gtsa0ubt/jVcjHOmP6VHSGKeK1SuTzBoaxenhqgQz7AHUaXwOzGSp0HEqk4iNSBjfmxFJKZRHh9mjP8Zzjvz4sylzzpPj7SE2z4mUSq+5AuIGMvGTLVqo5V+u28nl1YzOCdAN5Gj2jQvtdGK5o9FlxWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745827194; c=relaxed/simple;
	bh=j86iyqE+jLaUygUv9s0Wsb2EVAm+Rp6mxFB2hmCcMnA=;
	h=To:Subject:From:Message-Id:Date; b=kiRY9V7hP3kEwl8CVoNSt9fXoT8k96HM+DaCtFw94TI4Y0elO03n4/1cGeSXnKSu/hguw0aGXWiThgBzL5SG2AQf8aPvgWrCfxKQ49UsUU98Trdwt+DPEWrZ5hTkZFlka34X4OJZhwqobXLYayA5unHMcxYeOxrdUouJoENg4DE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JoGkuDwU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JoGkuDwU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A416FC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745827193;
	bh=j86iyqE+jLaUygUv9s0Wsb2EVAm+Rp6mxFB2hmCcMnA=;
	h=To:Subject:From:Date:From;
	b=JoGkuDwUBYtLKvk5+9IHF2otfkSi22OC5hNlF3iiGBROCXNUk5sSKONCf+sP7ybnw
	 Z0B1lKVVsJ2ThA1TuLWBykwEl1Pee0utrB6rTqUFzO2QL0d2xpwk2qkApuZeReykB1
	 HEPjQx7tTwKoW0BxMR0V9d2xu9v4FgotGrd6+HMhK/DMmNhzbbizDvalsDjQHFnEq1
	 t4/gVlDcTq7xXK0M5CG/XkuiEyx8GKiPOW0gbOoOlyxNmyLXnM3WPG/yl/khCtSUVa
	 8RCWXfZiH+HwtdhFDylHtFg1kIAc7kWaOu6Ep3GUHgzGouyahAUr0GYFC+KGzxp+SF
	 w7SsOo0BjiPQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C48C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582719358.19658.5465553054862819607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 645288255ccf1d77c27d83547cda481a123abe4268c10d4ea18a6adc2bc85cca
Date: Mon, 28 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745827193
