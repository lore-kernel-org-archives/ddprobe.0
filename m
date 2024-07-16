Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CA8F101CA
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721114123; cv=none; b=JOQ31ZbbAJ/nlLq2/dpNaYUloRzAXFCN+e+Hhhoo48C4KeOkCMw00fq83IIkoqQvTVlyV9WtaAG1qawxEAC/DdpdJpA/QVzzxHTeiZkpv4ykOTJ6O5ntttJZz7Yzk0aby9ZCNISMRLgWCNrJm4gSz+Ug3EWLd5Ef4Qwr89Vr758=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721114123; c=relaxed/simple;
	bh=swyZ7K2GCI35nWYGQL1hxDmsdBCdCFJnVOL7ZxoNCYs=;
	h=To:Subject:From:Message-Id:Date; b=oYDwRajQHEiN5Q44t63Bv4je1juphftD2A+R4OPB50W/QV8gjRVssW3yXUaL/+y14vh905l7E2JWMQSpbGqQJadppAuoPOFZ8rWNARBnUqSlpuaH0d0+5l9CfOyJyzNmtGMnjQCzeP90kv3DcQFsiJzXbeAcKqqtgtwiyTpSwbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzmJIg4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzmJIg4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02C05C116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721114123;
	bh=swyZ7K2GCI35nWYGQL1hxDmsdBCdCFJnVOL7ZxoNCYs=;
	h=To:Subject:From:Date:From;
	b=OzmJIg4SVzWskkpUJ0DPtf+4y1PDCDOH0nVOVilbVI3keF21k3EJD9UKuylH2DKuX
	 Y9NqGdAOaDVaVop6XFBWk3rpDUwS2b8355ktV02oWzusCrpVeOwfp8RU81wxVRQOY7
	 3TSQsFlVigIRIGpIcthNEBeopI2JPhKb9QwwOWt+GuFTjjJt6b6q+HZCScQw1yZDlp
	 IftWyN7PyMNFRF1kYcdSYwMs1hjz2+1Skc+e654CNF5C2yUTPcqrZom08ho+U/XO3+
	 Hri/runh+pcxxyE1hRb3suNEhRrkJ9c0QIpC37M8LmYh2qfAj4M4+9l2AqYOt3XBJv
	 0B1ATXXc68rgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D72D0C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 07:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172111412286.28489.10052691196216804606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1522a59aae865c32be2e75a2651d2ee47ff242eb242ff067d3fedb534b83232e
Date: Tue, 16 Jul 2024 07:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721114122
