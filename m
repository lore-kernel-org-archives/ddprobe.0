Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC2BC2EA
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782363454; cv=none; b=TKGt4AEscBfLuxPS5mD9im7yKvHqFmwyLxKUl/yD3cn7bVTKaaUnsoQuRmeEKs22qy1TFIlQFBKPi+1QI5BR654HAu4sEEaFtdxiXTElk9m8ERZe+wh4midRfgrwQ7fqGCCgOKt+pqkLeNnCPjyOEVlhTK/Odc1MZjpd6szNSVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782363454; c=relaxed/simple;
	bh=R0jTVXoCKdtxdJeCrMxIK0wcZ2cjCapecF/H8PoYhiU=;
	h=To:Subject:From:Message-Id:Date; b=ZjTPVx2tSJsWO1AyYGuUVhZbyADxuVrbxbeEJgaWDIoErJ+as/vMKD9vuQb8qBrRxZv/0gvGmm0GnlF2jUq6Vd3sM8BMTXIM5CI2hSFekTXoRqwjAo+bhJcEVtJPWLCYu6Cd6vdKtlVhVPKoxz36T3P9jwLWV6KAn4NQNYvoKMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rt+ZrAF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rt+ZrAF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F6BC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782363453;
	bh=R0jTVXoCKdtxdJeCrMxIK0wcZ2cjCapecF/H8PoYhiU=;
	h=To:Subject:From:Date:From;
	b=Rt+ZrAF9xliOtxBIJMR9i0UyhSHP7E9ldljeq6UriCygqPJPfw9yKBXvEqockC5ju
	 JfBGvbClohZd+fPN2Mcs07HqjXugNirjqtksdkwWhNtl6+5rZuvKsXUA8S1unTeoVx
	 DPHn0QK/9K5jyfR6RR79fZhLIQlejaYzDegImls9u7tUnu9zaKsgIyfgixHJ4V84iG
	 Tx8FReyWmUQZG5kz2zmDSOn+1rAu5KVq2QHWT9f6N5q/o76/en1GwIoAGoMXBjvR63
	 simDtTpYRnebAQoCya3k53WTt0rD1Ygiqc1GtL5elmGHIrYKCLENeX23RP6QCs/bZg
	 jXYdpW1ra9ctQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC50CDB479
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 04:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178236345369.16919.13300542636944500380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cef4e390cc53dcaa1f06593928d2ef9a262c9ff0bc9b374066991e004d94bf7
Date: Thu, 25 Jun 2026 04:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782363453
