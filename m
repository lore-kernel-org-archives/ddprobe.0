Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E009E25A322
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747717194; cv=none; b=bi21drgUHxfXEHRSXG2PQ3tZqCuZJYEP8rhl66nTWuDJmFBMlD3l6DLXH9YGY42ddsTo4oaLQe+goDljR/2Z0xwuDvrbBPKGpPUBWPS9twgSrntg2fphXlfpN+yuspbSBgbGSvoYj00aKbPsMBRwMYtFpXj2bSiBTqbydYaQtxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747717194; c=relaxed/simple;
	bh=Sl9JUE4k/toG9VRmsQr2o2sWQNK9y418YSgPcQELQ1s=;
	h=To:Subject:From:Message-Id:Date; b=uiKyNHVvOzHj6zWgl1VYX9NGa1LWOzBkXA57LIAojREiXWgzsSz6nFfcTQeU+2Ld+7gcuScmlO6/CfKfW0QwWAMlTOhyel2v2OnT4T7YlYnSREji6Ok7FLJIeHzs3g4ehqQ+lXsS7kgz5hPhZTDttyly0N7CIR8QkeZcne9qLow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHw2vyGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHw2vyGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9E6C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747717193;
	bh=Sl9JUE4k/toG9VRmsQr2o2sWQNK9y418YSgPcQELQ1s=;
	h=To:Subject:From:Date:From;
	b=BHw2vyGmDKYixawMEx7vkI9TFHvkTIvGZhgzmxqFphqpJDEkwBIh8yPqXEzzhKyTs
	 4hJ9TVp71/RuSQdz8SNyls7IUaLXnzXB+yPsJpXU7PA9Ib6G9J5sHkzrGALU7GCwrh
	 3LFDl4ZaOQhh4o/00x2pBU3YaPlInUuOIBNoKcECDy6HoWMjD1473HBRy572N2ogbO
	 Prkkx+0v5FMLEbXHOy+Uew1TX1wOR9/WloZq1mtTE9FPMbyEfmOkcs4UW8vuSJn+Pk
	 i0fNidpzqvSe66xJI2MqG53bESL2sQ8gzkUWP8TsOUQY1alNpX/FbLxX6ADajhbQgZ
	 vfR3Vc2M79aCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBE8C3ABDA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174771719357.26550.16140760887807053108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4110800df06512d1ef20d1c082b18c281c16946df0d27baf07de23fa7fce244
Date: Tue, 20 May 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747717193
