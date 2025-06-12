Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC43D205AA3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749734393; cv=none; b=abSIRnbTDFiIhHOPfT/Tn329IcDJSSKSeENTsOj9vbSbwXXFz2+ZXcnsUc946kt3Lwo4jk9Pj2G3yW+5qk+ZeNsckFMWxdyjEwPVBt7oT/FpNmTPj9i0soL9xMhmYOXEqUWpxdZ3dLo53t8c5A+rynbIgmx7AJN+7YK4M4P+icQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749734393; c=relaxed/simple;
	bh=DqJ/jtr9ODPvlQSmdbK6W/a8qEJH09a3XfYxw+OUqbs=;
	h=To:Subject:From:Message-Id:Date; b=TpxB457H1zDd/YsJa2saPbmuC9Skz4Lxm9RDwQ3yCcvRAOjYH6bzQqsNAonthNYuBmjFjx48C3biAE34ujaZpefYf4DGpBhrnZWp2aG++O5SLxSOdMF3JvAB6zhPoCeH1UO5C118i78upUqO1fycWgvcpcCaxCwBfQY7tzRrmcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tnDJHjOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tnDJHjOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFAEC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749734393;
	bh=DqJ/jtr9ODPvlQSmdbK6W/a8qEJH09a3XfYxw+OUqbs=;
	h=To:Subject:From:Date:From;
	b=tnDJHjOO07hCBGRq08EzV8nTkYsDUe3k3zoz22isTzpllr+aJzJDcgstK7PLeepbt
	 XR2FYxb4OwC4XCXeeEB62YXay4wJcwYm8aWiQWuSG+AijOncjoJb7+OQYSK6SeM7bg
	 qJ50z4IJCjFUP6VhKoEfsA40HFeVcVuo7GyakfYXfj1grk9fsjM6nNYbqk+jzEsAbT
	 cGCd/16dcZISsy5orWTQlS1jFJifqitTN090i2dHfHIZ4NS1CKiW1eOvrMWvKIs8zH
	 SecVR94nC1oT7qHYHryoapU2SWK7pcVP1TvPwTOx+C9nIVzNrvNK/LjUl6cyaYGytz
	 yL1QDHf6n3NcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD97C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973439362.27395.7854218119679048953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41bcd64e538a9e1df25020768095a3af6967118af6547dff16882529d5749862
Date: Thu, 12 Jun 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749734393
