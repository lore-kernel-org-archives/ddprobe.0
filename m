Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36327231A23
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780257274; cv=none; b=pt2zUGBe+kvbGUVatLUZC7B7MJ7ZUlhS1Mgk0es3zLBJiJwsB+s9aSlVK9Vx82U40IwVe/FB+3Qu6l0R7Ca9q+TJQ46qDhcYtI0Vp5fFng4vl/cLQpi/ilo499Fhx/aQhE1RGV0oio2hwC0FioS2S4iwmT2h0xuQ9Cm81+nUK0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780257274; c=relaxed/simple;
	bh=L3C1HBJl2Oetx1BllHj1WOsM5LvNuTWjX2jCEDwLWuM=;
	h=To:Subject:From:Message-Id:Date; b=BwIWPY4wKk7BRpCO8uNWNlYy7QVVM5pJG8VIbCZvFF3ZH9bavv44i+nIoL8gZlbriGVIelW/oiH+GMKJvRRfqAnWHHE+xj9iooqBcITbWZcYkpCRTmw4otlieNWTNJynZY9ntQNtnaNfdSwq/fbIAIhhMeTPecNuFW1M/drKbZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAvEu5Ks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAvEu5Ks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5739C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780257273;
	bh=L3C1HBJl2Oetx1BllHj1WOsM5LvNuTWjX2jCEDwLWuM=;
	h=To:Subject:From:Date:From;
	b=gAvEu5KsIyvldLptGXbil58TLGEUlckTmekHH9Zs4T9N3NubJZf7KysU6451Z+hzE
	 0zeiYSd+/Rp+aDOixXTM7AQvtVwA7Ir0W6htpP1U1RRaMv6+B6HHovm01M9J3WeL7r
	 UdyQRkRObgwkXssxbRGi+AUjYIluUDRc2YdXN78TWmn1GXCdrm0R5pscKgBKl/+SnQ
	 uQoqynkPQo4aDPN6sMuaGyA+3djEDMeDp/WZLSmBF2uysqncQXTImqc9lGBVtBanZW
	 i0CwrjxZKTX+wrAFlWCIerWkuI9cGOyB4HVWQKtdSXUftHmGntpu7iFoNJcnAZO73h
	 zOqgtgXhNottw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A804CCD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 19:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178025727368.13316.15412373102721337016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76326a772e3e32d40ebb29d589b021ae16c95312e923dade2ce16dee1a5f258d
Date: Sun, 31 May 2026 19:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780257273
