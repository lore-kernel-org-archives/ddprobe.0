Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8DB3D9DAC
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787260834; cv=none; b=VuZgEPbWVWOITvs4pulttSPbwpPjR6szhQkHePF9ISB+mN75WgUeHa7ij/YovPb9MF02lud93OGHWzna0EVdxMGm4LE+ygL3qGT33jx1YMzYuQPzzEJzRMYem+HvGHQw0XEiCEKXhuwBm5ndAASCSkVkbqC1VnmhKdDa4zyCWGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787260834; c=relaxed/simple;
	bh=KKNE+XCWc43YT7GP/R2hF9VpFDPiTsKibjAYfuyYglI=;
	h=To:Subject:From:Message-Id:Date; b=nZJBRLs7+wQIWAmYvmKnXZ5A0xV4yH+NVKs/uHkZ4FrB3EMlV2t+PJ9Rc/MDJmVboYMcnuYVN2jtvu+jat6+CH7kCqC4S7YdtmQBzg6OlcLSe/AljV37GO8dWOK2AjZnkewpZdC41Y7KPnPMbykpeOiieGngdky3JbHOdZ/YqbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lBTRXoTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lBTRXoTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6558C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787260833;
	bh=KKNE+XCWc43YT7GP/R2hF9VpFDPiTsKibjAYfuyYglI=;
	h=To:Subject:From:Date:From;
	b=lBTRXoTPFLaFvZ/hkm6J/Ap8QRduc9zPPS6aJKYSUR3SHiC25V4pp0WU3YEuYSnAm
	 +YBfvvklaMon2SzdWOcJzrL77Izg4enxY6fPmAhIt4QjRnmujvKLce1o2bPIKjH8Es
	 B1kneFs7HU2XVPP7mzAJ8grEenpzcPDslKygz5A67F5bcp1055+icGeuZXyEH9JHqO
	 y/DCxoyNZiuzcUTM+6MsTW++2oCYrYIxY7dZvEumehxHrI2spitFm+OIGPBoyzRDTs
	 TfZZclkRLBT0zVb4/gE8oBJavPYQaN9PrkceIyPSA6gzd+9Kk+KhDeH1tRjXDHHYFP
	 a2+a5yvNKWbIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE8DC5DF8C
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178726083374.19556.14426377637180170996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617a951e6a2a00da025fc2d4773d345b7421650e8b6c811ab740df27812c9860
Date: Thu, 20 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787260833
