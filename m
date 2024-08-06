Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A85D1607BD
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722935754; cv=none; b=k1P0scZKNlvlq7VOQHfmgfScD55KwblND8o/ryPkuuEz4w9lx5juTIol77HtrKImsEjM5mnRlcDXRFEwOCMXerZWM+MDD+MKUIR/QJsJgbZdTD76nlLrREcEbqID5/nHtzQ+WO+gEnoYeqzIcCrxVe5Pc6C5rfwnkZvnbGhLwsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722935754; c=relaxed/simple;
	bh=g9yKN/Uzbqn33bOsmurq3QRKN93io6SSXXtRm2YRvFw=;
	h=To:Subject:From:Message-Id:Date; b=JqXEjSS2pxCiYjsaPOrKqarEU4Xh+5gGY/cLB6wKUfG2a8uACIn5ld29i2eKVwHOAYtqGP/8wzz1PzmJsSFghx9M3lmmaj9eR+vNRsvHCXJGzKyFRRKT0kTq7pBneA8/KoI63CTUToC0juhLH3N9S/nTAkl+o9UnlaafvWghc+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aYBhPqVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aYBhPqVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1966C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722935753;
	bh=g9yKN/Uzbqn33bOsmurq3QRKN93io6SSXXtRm2YRvFw=;
	h=To:Subject:From:Date:From;
	b=aYBhPqVwuhmUeB+8vK3FSg6a2r5KGfZNZGSgBTwkkUQCon6AoSrcqwglpfZ+CC4T+
	 DIVWQfkqSoGWzqiQkBnis8TEfWBvl8HLHNJZI5FnjStWHRT86gcAP5NInrZvW1VEFD
	 IsMAgcsXbmzsYprzofRLc6LuGWoIuzfVms7Ph/Fx6fkJdSMqmcLEqZlI7l3xmW1vv0
	 LCPPm6W2zZIrn5dCCnCbvvz5a1M2ma/TKHjAqe+yQ5HcqwOwaZBbvavmCuuBXtPPaV
	 s+sJqdrby/pbVMcZtKngf11ZATISVJQmEgkU0ygCpPO23G1xRQZX3FqZnWBfQS1u8c
	 Az0kQcBFvgvAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8F0C52D6F
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172293575363.18791.14163776751999094814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4746152bef00d2e7acd1872ea56399f7b1077633ca3a68a5b07527b7508499e
Date: Tue, 06 Aug 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722935753
