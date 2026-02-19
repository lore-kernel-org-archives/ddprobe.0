Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDF8CF507
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771516494; cv=none; b=fJs0EvWSlMUGuXZGLk6rn97/32ITWKaU9gmPET+mKDN9UpyMJg5gLBi6IEf0sEeHjLsEN8Hz9a8Cn1TQwPDOh8uGLz5P2qJ2xpHplTf7sFrATEymbgyNOUCAwSJlFzkzZnQIP7TlguIh2KYYnzpWQcCTCQNEqSrMwkZsk9nbGYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771516494; c=relaxed/simple;
	bh=EAxpc2oYMvprt3raPC4o6VoHJWkCYyMBDxznzW9WkEI=;
	h=To:Subject:From:Message-Id:Date; b=QxAgWiHhhdia5SEimJs7RxZA92KmTZVNhtvB8HV3gGW7qF740kfSWpf5k5lHDu8nI+LmZ1htdxHoxeohWBMlDRFR4XRQlVGl5fTi1Kdmb19XRK6UllkxEG3GLlk2Z2VY9VLArpZrpPDTcbMjlfPbV0tJT9XJDCNxNoth7e+JUfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bLBsxbHN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bLBsxbHN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7877C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771516493;
	bh=EAxpc2oYMvprt3raPC4o6VoHJWkCYyMBDxznzW9WkEI=;
	h=To:Subject:From:Date:From;
	b=bLBsxbHNMDZ+KPz+QtJ9ebq+UJJxY3Hztkew8Cg2xyrSY1z6s+I4L1wGeP6Cs4xWV
	 R5hqjpTuettmrI7yFxuitZPFlZdVOlh2mIXBsSPSsbaoJf1wJG3CZykPnGJZaDMR7u
	 /kWkPoDAC5b3OcmlfMp9ndRpHVs+pzgqbncrvnbTBTgLN6a3DxaJ9HejWiVAei1DM4
	 YO5f2q3XxXTt7iURTeGVmRJsu2l0mzF1VcuPKQjke85qFaERXsa+SgDtikugq/fqVD
	 MyNmBilzIU2oM7wcyCGNLwjecdbjSPdVyn8FUbFJc217CrmKq0gfHIoMnlOXNDhRXH
	 8ta5mkSQY7T0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95785E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177151649360.19061.2414784932749924427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95ba0c500105d7549c2af8328ba7a7643e980b3d84043cab1de78c4e7d3fef9f
Date: Thu, 19 Feb 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771516493
