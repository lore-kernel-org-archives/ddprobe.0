Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357B8A31
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728204954; cv=none; b=U3TGFuScC9z22ziPicCd4i4khSfgtYQv9LkpqtZobf+S7UGCImhtFvp48erPchc36JEXaga5PeFBxPiklYnCKPSU5wom+ZZ9rVX/vEiOu1aahuR8Ylwjf0cXBJvwaPDLCux14XsdmPFy8S7l6m/HaQ5k1CE07UvfO33n91L8NwQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728204954; c=relaxed/simple;
	bh=it5tw0kHSa3lk8/FrReto4DWBsACnZ4dPs+UDuQtm1o=;
	h=To:Subject:From:Message-Id:Date; b=fGhDDd66U2/LfHt0QE/yhFtJa+lKam8icZ9yrGrVRNCNqeJCwniusLDniH4HEAfVQvD0WPqiI3s6msiBmG12DsKcXlLPMd5VLWT7V6/B/quVA2uhmie/mzy9peHjhbrWfi/it33gNs0GHYkoBYIP18IKiYxjqp0Azbbi96/ybFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c97LG2Uw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c97LG2Uw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57CEC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728204953;
	bh=it5tw0kHSa3lk8/FrReto4DWBsACnZ4dPs+UDuQtm1o=;
	h=To:Subject:From:Date:From;
	b=c97LG2Uw8EorVuBBcl54FMtPcuBvxp2zPJnYhlGBIajo+n5xQwd85s0fRw8jL4eCS
	 WcPs2+LNk0iwyid1OQOAWyyTrc3TcKKvHGnkeB1VJgogRstBlFaKN4pK77AsjZK5BD
	 9lP2ziWQ6SSTMo2T5ZTKvd+uZuyf9xANrZhV9Pddrp9XyHM6Kb4yUWp43/Krofq7ra
	 ndhvEcaSTdxF3vhskbGAhmxR0oKuC3M5P57UQLMtZRlnksXCP1VJ6NkDx3wYQ3u6St
	 7qIv+G5qxEI0UZp6sLVfTsIsGPsSnWHsd/nS6P/ZA9OGGfN64kiCXnRw2VDqwB73HC
	 f7PTN+EkZY9AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9199DCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172820495358.14173.17537265226890957043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53af1478f245d3aa174a2eea262aa04b802ea4175065f998d88637dc7185e67c
Date: Sun, 06 Oct 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728204953
