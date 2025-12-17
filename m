Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2EF8310636
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765953235; cv=none; b=NeC5qw4aSUhqKaKhVGoCCRt9C5YUtTiEh0MwxvtiDvFOcmIpGwXIlUyxqgShKCRBWdt3Dd35HaKhoVbMX+jCaCmCcdLkof9m1RjjZuUvWhjAeRe35Cqpkh5Q2xTYR83SLWic/pYIhL4D8fACx3t4NwxB8nBUs1Q87BMVJ+WJGC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765953235; c=relaxed/simple;
	bh=H6cHLB2zYicMS73mcLUEN54W0hELNIgAlkM5Zulz0Rc=;
	h=To:Subject:From:Message-Id:Date; b=bCi/8KVEYF6ZkuFEkiSxmPmug/Q+9hKYAA5WFvmbgPPVXpymo4YBEUNfwS5X6xJJh8SAeEsp0UmV0r79eQLD8MEq6fD48uvLzvyrM8blhwIty7bZBNxODMDDK8BwWJcLLuQJhDG4HdlnlfwHYuapLQjJq5iZHpfyE3Oi6BRT76U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DOO6UwQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DOO6UwQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A7BC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765953233;
	bh=H6cHLB2zYicMS73mcLUEN54W0hELNIgAlkM5Zulz0Rc=;
	h=To:Subject:From:Date:From;
	b=DOO6UwQQ/ICB0geDaY91t0IhTYH73Jw73+Hi9FQ9rWGVXlkvFFDfzVNQPd8rVWQ/j
	 Qtyh306c8sbc14RqAn2F01mUDhwFZqkIQ5sd0iDzB71MgjucnnBiaWmHhb5S82IsaT
	 3zDYtBzBtWldf0nOJvvJtSAFcDj+HZgFmJJgxcIMsPNCNEsjHu1Djr1pSIu048GpsT
	 CsALKPC0Ij9W8yUMBUf7SSH463Rn1/eZMr62hCnUSWhMhxskKnU6b1cuc+mvqPiggN
	 PGife+h16+lDFitU7JsmoQA0a87zORmdT3vgwbngelxxiIv85eXkHpVlY97XKqVi3k
	 6+Pt2+2QBEOTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918DCD64062
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176595323358.5186.3662910259274920668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62432976a756d8540522d5bf2e2c724c99e37b10e15a100c9d4be7f4af335b2f
Date: Wed, 17 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765953233
