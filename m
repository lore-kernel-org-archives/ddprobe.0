Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8295C477992
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788301234; cv=none; b=Kd64XqaiHA9XZvyvxAlyFWjYnrwO2G9+yI59rAqqv0n5DreZV5JUDvodLPZ/q+d0wHYgsByM8LbY2GOtecC1ZF17CHqtRQInMtiqKtUJutrCwcUGPLt+5honLxMQ4dVyw0O8HNkeDoVhJtejBTJvBzc11Xk7SQIBQKLCJMAOaUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788301234; c=relaxed/simple;
	bh=2bcsTbol/fgeBns1U2Yo+dW481rSJHstxNHb/ws+nig=;
	h=To:Subject:From:Message-Id:Date; b=Rz2p310KbUwNpxrIRouUj/O5KgQOc236LJ8fJGiE8dL+wrouxRILepgMs+NSl80XBL9FsZa1Ep2NFOyR9gXSW/Jlwp4GHZURvdz0TBI1gki7aAvScgAHZCfBQ4jEnsT75Go1H66II8TqBrzATuEcm7DnF76wkN9FsB4kBjIaivc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+m0j7HF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+m0j7HF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4227C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788301233;
	bh=2bcsTbol/fgeBns1U2Yo+dW481rSJHstxNHb/ws+nig=;
	h=To:Subject:From:Date:From;
	b=X+m0j7HF1L74ytkQtThd/Uvin0sw46BqYjQCZzRONKDwNo7xre0Z7F8u4W/BKoKiA
	 zr5303fULnCckpOiOctouz8dRH4yJGAFljvfrAl6xkWRq0DjjszkthLMUR3z+39hu1
	 D0+91qrm/iCVeKnQ+IEUKXrS03HqGdnzEKBcrFBs2D4NLitKXa6NSrSWbl3mQ97SOJ
	 g36dGmRqHzOcg9R9h2f+B3XS8HHXMdSv11z4NAiY3ZHSPB6vzlPDFx1i1z9bMjt3Wd
	 4pfzE66CojE/7wdvsK/ud5g0bq2DmviwYApjfop+GxcCEpqLS5dpzBDGpnPBsUvSfn
	 utV4WUtb/76Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD32C61DD6
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178830123368.25488.11922262828321605071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba93c79b7e9a56c197cfc03f5a1e9ae6d10f25c7221eec17f4d2ed507243e72a
Date: Tue, 01 Sep 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788301233
