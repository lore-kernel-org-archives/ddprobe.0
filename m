Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A74538A715
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778761234; cv=none; b=tWiUJVpqarJbSmhfcZXCImZk0+gthlsTTtRgSYPd2fZSEsXaRDT+Vjct6nu8iu2DUVE7sNsBsCf+ZEDV7HUXMQp/xl8/zAX2nSjEammZLd3ZlL95MSSrr0Vgty0Ar4ZtFs7u1rUpFI8HmqGyCJmIpQtKi9SjY5SPwqjUvAymqSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778761234; c=relaxed/simple;
	bh=N+ItJ6Kvv6CIvmK74f0giWT92bAGbM9szy5sRkIZ0zk=;
	h=To:Subject:From:Message-Id:Date; b=fZLRYDa5gCfHj42s1reXDgyFKErGUwNzb3PsjCxz/Xx/Tcg5OQhpAvwxrSRbMN8ebQb++y3DMMCGi4BTh6A6IZwTGfjAINLbh89MEPZ3Wc2RkHV0pYBvpWEUSIAg3qtpaBfn7eHUsDMmDNxu6/OCwyHGeq7vnQTNATytMFKez/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hxGTcAm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hxGTcAm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DB1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778761233;
	bh=N+ItJ6Kvv6CIvmK74f0giWT92bAGbM9szy5sRkIZ0zk=;
	h=To:Subject:From:Date:From;
	b=hxGTcAm8HJhYWgbpDXwNHHTuA4oaVZMih5zsm4PNeUItyfLs+0TKEdhz1dW0ElWQY
	 zjIECcdpkB5/HDqajKF79qtLuE7/7xuzUfUqa0Tbn1ndy+MPpmHfShyIuhXPmUSvaf
	 5gfhbEP6/KLqk36zlaVv7u6lcyN0+ALWZzKJuPgBmQ2T/OifxYOo6agnAu1Dk6rHRL
	 sD7l9n4200DCIw8QfRGw8d28TahkUbquMtKfApL9jbQMDeHKhCYP/wq2LBpUgHydjx
	 qpwR2SDQisHBu++3fxFihiamm8nwVOPER4MruDsLp2TAN+YFTHvhkxknZ6g+zHCEZ3
	 Rob3xq/k2egkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA265CD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876123368.10412.17434702856527504037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e73bfb8ea6b53b73c37209c852e54a2d19e0b77a3f832b11e53e9a1b9b8068
Date: Thu, 14 May 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778761233
