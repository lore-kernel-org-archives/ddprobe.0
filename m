Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8A84C81
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775793454; cv=none; b=HtGstxSLcnCqoHOEcE58qCVyfBQPAiVSoGsPZv/OLQQ/w0c35adAvaL9EnGnG7z5cE+zrbwkmlAbVJdpNYfRf4GtJvUEApLutLlsSXTkC+6hcj3p7+rcGxnzL2tyflXQnng/2LHkZidRqyAlFL+sBYtdSu2UUwV9UomOd3Em79o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775793454; c=relaxed/simple;
	bh=Wy7F9mddvutG/Ro5lrKbn0Jiz5gbh+muEqctNltGLf4=;
	h=To:Subject:From:Message-Id:Date; b=nxM0/Op/J1GOcLid5To9GfNBLlUxhirQ3DJbdJH6RoIt9zg6gRbZ0MMaoiecCLZBLnlBUvve8IuZwAuSLumKN+91qG1RTXMTDueHMIV6DgYCpQGzlFeptW5gSVfCN5k20AiuT2S4gZ8HV9GwrZIY3vsyZS9ho6Ppiv1VH2Fnt5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAc4hjxq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAc4hjxq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7DBCC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775793453;
	bh=Wy7F9mddvutG/Ro5lrKbn0Jiz5gbh+muEqctNltGLf4=;
	h=To:Subject:From:Date:From;
	b=TAc4hjxq1JPjiPvme0tfI3LyDj33ufZYtXJ4jRxLv5GpnrDI4TXn4tye8LrfQJ54R
	 mibtHO3Dtae6rTl/Mp/XRKF5mpwVmVgVM1zDHpmWdr8S7K7gwVMZ49zHJHhHK7GPkp
	 23ZsCtcuMZyrRm479pAEQ7IpxQTx2oM3qNRbf5Az9mFmWe9r8j72uPPXbXLUcr75fX
	 T9gAopZ3Vpyw0uHUfMAKKUVb/esvTuacT4OHAVjd7ycq1T0/R+yy30eWaMfO8Ir9wV
	 4WcaJwoxK9IN1hNgSGozr2BNblINwkR/i0ElB0KKXRcxfmw1D22NCBnQvgAotE3jJ3
	 Y/BGpv2hoG+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9362F36BAA
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579345368.24067.5961649702033582895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a969f71c476d1d8980b55fd0bd8a815ac81e0b07cd17e99a5fd02b1c1145bd3b
Date: Fri, 10 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775793453
