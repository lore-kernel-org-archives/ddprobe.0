Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F5A42048
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765692174; cv=none; b=uZn8BZOkqlgxiF2EjJdEn6cQEzJ7c/xx9/wFuppR+78nqSAnL2BDFPj4eGqRndbmz2YORkPyld8lvgG91oD9Xqzb+LN7DAGXa7xsqedtzKLoUV35UjBGZVk5GOF4LwqvsdBBfVS7AMU28uQznOctLiiB+i9hNfvf6sr0rsTNfcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765692174; c=relaxed/simple;
	bh=9gx5rcNhw1upkQ0l7lMwPvOFmZt02NzEddBeVZDgH6Q=;
	h=To:Subject:From:Message-Id:Date; b=gNVeAjKt4cbWfprCSltxQKMCcF7WUe3Ek6mRXs89C8kDyy5mtOdq2ACSktCeqGorMVePuVYdP7V0X2UPF8IR8N83tdqA3cZOYURLT0b8wBLy0xT7UTn4KgjVEB+NwRgIPDHnX7fDP1JFkogpiO0aY8VisfzL96bXWR/ne45cVM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLvm86iI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLvm86iI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD03C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765692173;
	bh=9gx5rcNhw1upkQ0l7lMwPvOFmZt02NzEddBeVZDgH6Q=;
	h=To:Subject:From:Date:From;
	b=aLvm86iIq/2XRuYSfhBxvEubMrVYeFiqZHMX1/PGgfuf2ZzJw3xyoFfZ63Avnazmy
	 ckkVfAUORH7aTf90ACCfXg0Hvfkvkk+iFZ/FbGw64PpTVBgCLjtGjEVjo6YrxvjRGK
	 Gu6Se2Vam5jn10b+qEn8NcLYRiTlGML2DLfhdQ+bmMkR2RKe9KkNMmsqFh8clUHgwn
	 DcYKStJ2L3uFQoAFK6+3JjMfD2LAlKhSzEF9CzodXz6COukbqoqKRx9EqSnxyMqSz3
	 VVLF4hohU9d3kEbp41AVzrpaObB5ieBIUWLP4ppxKFHoKMqTKif4cPILZP4Ovoiw7z
	 R2RZ06YicHNZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9602ED3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 06:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569217358.11806.4023245249320900152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 440868111f2a2b8e960eac6124945b4846bc0e1727138c8946d73cd81464199e
Date: Sun, 14 Dec 2025 06:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765692173
