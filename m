Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DE033F5AB
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781787994; cv=none; b=P17RW5WXeZwUBLdbRg5q8PqaPQ0aJaHFGsUYdC+aW2krnrO5HD6PD2LFnldHVa6wBiMzZiSc2BfHy5GvPEBskt+GY/MVsjdVrnZRhZUaB2G993ZofxznPVoKy4J/m29MRLRNFM1LLsbfw1R3paSUBZpRyZfTHexBYy4WlW4VR30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781787994; c=relaxed/simple;
	bh=tOiec/hTrkiKe541fyhthnfFkubStvf5vmbTZ8O4PNk=;
	h=To:Subject:From:Message-Id:Date; b=tOlw+qlU79te6J+HqkqXoywNk5fWwQARme4j1m2shx/iXMrA4Qf+lHTUqa9YKO7kSyh6OPTtkFWWDYLmR/Xb5LFsZBjM8DzPcHzTH4Nx1x2ZqRhx7wsEJQiYrmoJ3IiYMIQwMYLT4PtMncUjXcIzxkasebYBGWPP3R7ai/GjHGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5Kar1do; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5Kar1do"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2F8C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781787993;
	bh=tOiec/hTrkiKe541fyhthnfFkubStvf5vmbTZ8O4PNk=;
	h=To:Subject:From:Date:From;
	b=F5Kar1do2l1X89Rjgj0tdrLU65sNnD2vBrptv/Hhl+YYa68Iqpn3IFarU66D0Ys5n
	 9nf9vFpZnJs7QJOlyAmxZYSZ/BFfbJbYdr68NDMLS/FN8QjIeQCh4/YZi0PmNuOrbf
	 WLeRfrAG79gKXkx9Oy7LoIp76hlO62HLQOHYNr+46Pa5onrn8uMi5lXmtoRch51j4K
	 OhuyufSXEEHbCTtr2LTFdX3t2fn60w0uVW66cC0ojT/cQyx88L04pDmvmyRxNJbtF3
	 uAJkx8ohwhDeEIXCs13VatcJdRzgEztuxRs117/YrxAP7fLqzxZIuBaHIot8ffdHcJ
	 vY+BFfIPxnNbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDDDCD98F3
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 13:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178178799369.21449.11600927155963343840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ad36eb48e0bfdf05cf391402a1296d902f8bc241fd9d3503a6afe0c978da4d8
Date: Thu, 18 Jun 2026 13:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781787993
