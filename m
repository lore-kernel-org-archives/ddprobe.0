Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576FF3101D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787461834; cv=none; b=imllwjMJfk0Ihwrpx0rMB1BhCEbkPY5ZaS6V+d52mi/wB4AQ6QBf7Lnhcszt5MfMxr7vWKpQgb8ytv+u5WpnaaKLCaQkGGc1CHbkTyhPfXTw6BrXirG0hJkp/pfiolq7dRG7Mi3wiWnk6bLRths3Auo8FpX3nZ9DrXH5dsOqTWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787461834; c=relaxed/simple;
	bh=UXzxiybk3P+CFCAxV5yhs7JoEvFbvj5xSI5PJjFOMgw=;
	h=To:Subject:From:Message-Id:Date; b=ldJ532D8aN1KGJvfSblPFbosn2+H+JB8gmKIq2NYFX4IxJ560T9KRSZkUGv+c3H7ZKNyYl07IFX9jwJoo3bPYbhrizmPmrmSsZlzhdcdR7clrqmgGMJBcba/NGDP0jkj3J6dJwntK3AJB0nfHLFK1Xrbdoc2kTEKwN20Xt1BS4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6OPE8TM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6OPE8TM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDC64C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787461833;
	bh=UXzxiybk3P+CFCAxV5yhs7JoEvFbvj5xSI5PJjFOMgw=;
	h=To:Subject:From:Date:From;
	b=p6OPE8TMZVRTQLIF1AHunzX+pg5iT6esekc24ffm8FPb7DHmiTo4JaIWqk/9Tzjku
	 D3inICWc231xgx6+K6y/c19PJvPTDuG1A/9/1/L8a32OZwmw9+UHOP1xX8mqJgC4Hf
	 EwTcL8ZFRXsih10H/W86a2eu85kv91bV4WJyeBMD92ZAnlfcBadieABaupjXLEoTdq
	 F1bF2ElFkGwY6R6/1BPvXFr/4Lly1XjtqPQ4mB6t5NGyJhNOAxk4GUhYCcUblWgA5S
	 dwttcSLs5eBOtRMne4VyiBLpahCoWY4Bi6DWYE/oyBSDsq0a2JadW0iJVFUGHI0No2
	 AdAKZ4ioFgUlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B340BC5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746183370.29270.297650100934676329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d009a9927f5cdbb41b50e0986816d74a7646ab5acabe9f3d8752bdf46ea2bc
Date: Sun, 23 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787461833
