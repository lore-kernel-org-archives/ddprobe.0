Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 860661A070E
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 17:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728667554; cv=none; b=uUDyZzdJU2p/y+Ao1VXiybNyNjVHFK3lFC9+yQ/Rg2wz6Po+PCpwsbQDmjhDr7S8/bk35JTeTKQCAJEGurrx7PAU8UNOxmwM+J7CyLo8gyR/YdoYolh6FrAR41/fZJqJ8AKQ42byGoKeA0P6nPmuqEZtAWmCEjx8i2+bCvFce8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728667554; c=relaxed/simple;
	bh=sVkRduR4RomxjYMDPDGdypmYaxLEV8twyMM2XQuH93k=;
	h=To:Subject:From:Message-Id:Date; b=YRHkkGwO5FKcwEDuazgl/fN7NI+ftDkTqY5KqV2vnjkMMiwRmq1OpCyCh1jl6hGpWOAoHYOsqb3C4jFUnaYxMx7WxuqzsNVKAYad17Cpr5pIC0BX3ucz8eOcfLWLtUNHjh/Zcjp8656V5YUn9tDQOtXgYaiHcbrPKHEif3uQYHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcnYen+i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcnYen+i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3883C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728667554;
	bh=sVkRduR4RomxjYMDPDGdypmYaxLEV8twyMM2XQuH93k=;
	h=To:Subject:From:Date:From;
	b=CcnYen+iGxeEhqtrTi9uAP9jIFlNA8O1jStedLf3HNDUNIvA6Z7Ah28sK+QpVhdtI
	 peaF2L45sngLO9wXHTtoa5KwZDsPWPxj1esMF2Iw8nV1XFNUPPOdE9QMligSxgRXZh
	 sXBwc7xqzbnsP3hUR0f8dB5OfNxQR5GIYRmypcnzj6JwURiFTppKEo5EUcKOlmImQr
	 R0l04q44kYSa7vneFvXs88Iw2+Cbcau43h/64b4VwViWAI7JzrsJXo0+fyJ/p3oOmX
	 mLMMWTVbrTPnmG+h6ejT8vPlBY+cvMnRRMkFENrL4piCwwFoNkw9As1NwRZL2zjRVj
	 nfdjfCaoNacHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA23BD0EE12
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172866755368.32234.961783950693831914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7200127fe5bfe392759001910ba940c114000317fe15135b9a36d6e7c415372f
Date: Fri, 11 Oct 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728667553
