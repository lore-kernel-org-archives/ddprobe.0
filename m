Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBC02FCBF0
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772997294; cv=none; b=hCXKNqau+kuvjaFKX9+0Hk+N5QHNmLWlpV0YhBIcoHlKAu0obT2e9vAEXnVsi0yJs+8FgRy8jfhdOQlWtJSivMaExv/XGXwnHy1fNQXLqzrmQtmGqBkSUfeB83y/juqLz+uG8G/yVv71/HFpZA+1v5JuxxGfe28ZCxwwDeDbRNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772997294; c=relaxed/simple;
	bh=L3hnRD1jmoDPrYZij5QzB9llIasZjY50y80lGxp5AVg=;
	h=To:Subject:From:Message-Id:Date; b=LrK/WToOstXftF3ZGAw24BIjcexwPyIA9Kna/rubBDRqn1lP3yvHfEqu13lYx375x7LP1dR6WjEQqKCm7cxeFrXAi5inyXcpIvwhKCFmULZ+Afxfb22An9e2HTbYbsRtpr5qSYAKsT2CYb0kKdlrMcLK7bXnMKx5Fxih2b7yq6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBlxguDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBlxguDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D21C116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772997293;
	bh=L3hnRD1jmoDPrYZij5QzB9llIasZjY50y80lGxp5AVg=;
	h=To:Subject:From:Date:From;
	b=lBlxguDGHtRk89+oonZsgZtI38GUS7yakztQO6fOcSi6nWV+QddyewXRSI2Qv80AT
	 wKVGc5WOOoHzR8IzZjkvn2+hi/Z5j5CStHp7aBFuAYoMu9Iv01hwXhmDLay9WIlKX9
	 9PCCgcP/kYE4GyKWaa2ngKVSXL5JfVkRd45Cz1sNnVgp+vT97KWAigwrNGodb5pWj5
	 w7FTJuDSaQ5qWijKMWj3nqj5QM+vXjiti3mrASdby198eXuNSZEiFL6NiaspHJ2iRQ
	 BfYV1lQGoYIaVUZV7Qy5ZUOmvXVZSG7/YqPUF3s2QQs/9FXzPNBpl+IKdfd4EPzD61
	 oiPC1MZnGYUTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96191EA8541
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299729358.29729.4483282451413700314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adbfcb97250601944f27d8970f0b270edb100361a649b65fac1a02112c6c681a
Date: Sun, 08 Mar 2026 19:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772997293
