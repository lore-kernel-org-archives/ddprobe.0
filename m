Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 491E71F9F62
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738530954; cv=none; b=P89byehe5TJOxSfYb32MVe0IHpApjmCwoJDwJ944CUFO7PlQe4uy5X4AI3z2HfExY4NrExqsSA8rvT/L420A6pCP3TSmwLCjafkx9ObRUx1qaP8pPlNS51u/xfCzNp/6l0K0vpi5ZweIvg2sppxH0K6/oPv0yu8zxyOnojpEru8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738530954; c=relaxed/simple;
	bh=ZV0fGQBxST1DPTnTdH+ysY5I8QlKeCpOLAX3Cha1RHI=;
	h=To:Subject:From:Message-Id:Date; b=ElC5Lb+i5O8at0uoT7yDhTPcyZqMI7TAHPphKTZn2+jizf/kLqxHw6mEomHrA0Oy6XAUlTBVeGTZsW6LLx8eoO+3uV7hB2mXj7GQLz996TFzP0vLee4BFpo5W1wNH3SWiIcHhiYy54FupU/qDAwDBVTFMtD6SoVDU5oxifViVg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCzu8eo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCzu8eo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF86DC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738530953;
	bh=ZV0fGQBxST1DPTnTdH+ysY5I8QlKeCpOLAX3Cha1RHI=;
	h=To:Subject:From:Date:From;
	b=NCzu8eo1K2H0A/T2SMut6WFRuWN6Na8btfZr+PTjG0ySGEhB31Te/o3iRIA+TO8Rv
	 SjvU75mwDezS44398kE/B/K4Xk3rc29+ccWQDfpBvIXE1w7o+kZpRP6Q3ccJpYRYnn
	 XCg1u3mbm8OGHaQEPdn/pTRqwGttxJaSJEzayAJyx9uIcfakOMiMZ5wSYwDgroRseC
	 zowUjPZhM/T+LNrfri4ekxYDxUVK2NV4gMg8EYifI2XZreOkgxahp7OqiPah1NM4Ey
	 YZQe698so1DvITFSroXsUwD3Fd8ge11saoujqPJUAWogMSd56ZM1kDKaJw4T57TgkF
	 QVsAwP2dxigwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A06FC0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173853095362.28688.9579053665903858130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d631111697298ce64914dbb699fa0180731093f125902e1786a74b30dff73e3
Date: Sun, 02 Feb 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738530953
