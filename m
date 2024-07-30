Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FFD1465A2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722354354; cv=none; b=A/Ir/t46k4Oq+cAEA6m2X1QDfNre0zf4sdBFGQzCLrnuWiCnXbDsInyc0ha3dxyjHeJpTDRCxHzglU6cm+xOpK4r5DvYzpZTq/Nh9RevyuUtwm2CEEvEsbRjz6M9VdIxZWGwxipaII+tlgUmgYt9lmwYEuw9FIbBT2VTRgA/MZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722354354; c=relaxed/simple;
	bh=vpcqrmqeBZhnBomMLLs3zTTraSobcMlVP1aC23P9fbE=;
	h=To:Subject:From:Message-Id:Date; b=t+VwmCrU6pfMh1lvbWjcJJrt0V8zXlwkncl7io2QmqDwyvkETVRJ2DYkjU5IHJon/AzPn5cLS90xJBQ9zrzc/Uj//SSQgTrprgV9S3WDRT5egiGmZCKcrZ4kLlrNWCob9VzF1UrX6HdJad1atoC8nVyUa7LV3crbHviFh++2NH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLofq4qg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLofq4qg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B339BC4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722354353;
	bh=vpcqrmqeBZhnBomMLLs3zTTraSobcMlVP1aC23P9fbE=;
	h=To:Subject:From:Date:From;
	b=nLofq4qg0nr10YLbTgjd7Rs11eqmEgxhWqdVMXiGLV4W/dElnetPKPb8zRJL7rjmo
	 nLsRwfnCtr2Nt1uuowEl80ymMVptt9OxoVgvcffuITkvogn9e5VwksdxOegb6NZQld
	 FPywat3Y8wc4Ujgcu+Od8/jFf9AyPSB3HjFGaYVJiXXbmtiQ2NgLhaPFCzYdxZBWiS
	 AJ5uqtURyHDJ/hT1KkXRSlHowQIaJ5zVrDhWlV8y2fcqfvwWTa86oknwRuMPhl7Xe8
	 eVCTVsUkwAvGhhvdI5VKVvNCuOmM16+EiTEKouQZneDAnBEHWZIQZP+nxI+474ZDDA
	 jcoNWqWAe+LJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964CDC3DA70
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172235435360.23925.13545077687746045042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 393b540b469273206c9937f9dfc87f4a7e9ee16398d5d7f6270af2c151a30268
Date: Tue, 30 Jul 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722354353
