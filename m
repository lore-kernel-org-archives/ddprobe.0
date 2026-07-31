Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2778C34CFA7
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785468634; cv=none; b=MYBWLBdIfaDCxJGmPhjgdVzj9XOQ+XW9oSm7ihpPd8XmVjy1YMhzb95zHmHvVuu5vTFv0u8Aq7t5oWKIz0EMYlVIOgdNzqbXMaiph0tvGThitZGGH5ppJ9f5UAm6YkR1Nuk5rjsZ5ZZU1m5Av6QRMqpU0kYU2qmFgXwMtPyUbsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785468634; c=relaxed/simple;
	bh=au7Dl3G1ra6qMngsnm9iNOdNu/HksvFjYAaIGG9KvYE=;
	h=To:Subject:From:Message-Id:Date; b=EP0vq+ctA7OmEUMP+DcNll9F4UP09cZpflwE7aEjFJOn/UXeKCW5z45U+v1aYCKBkscXVPNT3ztj1NtRoCC/fG3mtlQDLc6Tj1iqzZ+eRvX94ThnSbuQoEYXuacc4TEnk6tw3bPGHeGLFSJC91C+vNjAfoudTHfyHmrR+HCjMWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmYCxe2/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmYCxe2/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE84C19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785468633;
	bh=au7Dl3G1ra6qMngsnm9iNOdNu/HksvFjYAaIGG9KvYE=;
	h=To:Subject:From:Date:From;
	b=EmYCxe2/o3Nt1uIUhaY25Y08c6gGRrZJjd93bTGK+fGrTCEtlru8qleRV0QaJTvFV
	 SPRGexaqy8rGW2Vfi8eEzd9JEX8ssQcQw8Td3OZJAbBoay7u4rhN3FGj34u454RGgv
	 P3D4H13expJgQIPbhyBvXdnnLGaGOp/OHbroJGtbXNUhhRzJbDAjH9EUzB9GFgY5+C
	 jWfkVAzQRAfeMWhDVy5N0Sqo4Bq4z42yXLubca+oBVY1MwDEL9k2Cq2pu6ZGfUQxlQ
	 Q4rvZ3040c9uHFCtrxnM9PwGjIDWLP02I8wCNgKaDIKt6jCAjrFFoSuFRA8YYAUMfB
	 YXKiFM0YPq3ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97FDC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178546863368.16287.9199806292906043498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae972d82f752830059e20dec8cfd07f43667566e6ba79d3349e05d216adc0b64
Date: Fri, 31 Jul 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785468633
