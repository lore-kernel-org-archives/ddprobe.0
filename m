Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A62148301
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728598554; cv=none; b=QLQXiWRQfA5b8CuJix37fuBMpJAqlpVD1swMqhQB60w7HfBaVTJ58RHIlpKglLPNY01fmUwpaveOdueTvEfYuZA7CltKVsoz6t9ZNr4xAOox1Ie0Uftf7KOhoimNQRRHK7/VK3srwf7Gq80VguiqNScrOhMiiRr548GRBDIWQ0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728598554; c=relaxed/simple;
	bh=XbmCekOesamEZs2tTiCAHAcyBQtQydLiZTv+Yss1yXw=;
	h=To:Subject:From:Message-Id:Date; b=Zw3lc1/U037O7OPP/FwNTQ2ttreB91KdFk2NychymufNfc0wjAm+lgrsuslSSr11JfAhlJJM4EvvJNJp7zKlFOFvnTl5l1djviwDSraypD1E7AljmJ5tUa0C/Au13RPL6/eQRhm98/rGL8Aftm5MEXTpI7gBK69U8cGD5l6Udjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jdon4vqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jdon4vqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DD5C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728598553;
	bh=XbmCekOesamEZs2tTiCAHAcyBQtQydLiZTv+Yss1yXw=;
	h=To:Subject:From:Date:From;
	b=Jdon4vqzMQIf1MmKa9IOQhOTmu8gDzV43eOfZaO++ScJanGeCs7qKxSRwtQ5f3PRs
	 v9zcAlyrDFHQTWq/uZ1ZcZSzePuD/fBy1bSHWUPuZS9x3VKcXrqnelrlDnMUWXYJt7
	 fYN0qXSO22gQUCmOnbtBwn73VnnYsj5fW63kuFurSAcVlqXh+JwVQEgi85XDapqAhD
	 n+1f6Cz69i2juIscIhWdU/dgFNX4YRzAlZJNKkx4Or21aNAvpDpPEUISwuguW3A08h
	 TSuckwKfVFT79Wl4yXHRjS2kV7Jqoz8IOHHYQ146AfQ7BGk18nUqw4au5CWqH1iHBS
	 E5Jd2W9v9ztGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2314D24456
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172859855363.13569.6097445484665942488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8a9243940e60670fd5e22b18ea1f065c8387d41e92fae9b3692cdf28c4dfd6a
Date: Thu, 10 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728598553
