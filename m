Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F0E28B7DA
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789259434; cv=none; b=KQEvoywb4XP22UkXH8+kZwm5DTyr80T1710tvpqyYJr6iyW14AyM1kBdvxr6AgV11DNscp2zhXqOe7QqlypxeFAr3STyWMDzLHxEfFnlGJFOVbLBVwthQhMPz4PzkgTBbaIGsPD5xcVsVbMz3bEGJyuMP/VgcsC6BlgsAMGF0eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789259434; c=relaxed/simple;
	bh=HG2L8eY+p4xND7Ywm30XFlYCtEqFrC50rHpfJS+7s1M=;
	h=To:Subject:From:Message-Id:Date; b=L8Q+fg7s5Ut8MBmsFAEtKEv/mkEcLBlSXG44SEeFdLcCCD0GYlVkDSAr5xbqCGGmKM0J1b0MrXuQrxdsM/fnQhi0Lxs7fgzQa2jMYSmOkLCSmA8QYTgL3OF44jrMaih14Es3l0Xg/kTXnYeQzd9+6KVKIuKF9OLpx97ckx3i6+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8N4YinX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8N4YinX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34F7C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789259433;
	bh=HG2L8eY+p4xND7Ywm30XFlYCtEqFrC50rHpfJS+7s1M=;
	h=To:Subject:From:Date:From;
	b=V8N4YinX54UO1gJ2XXem2Q/lAD+Xh5oFkBZC074htuW318lfbdxeB7SbXYyvuSw6/
	 BGZ2CJlohOoSnK4T1SIWVJcyfGLXQUjn5eC+y9C1Tn70alGtAo0OVfVkkrR54wZpDa
	 JZh+ULtNRVR2QRlZKSaQcWKVlgluuBPmFvPFQTAlfGFOqGe1jTplLyMwQv1D+NiYVb
	 y68PO2Y8UcdKaK0GdvUYagz8TIByertKL1/4dJCBpbUp4/a5pGTBwIRlBSmn2H+gu+
	 jR9uoSnGx+RURcEVX8I1dGvYUx/EGtth3n2bUwWdtbLWfmb1EkUndB6nFTSA68PmPO
	 uvfrSdrbfm0Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA38C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178925943368.21331.5209164711915365693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a96d511a6896d9dd69d168f52eafafd2195625323bea04fb3773b94b0508c4f
Date: Sun, 13 Sep 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789259433
