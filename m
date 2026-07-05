Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3254D384CD4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783261714; cv=none; b=rBWFDvRm1FtO9OWezpDJo5tZLZifzroVLvnvPe0NaKzUIckbXufY9ZYdU9lHKIZS1+6+4GpphlUt64oSlujoRTpQAFB2aaVxDJUt92U+1pPo4mpiSIqeAxF+6LPCvI+GguDZyO+o3X1TwiXTsKQW3pjFLlDo3og6PQZlH5f1yY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783261714; c=relaxed/simple;
	bh=u0rEObd7bj/N7L+A2Olgo1YnYbTXUf882Snfn7Imc7E=;
	h=To:Subject:From:Message-Id:Date; b=EVl17DkmCbskM4d57ljSfxSrIabH7FULr1l2vSQTPMWSPWSo7VN8txW8wH7FZnYzaNUVuDu8G7DgnmD2HvxEpEkRCrrgYQDuZY/bZiQX6R98yivlD79MY81kgR7gByzG0x0M2gxgQELnUDlAnIYYcmDGx/EApufrfPaNpZa5LYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvEwvoMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvEwvoMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEECEC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783261713;
	bh=u0rEObd7bj/N7L+A2Olgo1YnYbTXUf882Snfn7Imc7E=;
	h=To:Subject:From:Date:From;
	b=TvEwvoMPXyLg+S+fguUAbzAjcghb1JDaPLTDffhgxzsppRlYrEaqh/+R+vCN0RuUL
	 ZzCV5cJfSpVRuT+XePNMnAGIekNOV3BLYRW/L5WfVff+ybZ5gajBDjGrXrvIcSIK4f
	 CAdfxMiky02Nppr1Aiu9kYu99HrwjPAxZJ5kO0WvwnxPbBxsGXmRoozEvHTjjnnna9
	 hjtUPc/yWzdL/pse2FrEzi7aYgjc5IWo1EeP8f2Bsvx57o0c7ERoNmEd7A80bGGR5B
	 oSBbTmiPsrCZq96WbGdOaHGTMiET2d3l8ATJ9iDsgi+CaGOrVxaVc0AdOXvMeibZN8
	 GJl7vdgyiQFkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF5DC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326171368.8758.5135458843940049272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eedb9313f267272960a024a408ae74b49145b031db1fc918a5e1db37b6a4513
Date: Sun, 05 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783261713
