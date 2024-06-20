Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613A51BB696
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718908823; cv=none; b=B2E4SzbnMTSpLvKJJyVmhLFkMPbt3jZ+fdz96M/f9xxn1FHHVe3LmEeKvnL1COF5E1dnl4FHBuiT91khShkOp7wk09g8C+hJlMSgoOVtdovsOXqvP/EbFfvdTE5hkZq0IP26jf6iLzv5pR4halwT528x0ygm3zhu5hvbNhja5oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718908823; c=relaxed/simple;
	bh=j9WK/JnMD2o7ZvuSmNzj+5XBkocVZNAXPBbZL9+x55A=;
	h=To:Subject:From:Message-Id:Date; b=TANlhMNRUogZHcmo9GQrXumqH2bF/sFSHbzvQuH3wU+HU9WxUDpb8MvsNPcVp7Y5/z4Y3pN/jFyyK+m9ces5ZgfYhGeLLRxiub6JbtMG1aACQwAHRUcg2C1dzaPMtUTIOL2b2rDphmPJ2zwGPTNIaYvRYLaknBZ6pPWH2GVYeeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBWKTnc1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBWKTnc1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECCAC2BD10
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718908822;
	bh=j9WK/JnMD2o7ZvuSmNzj+5XBkocVZNAXPBbZL9+x55A=;
	h=To:Subject:From:Date:From;
	b=CBWKTnc1PJoNotVvEEhWqStlUw+fqCnruMYrZ2GbXX3gTMFhK/8IolGOI/SRF4stz
	 O1oOfnZYo6GMEJgY1SZhMny6BZhZilbJclobd8kC4dVHn6k3+PaRGPq6BjQvs5Pz9E
	 p2+1hZZCR5QBbV/XdrlkB9LjlwUfI+qZ3UZN/4O+oGGsR4sVkIOif15VOtq9J5i0lw
	 vMCuj06U+OduTlDaCRnzhaDx2q9qxOmj0xkNvn5Dlk3zhyiXO2hSwaIXRecxlea5cD
	 gXQC3iycaVwnOtDRHBIiODSnn4qp5nipek2OZZynf51lvb4p8Bnl5bEMHLxL2XzXs+
	 nbMETnCdUWuxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA4ADC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890882280.25357.9805772473243397009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4a42c0f0c88d1dea487e3981b0c2745cf9f25107bf8fe2ef26f596ddcee9020
Date: Thu, 20 Jun 2024 18:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718908822
