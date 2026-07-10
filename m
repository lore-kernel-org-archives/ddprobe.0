Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4424C2417D1
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783727914; cv=none; b=V3XdmFR/Qfc/ppCl+6rWnAQ4YqJRne6knq2P1Mxx0Zb6EyMsYtPsJ6gElOgEFRBcABObLPGjcALblpPgvfy5Q902oZLKho3yNMRxV8yjKRzKtbjksg9ESN5uH9ewd1hIp6WwguSDqS/EKCaBw5o9HzogGzC/KBBhBOW+tzMD6Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783727914; c=relaxed/simple;
	bh=BuznLRR0wwB6TRha9bB67wn+To4RR+C/BbBcQZU+p88=;
	h=To:Subject:From:Message-Id:Date; b=aeBwi+D4WcXJ21KZN2XmglAgggIIeObPm0qtB5cJjK9JVTn4St1n/QCoiJI+vW09HIZc2VJNwiF6J3HIKnAGDRZYCE0Cmdbonbf66G1XLcjKaUF0P/+58Z7v0h8zkm9hb8awXRJd1pmVeHYgi0SM55bF+ruc1+UQmxpfkEeWQ6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sR0NOR4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sR0NOR4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4BFC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783727913;
	bh=BuznLRR0wwB6TRha9bB67wn+To4RR+C/BbBcQZU+p88=;
	h=To:Subject:From:Date:From;
	b=sR0NOR4wD9kuN1DA926/zaDgVai8+PJFIvD9hpdLgW446PXt2cpo6X1pUovPMImJC
	 t3HXE9skxXzUCB9mG6ar+nVNJhci65vIdcyzBvPQp0wLrW3niJ/Yu3kz5ImAHP4yKf
	 P1zYMhQUE7KuWtl7KLBCq59R/st0URknyxEGBuDM5NwCCIZMuI7b7J1hjBlc75+GJQ
	 7rCfX21gcefI1a2sGP/SX8WmDayKvMg6Bqo2aHIrEybPYW07u2qsEIU5v53vPPSn/u
	 HcYhpTinEkjzyiYmA+29BEejZKoWcJf7WCEgpVVGbIZmCR00w5O6dBnrqzB92l0tNm
	 ggoqZsfDit9pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAA6C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372791368.11678.1870767966420424741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18f84df0b660a622f6719bec84c1949d8e8db925a33c390ba3dda157acc3419c
Date: Fri, 10 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783727913
