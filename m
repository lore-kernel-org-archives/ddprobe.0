Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2841A611E
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757794; cv=none; b=hHT2sG16OYdtl1qKY4FlDasnqA9G9HORhsV0f1bMVtt5udha7hASEXD1DssHZ1at8/O321T1UeQ/NMofVlQ6cR+yCRCs0AyXKktizd4Rxy98nWdbz6w+c/+2cQVTbS24pB8Ci4ofr44oF2g73D4CGroqlfG0+tvpUU78fTOlNm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757794; c=relaxed/simple;
	bh=SYaSSov4wc+eABFN9X0CV1vxjVPdl2pgG3/50WOjaqk=;
	h=To:Subject:From:Message-Id:Date; b=QgEJhRFRtKUm2kvCbjhP8Ro4mmucsisPesYE/AE+NvjhqiezNNLJVEKOLYUJ73EXdDnFnyXGoeDV3ESwM0Adkc7wRTYyDk89C/kxHvEtIGsCMcr/daHNMusxQUSy5VW1C+ksy/Jsvm7zLLD+L58oq4G3csXKzAoFUchFFfKa9bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SIzuPXvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SIzuPXvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0839C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758757793;
	bh=SYaSSov4wc+eABFN9X0CV1vxjVPdl2pgG3/50WOjaqk=;
	h=To:Subject:From:Date:From;
	b=SIzuPXvJYh2n1XmFlzut9AStDvCNN5f3lu63WCr+A8ao065k0lFILBOWOB6JgbSsc
	 jwvSBj+Wcwbw8VkFUMqp3Ecttb5dQxYOEzA4DF6KCyolcAZtbiFkePd4oS2hJ7h979
	 aUxrWoPnaNeo3LRrOoc2asUmdIQp84MygQZUdwd7Rrj9aaSHM5Bv+5mf4CAOWPFp75
	 /Enooi48rrC0iU1gFV2cylDBbg4dfgSHTJINBkxnNch72udEHLhk8AjYAz+HO8i8hm
	 GS+DGk6Tye1qTuUjMzXtkk3cdX5MXfpmTomcFiJHU9Jgo9m3ddBDnFlHJlgDT7OAX5
	 Xu65dTshmHrpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BE8CAC5AE
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175875779360.15449.2571673177038575043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45e125230f0ebe823b3550ec0f35225331b8d0f5755d217d2840cd712718007
Date: Wed, 24 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758757793
