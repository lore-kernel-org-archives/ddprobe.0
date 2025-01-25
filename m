Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E66CA4E
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737834954; cv=none; b=tLNwJslDk+UHs2FBPFgvaAnLpvtLJZH3886MZQ6sueY3W4D/bKlAmrhQ1uEQUVq7WigZwP3rbpDongSGk7I9jcXrBaJ5g8VsqzToHT6MQa45hJjN8ANc/x5k6oJmOUhgHUl5nxjIbNxBZ1gLbrLJRKDuBj03EKErkATdBWevZ2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737834954; c=relaxed/simple;
	bh=BUBbS6MNtyqldQGx89K2iZ3WSjhyYSDG/mjALH2djUI=;
	h=To:Subject:From:Message-Id:Date; b=L3yoqaubMCNxExQwkudQjqs5quJO5tcfnPff6uCj2BFMpJ1noZjAB+GkBLkgbNibRe3TD08JvQq6OsnYXzEGXhmsbcXLcrFGzlhvTwGclqYq1aILiT0opUjfSClqtxpW28JM41BvcZNwBAg/MrMuTSf3rtipJdwNpnTjnrjVgeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BX0v1fOv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BX0v1fOv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A929BC4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737834953;
	bh=BUBbS6MNtyqldQGx89K2iZ3WSjhyYSDG/mjALH2djUI=;
	h=To:Subject:From:Date:From;
	b=BX0v1fOvoIGBF6WgIwL7wEOhaOhPSiIhMSyupVlH2KSp2nNe+buYha2L+ocI9j3Nv
	 cd1kI39txKSAy7IOdURpyT0v0YZJeHy42P1c34wJebTG3yb2gdLhgB7DyvtcEFJLTn
	 +EZIha7/p2R/1NLnSHnU1YIny5puB4f5iuSGIc9je0XmmoU0loPux0uKMqrco1AC5G
	 IlY7dIkQ/HvTr2t3PjlEofUeHTCPs6sJuMCIV8FDbx++kSYS/hzWzBtDLjzCcRY2uC
	 xxHYHlnnE+UhoYoTTc68tfmEz5DeUlAl6RXCRje8GX65+vuAF2uKW1SfhJjbabJEPX
	 yb0Xmh9k0KTpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967DEC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173783495358.19159.16098130643323028278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77e9622a3b83869fdd52ec169b801b43fad5dcdc4eded9a295a222eb3672a3e2
Date: Sat, 25 Jan 2025 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737834953
