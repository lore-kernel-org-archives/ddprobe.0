Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC15352C5B
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786305034; cv=none; b=posKTfWNFWyK9Ji4Ps3CkEeId7s04xugjFXh8Cg8XWbtuMCPKNn5Swqw74DwyIBteQ87nFjxOno0Uj/7z+yJc3pMz8rCaA0C8jYpf53nHe7llU0YkV85H2Qkx0FpeUmolP/169JFzGYM2w/6jx6tRRmy0UK9CvM74GCjjN5xAoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786305034; c=relaxed/simple;
	bh=HwsZRGXvsISzxIuBMUM3bo631sf63dP1fhQVIepuook=;
	h=To:Subject:From:Message-Id:Date; b=ubl7wekEVa3xGMcdu7Og0YqBC2Lpre1LBmEhM1x26OITzLGsJqLN1j2Pc2EzhIQncFnwDFVzodkB+74Ls4eRb8Q7mhDjPuodhPNwsn9US9cOCzgeJhxfMRio7e/crtzXC22o6+y38t9gMObr6ig3mwBfGkcMMrGfrB3g0XNNsmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WvyJSpjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WvyJSpjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3D70C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786305033;
	bh=HwsZRGXvsISzxIuBMUM3bo631sf63dP1fhQVIepuook=;
	h=To:Subject:From:Date:From;
	b=WvyJSpjXUICzRV/kPekVtbtJbQZPIvSNKZOEP5HseI07/xIQgjdrdlzeuBmJ+OJ4F
	 gC7xrQZDE8ozucTjoox7vbmIhJE7iNz9MZv6rexWRE/0V4FdtxMlSi+fC53kx3DSs/
	 49XinywkVAytxd6gp57NIfGqBRtYJ/WCM29KV3qM5kbkucZR0jrmV6ZV9yrLTOY02w
	 rv/7xa5klPow+ts3YcEW7CtQSOSxf4SEGbASpJMCFRMm4wpGLsSEXle3OK4AiBg6+c
	 Bre2q1SZjiDvV56gBoI7kswBuenXQBO4lAyD/Hb+NMOmIdeENjYJNXrWEbThX1tbsh
	 g/6TdEtY+W8aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABC1C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178630503369.21805.13003851583946420474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edd29b728047f1d0f617ab625f4d8545af410498348f2666b7470561fb2e60ba
Date: Sun, 09 Aug 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786305033
