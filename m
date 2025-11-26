Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3557445C0B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764116574; cv=none; b=tu4Yq69u+P/efkFNrHhIOJ5dMbNeo3Lt8pSigXqd+IRNUMBJRk9AiuQnR9VRpMEXbYMNPlXIf67kR9Pa7+LADW4K26xpUA6htZWGrsJ0KrUWh3EJW0oqIUcX+YUARExsgYjLRmtOuKpNuPQMDhgJAqnDzenxowlOlZS/iqt+ezY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764116574; c=relaxed/simple;
	bh=g1TeXRQ+asoqVrdNRGS2yK6g7GU4Wdx4T2ei/ZPO9AA=;
	h=To:Subject:From:Message-Id:Date; b=uv9wbADEBEBYLcVxT9y9lJpsYM8FwKu/9uxQSVr0Zt9+kxN7VkbpJEchK5g8N8Qszjmj6fYeaFec+2WeH9MTuIEZ9/cry9wbyC9i1VwIxe+hdYApCh+Seq6yKSIicDXQSkiJZIl20MwylvqciCV0K77X85XDSWns6rrccLBF7/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFt9hAoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFt9hAoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B18C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764116573;
	bh=g1TeXRQ+asoqVrdNRGS2yK6g7GU4Wdx4T2ei/ZPO9AA=;
	h=To:Subject:From:Date:From;
	b=XFt9hAoMQ4XsukMYLg9KVtLHrJzQ24nrd6vcHQmRN5riNPLGPFyTsuJOgZdgTSj7H
	 jkqivkSsqcSf9VIA9FiIj7TauBdaR6wBLUNhfZgLTOXCUUL3Z9VVXZojjJHpPSFo89
	 CsURAMsZLnOOEE/CJDeTlD2yJTnLp4g0QNzBPsgJb6wdY/1OoEs7WhwYRBLAS62rMm
	 YqIb7JtSWNm4BM6mzfkwrMDEyudlyAtHOxvvmHJ2YzqzlQPdCIrKCqpmouJSP2oCg8
	 O0zr5Wgi+v08p1Ur7H2jLuLGpDskNdClT6KdoHy5RIrq9FE+qg93Opwc5KG1baZxPV
	 uwQ2V8aJbGhUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E14D1036D
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176411657358.10577.9699713711332890736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ef3257e49176b1cb8b12fba409febcce8a043acacc716559feab2b426660bb5
Date: Wed, 26 Nov 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764116573
