Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33F91898F8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755786593; cv=none; b=Ko+qnd21SDat6Jixdt1Us+lpTmib0rpRbDh5IfX/PdUG8QtdQDmejiLvcRkExlZQokMwTNr+nR2AVrrA5jRAIHXrhi0cTLOk3DdqQrXK7uzUs58sqxYVDP+1YT8o3OwmGu2/ksRivFA5uFeKzjuvB2pmG5LGJbmRyWtIEX/j3jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755786593; c=relaxed/simple;
	bh=EmsRhrnkLaeg+OrQCPZAf/omDDqlNlB5WJyLNSEbnXQ=;
	h=To:Subject:From:Message-Id:Date; b=Ed3bKlnBa0r57UPRhPGmAnmQYkgDAgSA8nRCZ30KZdrJoltRzDOxyN9FZrb1SCwwJeVf0WA8N6XdtDlVhT3II2/wcL4sTelDf8kHE6n9KFEsnCCWht7g4qt/4Fumvw6IMHVHiaHzvsyNxGL3dUq6zO97WwxYANZoueicOvKcNQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXi6GCXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXi6GCXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B944C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755786593;
	bh=EmsRhrnkLaeg+OrQCPZAf/omDDqlNlB5WJyLNSEbnXQ=;
	h=To:Subject:From:Date:From;
	b=EXi6GCXiWbuIvekcnZB4vcne3ojpSv2oVKjScjG0G+tB5LUXkbsmVFs1l1OQZ/0Lw
	 zruGKC7un2BQXFbyeoS2nibSYdMPyi3HICkRAqyvXtHsSnCT9li8f/YrqYqCAXM3zG
	 Y0zrmR4AWznsTRVmMG1PuuBN+vpbfNjzzrL5bJj/57j3svOW+FG1rF1Og2xBgjuJir
	 X1bVnIL8RQnZ7TBeeOD4K4hMeSgIA4aRED50jsHBBido95tS+JVVshbOCLLrsO2iNN
	 GJ5Ew4IC10ahABklHFk8XlgPc7XIUKsrHCTI6jMsqsYAg4wJjlvuspGK7QHa8tsmSY
	 pCGXI0mLuuMTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F615CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578659357.24912.13874264767525001966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0cb6ca2393d4acf37a20667e8ae74079f200d9bac55def40dc4ffb688d86d5e
Date: Thu, 21 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755786593
