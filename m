Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A68F2FDC41
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763503914; cv=none; b=Nf7FFsZiRVoN6khpTw1521w11kRne0zZd9wGJl79DqY9dRIN+qZeqAAFoP1HW1/P57NzDRaHnX4OJAE9aeyjYBRSMGbd+WQ+zV0QKCBPEmJXXDGyGgDSeZ89i3Ugzq4ywAX34T26xQvW7EshvC0uzJvCA0oqtisBil4DA4svYp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763503914; c=relaxed/simple;
	bh=HFq0KwdMRtHwA0WNbIeTjJnGahX1g60i7frpxtAGT6Q=;
	h=To:Subject:From:Message-Id:Date; b=cJQQGVewrFeDYOHJidY+XvXbUHx7YtdzH1iQTS82k7XxMA6eSxwTmWL0Rgvw1RxzxCZTZBHklc069Pu+VIF7XnpiY8CqUuyVO9ePmu+KHvhlzsaFYIQvg0fpfOMoDZshBHirp9iHjROS4UPxSLo/ivbzPrNxjfFZ2PYb2xQoHAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkZblXnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkZblXnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69E4C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763503913;
	bh=HFq0KwdMRtHwA0WNbIeTjJnGahX1g60i7frpxtAGT6Q=;
	h=To:Subject:From:Date:From;
	b=QkZblXnLq02F3pMinzMneX6geY6DBC+FQVGQ5d2DeUu/NOKZKwM+lDFRUj5kXSRny
	 8ShL5Sae2YHCMYHLxkMQlIR9kdEsjbgzMtkmWwZ63GCxxekH4Qb1siGELGhZaQGYKm
	 HbeFXN0pqLlRYQcfiEqWBcthpDIQ2S6vzQhs2VZ7kqt2/aBOcs4v6Mz3iLR46XdFQ/
	 eS9bSpZHVlE0bCyrgZqGXfuRUJ872vjIDn1z9a+YLh+hzfoNTsJoYc0CYlDviI27ly
	 MsO52g6SQtQxC5gYPLr598B8TIWzauPybqjg0aad7TPKceHFSszS9Z2S5QijaPDHlN
	 B95X9JKqmvyoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93578CEE35A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 22:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176350391359.2928.6629354658918731288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f4d79fd2e0ac36c8f1b8fce2a28cd68cad55dc7ff9b34cfecfe851b747249e
Date: Tue, 18 Nov 2025 22:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763503913
