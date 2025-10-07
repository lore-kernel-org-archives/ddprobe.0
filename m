Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2274F4A1E
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759814394; cv=none; b=tKuiWqMFQWC1N3NgqDjP9gbVSEzS8d87Xa7YR31QAG6OLR6a7H3izHvThWQgRkkbssiz4T/nDFn+JdwjhuExDDzAV6mkwnonXGYL98CLfujqUNFVpzuL+UoYVwpauHRORlGROQYc9MVVfAOduXNgi0S6hVkRBpI4Tx66C7nhzmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759814394; c=relaxed/simple;
	bh=eOmwFLLDFV6SdyI+0I2Q/oqFqGnPPmjkcueqYH3LBIU=;
	h=To:Subject:From:Message-Id:Date; b=aWoqSWrc63lOCZH0r1PCwL5UzIyYAP7c3RJWO8zZf3GhCEm6BgUc1BiBh+dlokyTyPGoT53ipGO5ZFvulpkqV/UFX1a+/aUelTevAPghIzMbg9QA+QUDB7nw8uooqtbyGzunT48iKfCIE3d17Fj5yBSQRJ6zMWZqncJ188GyLcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8XXE7iv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8XXE7iv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EF0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759814393;
	bh=eOmwFLLDFV6SdyI+0I2Q/oqFqGnPPmjkcueqYH3LBIU=;
	h=To:Subject:From:Date:From;
	b=d8XXE7ivhR+nS3uV2n+i94kOAowz6YLcmbeLm0NKwaJmj0qfOpTwuCBb7LPu3YK1Y
	 1OQcJIrPxdCtkqMhMLcus/Gg5t7u8gUNnuoqJouQniB7XcvLdLb4OdebVPJFSoZzqJ
	 Ad5U79w6ByJh6hWruKa2F1dLIjR8HkA1IWr+kACnFUBphzjpMxeq6W7C/C2UMaqvdu
	 SHIcfSzggTipooMKHhoCnknNBEva69FGCyHVTXD51grYbQRCTAcuIXile2eq/qb1Ks
	 zS0Go91ipeB4RhMihDtMUPRDcBVjFLcDO4joftt5DhtrLi8Qa6nKWeEK98P/8xnIGG
	 MVbJnBfEAkcYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F550CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175981439357.11881.9699253198734805150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b68ec3fb5337b34196b5c36fd842c5b9e0d0e64d6fb95ee05bb4c226b64a5ec
Date: Tue, 07 Oct 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759814393
