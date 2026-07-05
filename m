Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42538FC0A
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783274314; cv=none; b=R1dZ7krDqVelkouiK+zq+YCE9li7izt7mb0Rh4I4pGv55KvCGLcnZ8XRKY5Khzdyu+nEn+WzqUIHMolrxFhukdieLkVGi/CgbhwQm59VwZjcND9gaWq9IdAHkwxDw+1vqnBphUbicVYiDZLS66Cql3qs0xaLdEWLBHN7rUaaRms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783274314; c=relaxed/simple;
	bh=NRGQumSIDm1jgeD5DMAE/tffScDTN4bABK2ybG37niE=;
	h=To:Subject:From:Message-Id:Date; b=Xb6X7zP9MZPXBKnLIIH1m+avblglA5UKZfL0wVTSXT1R6rghbpX0H7RDCXLPpVfCY0F1ejgwD1g1AdGyZJ4GNwZ5WsjOy8oU7w/wAwF0WyhDa5TyBemCj6b0V24/8qwoxTpzx9iuFovfkL/EfCGYl3n8gyuKcbX85UvwDNQET1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiWlvivC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiWlvivC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9E60C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783274313;
	bh=NRGQumSIDm1jgeD5DMAE/tffScDTN4bABK2ybG37niE=;
	h=To:Subject:From:Date:From;
	b=YiWlvivCsNKUPCA/9L7gyfBU3AFmt0AT+ghESYd6s+rGUX5WTvyCxtmfvo9OrSwV/
	 6eZJOYCYnOYxkFKIr+pKeEXlrAQPKyfleOy7M8ihv1KYhCMFOg0ccIZw/rNr81wjp8
	 0Kg79vzRblYtP8PpUSYtCSZLYwwJwTsxeOxG2AgpENn8vOu2SNzoKWdXZONgHCryhS
	 SnfXU4eyKK1E7WejeFPP7wCSP4M4d34E7Ccrhh4tjl5Lgxr3FweOBz000Riib9nWQr
	 FtU5yuyVZTL6sT9d/d6B6XZiFoEwm397i/sXDd+MuLCIFKWrVLz6h6bfgfbcWQEh57
	 E1t9cRgAgzW5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DC9C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 17:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178327431368.17144.8682831770852396987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d85cfa2304b5f651db17ed78251f17170ae2e2ace1dd624ed9863321384a21
Date: Sun, 05 Jul 2026 17:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783274313
