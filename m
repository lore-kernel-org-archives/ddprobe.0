Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2CC1624C5
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779577354; cv=none; b=W54/8ypL7NFPU+Fg1GVq14hZx70njunMB2/Zs5R0acxdxsbJ2v/n3lgxvCPt+54rkO2GCt21Btd0zC6FIBNMb/fzUEWH3RM7UXXx32XL1H6zVW6b9Fh/Z9/dlL6NIiByhk8dD3wNyWR0ghophUMLIsEYPwznn5cge9c/90w1LfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779577354; c=relaxed/simple;
	bh=NU1lbKtLna7VdPIvxgCbC1IW8PT9cdcWNwDshg5ykHs=;
	h=To:Subject:From:Message-Id:Date; b=Tt0Fg5yeDFRAIdw+fW1m8IqB5mG2tU5oUgdHN+kTF8hy99LwxOZW9PRwYXaN6n7ATiIIdFC1Tszd6trlTuu1MLbBbDJwtHY91hNLF5k7kPfmIBQ1Li9XTX3Xic7zjZBeqU2Nq1IadiwR68RMTE+UBneNAGYGOQM3LCjpr0Fh/7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NW+k67iu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NW+k67iu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64AAC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779577353;
	bh=NU1lbKtLna7VdPIvxgCbC1IW8PT9cdcWNwDshg5ykHs=;
	h=To:Subject:From:Date:From;
	b=NW+k67iuP1XYB8s4hXmvW/y5h4XN7UtPxvH4nZXzYDY6bK6QODkK2Cw8wcCaMaft5
	 G/PeLku7U76kUNTd+cJCHY24R38V42Ul6kwWX43nvh6GSzZvAyAL7wDSH6y4IZihoY
	 8X5f0sjyqddG+wLFJukGalNUQt9i7RmrxCesgUSTilEwr2R3K8v7hHWeFvk8b6fyVG
	 FJcE3j58OQnadbYWKuAxLemZRhFRwuqK3H1W3rM4PyqRNLafBi3/Q6FF8gg+D3iZ/C
	 xeSMi5CkFrsiKurFpoYb5qRR2nvBSnEh55Ug9TIb3QVL6KFQ1HTwd23eRhehemlsJK
	 kFONS1OHDWg1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8607CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 23:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957735368.32092.8868291069086008244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae45b5e0f1aad3dabf5c71d7bb14afebe629793d72b432cfd1402e80274b573c
Date: Sat, 23 May 2026 23:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779577353
