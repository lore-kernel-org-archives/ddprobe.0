Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FFC382F33
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781276794; cv=none; b=CXGn2pGRunYjv/tEp8xLoQMZwAB4GoYymtoCiix/N5g0JB2iTY/rUDWW6GGyKzp2wEjkX9EA/28EZ60dKVPmwwYTyzQhMSWDT6AC7qv67ddSv/MNe39eE8d4SzGqhDBbRofq+X9gfuT8VNx+0Ukhbl6dyTQ0flEPzOQ3j2gXhHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781276794; c=relaxed/simple;
	bh=lyJfQN1hYnYY+QMTKdPaHi2deelqw32csfVmKmm+J1w=;
	h=To:Subject:From:Message-Id:Date; b=tZ6xwyOBg0+lVBIeYvd4/bQ52N+D4INo+VDIRNrrZGn/EBsb7OGlsaywGTFaUn3XHiDXJgRoISOnJEfE8d5MzN/eIA9v50iZQnvPbuFETP5zudxxdmHzAS8oGFhMssaRMCw03qa/8Uo4Eq42WX4uKWWaGCNMEYAhN3L1Bsfutys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RkAilzeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RkAilzeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBF1C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781276793;
	bh=lyJfQN1hYnYY+QMTKdPaHi2deelqw32csfVmKmm+J1w=;
	h=To:Subject:From:Date:From;
	b=RkAilzeEkQI9DhpGLQrx81QCkBXv6B1FwF0dWYuY/VJqzI1aNaRl0zZXzNzK6cK8G
	 2j61hNLy0dGjFlrcNmODlrkPkNPJBDUI4PazUWsyo1YuA1bcL3A4hNXcWeLQzmbzg6
	 a6JfoBmOGx8GoA6vxceMsoXOkm36gvijYsci4r9RZnWFNIa7Pie8dAFqcKvTcpK2DQ
	 yo/bCqrZlAelYEKG9Iw/AReCl1t9Mj3tJkcGnUQm0RxPSYVlIuDuxPz6OXN444Z7jI
	 jbPbBvqALhE8Ebz/o0vR533Aifi+/lPgOHQLDDeCFQP8Eg3kJvlgHPnODXPrjn9qmZ
	 ct2eLlUImG+xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA0BCD98CF
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 15:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178127679369.4581.4256149772895868747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0071c84bdbcc2e46854c20afc5ca0af86b5e333b1e631113cda4f31a534809
Date: Fri, 12 Jun 2026 15:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781276793
