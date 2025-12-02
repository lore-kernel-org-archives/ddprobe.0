Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8ED182B7
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764652974; cv=none; b=bpNImRMyECPn2IrbKw2aLTRDU0M3Nijcnzlyw7/E5nCITxW1L/x6L5Utwit5mc2wwLMXPp6Pl0TMmP4D1Xz/c19+O6fPxG8MOGZGX2nx3R76VF/rmmOfsLp3aC+Bny/gZoXbNoY9/3ueNiEUh3A6KKqHscJ8F1rqASLdQDTG7Jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764652974; c=relaxed/simple;
	bh=wG3DpmrlMa7yTXuBn00l1zu4ffHNJfFESdhp4FtKWW0=;
	h=To:Subject:From:Message-Id:Date; b=P2HcVnJdk4MbqS1qU5N/d0SmepTEjn4bWDTf+IKUP/dJoBSh0TwoMY9QI3thQpbDum6UXfod96mY648y4F8WoowR4WJ0O05BPTWLW7+21jCzQdPvCMCzxlyziejpa6rRucHMkDlhHTrx6bHDHlmImqI+IlaNqRzTKb8h6V6Wr9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JP3Bmy3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JP3Bmy3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9306C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764652973;
	bh=wG3DpmrlMa7yTXuBn00l1zu4ffHNJfFESdhp4FtKWW0=;
	h=To:Subject:From:Date:From;
	b=JP3Bmy3RewNDLnHENm7dg07OuYjP0NUn4tBn2xbJBU+jeEX3CQbwYZXgCVSYxeSD/
	 dGWe3ptc/bMkLgG2n04J5DWpc8wf1dFZavzH6qtZFGkVuLnWcwfN3TxEqEWGKpuZaM
	 naNfrDBpiyqg6mSr1scw96smRsQ5u9d1WTRzbVvI+1sMygoO099z4v34+mK2Kxzek1
	 ZCjo3cb+ghOcyJ4rtwWcWQiAQIn4D+QCjeRlGuRUeRWpV/slJH/SvseJxYQ/qrLgFQ
	 zxgAEOhlSxtRebC1Mm7u172GguXLLf6Ww6IaXUteLgDC2TYRdtKEwhDjWZl/qpYDxl
	 g7cRfjbSpdUpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943EBCFD376
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176465297359.14671.17940645075665448644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d94f16915cffe4373d9a03e1ea643f79e0d1197642d641599f53f3a909c8986a
Date: Tue, 02 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764652973
