Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB1248CCD
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722880554; cv=none; b=sM+XOKAIhbgg/UPISghM9Z4BIbUEJxPNbbXAqr4ZjIWunhgNKQyhWvlJrq3Ozj1hw8Csa+c1Ty4fUp2LGcDlivYdJmtDE5aHd7N+AEYHxUCgAXkeQAdzZPgq/IXNdQNhjyRYE8F+xEt0e9V9snjBFHdNbPMrgd33emRtUmIypF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722880554; c=relaxed/simple;
	bh=cwP417peoAomPRjcO1SLHXiinFVDvX7XOcstaU4rhm0=;
	h=To:Subject:From:Message-Id:Date; b=VU75cN2yqnJj1ngH0ev3vStRLJXJ5pjCarLtGOQeTzwNRj7s6DGrMn37K3fBEdfAQt2CaRerXbP354Q4jYqIHDPb+GD1yCWzzD6+nRfVzlUz2jRfJ6BXv8cxsRoObbAnFNVjGxn/FUOQGBrr2Tw58rrdKZCCmmqCpcUKmMpojPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bi1rQDEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bi1rQDEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE32C32782
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722880553;
	bh=cwP417peoAomPRjcO1SLHXiinFVDvX7XOcstaU4rhm0=;
	h=To:Subject:From:Date:From;
	b=Bi1rQDENVgvwczgFZWPRfeALG/tip3zc4AGOn8J+km2KKTyG9Ok1rTFPkn36EdytF
	 6BUvxINfloTQ1qxdqEH0qVzdSoFbK7w2Ie4t+qOBOvaXqRNmFRLTvGv7N7ptNjByQX
	 EeerIBhiPR4guvhrgu0QCIjlZTHP/t5wKLhdaatVz/H3QgKTNfzMa9inYuz2UPHNtV
	 Db7imWn/ovuf+VA8cKVxsjjUMwu3iyCf2Cf3gZb5xQvW1U02eKXVHoRfVMGps2qpxC
	 2oKryt9NWRkvTdOf//8ZVmo0EWBGdcnbueNgDwkJNaSvInoxm8VYKMq87XrWm9I/aU
	 fUh1QgBIdWArw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98931C3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172288055361.1837.16865719228214299086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87bfb9e685ed49efe5f12c44e8d824fa98fcfcbf3517bc866508f547a2e0cfd9
Date: Mon, 05 Aug 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722880553
