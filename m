Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609BB2AE78
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763102394; cv=none; b=D4F+M+Lov/yUkCxgjROFgHPF9I1V2jnFdzRcfjvk+QJKUkvD6bDdD3sSnrCQr1t70bGYqCP0QEOXKGgS2YPyoq+APslBJCQVjSB49nCyFKlFDzVeCbkeF7zFx97W94hzJm1PlAZAJ0/hxY/mnRZDutdlJWg2l42RfTqfs5WqXmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763102394; c=relaxed/simple;
	bh=3cuzRLZzLmGU2IguQXmJzmlQnipkKaaPiV2wF8IwPdY=;
	h=To:Subject:From:Message-Id:Date; b=GkKKvVWG7RCS2zBmNzeKcCcBelXmfV7e4YgSFj8lMGIrB/s8HKhVtDqyNIfMi6y48rCpMCK/+/9OnIOAqb8ntFIkgznrJCduovNR5jmAAAiiZFKmDN6OWTNUo8vTjE/eLNoZoX/zn9FaKMHz2CUC5wk/XaNTADOzYAUbxwmLw+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=puIbQYp8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="puIbQYp8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3116C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763102393;
	bh=3cuzRLZzLmGU2IguQXmJzmlQnipkKaaPiV2wF8IwPdY=;
	h=To:Subject:From:Date:From;
	b=puIbQYp8O5fQpztwqQxX3dQXupym3ZPHXXEJUAzkDY+NSdCSVxq5um7JlvKdwKSwe
	 utss8M2KtaiJt609Z9i1exTRPMF2p1V5L3MzvSII9/cNLZwx8WFhOaJSEBuoSzpMaS
	 pR407ec8v/0Kml0ywQ2OAYR0ilqX/nIK3SoCAg44h6GplgcyDNsvF2wR2KjTzmQFw6
	 g+arS0wj9Q9PPwmD0NpPUeznnA4jGDmGAkZMGm5PBMOhsssmVZnhQ2SrkrUHQ6aCZ9
	 JUSPxr75HDnPHZksGfE+k6bLceH9Zo7E9nGGWKmhYxi2oe2McVvISAWbxUVnICAqCH
	 Sly9sN2By1c2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4176CDE014
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176310239366.15749.3542736260971360252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f8f900d31bbbe42ee6348b2fe61f3f96fc8882d6f88dd7c255643363c4f5e3
Date: Fri, 14 Nov 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763102393
