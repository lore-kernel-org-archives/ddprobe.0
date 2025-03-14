Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C9552F3B
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741978134; cv=none; b=bUyaCX9JDTzbh2iwxvsXwEeyCe6CKXMPjmZoTfUeIdKLhzDZrDVCPl3V/CkEBtxdpxaq62gvmSVPzo/dCaL9dUX8XDVAXm21zxxGGN2gaXYeIFiqeH7+oZI0nhRWIJqXMdCRO3scAmWrSOTO8gFojC0sfOQvDQYXQ65yjylbrN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741978134; c=relaxed/simple;
	bh=oPRcmAhAsn0l8B1Mr/LC+G2NOMap/njvo9baEt/hxpA=;
	h=To:Subject:From:Message-Id:Date; b=h+9wFp8UblAj4XYC872GBitm9GCKIS+0H3IaEF2nLd06WUvlT4PXKa5hpuvMIGC3By9FeudDcgF4IgES8lwAhZ5rERGeSsQyEfNi/wwGt2UFWC4PeRXyXsuVc5WLj9QUyjRANvxKcLukPCDdAB7mIDVFpheDcM0KqnNNL/p0yLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqFEe5Eu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WqFEe5Eu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F01C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741978133;
	bh=oPRcmAhAsn0l8B1Mr/LC+G2NOMap/njvo9baEt/hxpA=;
	h=To:Subject:From:Date:From;
	b=WqFEe5Eu249xo7jPnseMcURq+N0lpOeZrbkHUPVfIfyoD+Z3lvltEsnwS8Eblx6wD
	 NzBvgPOK1Qn8inCOouogCCdRF8Yj817Y6f3fRTRdN6ED8iBvDfxLQZT/k0da7uGIsV
	 5IzjCyBjm2jITE6Z6djeqNLlWeQnb4UHA2rowJ9hreXQb8jb2T887iRPEtLW3snMZ2
	 p7L8+siq9f8GS5aKKhOx1e5aIbBaBQOGZN6n1bsA6uqHJ87HVD1z51Oe0nOZmEQO+x
	 t/aCz4KrhwnTE2B0jm1qubypZACj4bzfZ0gei0rnLQifB6/EzWBSzarZg0JCQJf+4u
	 zWa+qejvDixRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0853C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 18:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174197813362.18429.5619833245810372700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f8b94e844798bd2fe43a57afe68fabe132d8a80899a9bc63bae47b51440ffb6
Date: Fri, 14 Mar 2025 18:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741978133
