Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18866284B26
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769588034; cv=none; b=cNvBwlKIT+wMyR4y1mxvJOYzEAQ4vkuw6a+Lf9s6nE6XDxP9iFHA5ABvZZI+y+RK5bQIqrD7UqjefAnGNnTqIFYCYtfipp147n/W8HEl5qCI0jFjzg+f23s57Di0Y9rZaVKwsC8UvpvY29TLAq5s4DaOV3UZoAFvyEYQbuGMK/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769588034; c=relaxed/simple;
	bh=yyXPmH8UqTYsrFpeUsOOjk/7apgY8mgNeZs6Js4u54U=;
	h=To:Subject:From:Message-Id:Date; b=RBnValIQ5tSXMBKFXy/276v21ukK1GqeDU6ODlgM34h9xyDZ9KBiTEVYgCLeQVTYPjvPZmms08jo3NQNFtIy5PLoDK4kKO9UNppg8eCXy232VcPaPhELIwMctd1hfpfzch+RfNo6QCuQALcDGwt+eJaJceeG1/HwVOdTtiuC7UA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rKZiqkGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rKZiqkGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A6AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769588033;
	bh=yyXPmH8UqTYsrFpeUsOOjk/7apgY8mgNeZs6Js4u54U=;
	h=To:Subject:From:Date:From;
	b=rKZiqkGEE2Ozs8PWggSCYDNMvI+PMwB0AqQzaEW3i8y1xKgS6rRCBIMTLHmarVI67
	 F4ZosqtI8hqgp7laWSweIVWwIj/BhaHH90RwD5pwrJfM1mo7YISrbOWirs9Ab1Te0u
	 zvmLfCJMfPBNJFrqmcfScKsE8x41PWU2za3qVEjxRuTeF0S7NlEO3fCFJIHDdAU1wT
	 c7+Dp0tLXlfwTzBNmFnr9SGvpctrmXhNWhWhb/W3MurM5F+txlHDEC36Ftb8p3N8MZ
	 axXYlHn9fDBx/nfh/Y6/xIiEvJaZC4sVAJmeIoC/leETKYbGmfHj0wAoe9V+KvDfbJ
	 E489saE5lwLNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9229AD3568D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958803358.15778.13266517900960488993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf82c69acda4d8bffc5966076291c7356af5332ea2fffcd1c91893faa1bfb0fc
Date: Wed, 28 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769588033
