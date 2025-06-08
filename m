Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A90110FD
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749423594; cv=none; b=DUQBKBbejK5i5+w5LCJe8FOqrBP5yrheiBNY/FboaHsMAgaJ2ABTo5Nzx36XC3d+lIBxBQnhhfbKqIIHjQaJ/cwYl6rUjReg413E8CPXW6hVFcTop3pbHwY24bHZc85TSIS+ehOC4eSHK9CQllocgNbVa2zs2AIiQFWYNK92nTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749423594; c=relaxed/simple;
	bh=Cuo7ofh9gmj16gyEx6JfVTVeqCNSOVfpUjZkQ7G/Q2g=;
	h=To:Subject:From:Message-Id:Date; b=uFaMoTbUrunalisw3OjyHouLfWsniCjg/u+13tQss5iEOumw6cjpcGQ4SRpQpwHLNcVfb/B+IxLFf7upmX94KlNuC+2PpTMfTIUlaeiD51UpuUEwhqdChqcHpW1xDzkAFnRztStHEnlyFU3E5kAgFCeFCnApKn4cHWxJ4dFUoFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anmXMrXS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anmXMrXS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A415EC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749423593;
	bh=Cuo7ofh9gmj16gyEx6JfVTVeqCNSOVfpUjZkQ7G/Q2g=;
	h=To:Subject:From:Date:From;
	b=anmXMrXSS+9MMqh/8YktfsnYur7nCifu3vlSFNDeTAxaNb2i3n262cmNDJLkI3TcW
	 vU/QiWhnx8+I1iCEt4D1RFbjo76uwUPxbS4+0fOYTk8tOXYiFld11l6kZAqNOnESr1
	 3EX2+makoN6ecuTE+A17O8Ju75vQbZgmBm6BOrTRnnr42YFHgBQhxDMLSItx8pxNmC
	 +vOH6vB6awTmIvNOnjqTFUadOeyGzlEMa35MKr5MK1sU4aSvOChNwc3O1lq1fmlZLA
	 HtwkZiMOWbsoGr2RjBYFJlTcHftRxSIOlt+rfDuB+ogKEDQEBJnb0Nlfq2F7Ss1y4G
	 J0OShDGkEOlpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DB2C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942359358.3311.17105991478305022279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97260742227f169a45604de8458404b134bcea252d614a8eb5ea04e8033e4a44
Date: Sun, 08 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749423593
