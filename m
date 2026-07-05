Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4117521D3D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783222714; cv=none; b=CkzaTEvoaUNaAA2Rd0nQz328AAVbVjp3F/Ka/8k0l7yVzABmj4V5jssCZeZkscTVEWNbK5QjywvCTiUX0NIzoDRkxK0G1bgM2O7kioz77w05Co82Ps9JcMmoSwrQqu7iZ4sZcFjvDk7wFdXTxVtfDIwQO3t67iP/utwXY2d3hEY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783222714; c=relaxed/simple;
	bh=HdfWZ/RfxIvjfMq3zwymrv49MUUsHZRFNe2vz23ASF8=;
	h=To:Subject:From:Message-Id:Date; b=EHvc1SjG/Ammedkgx63geG5p/iZGl9qtlxohW9tD/Bz5blyddwgYUbqtWR6FBd+ASan10aw4jf4XF/tNb6+l4/zcMkgg2HIGHg6lWL51ud64An7Tm5kzqRg0AKd0j9CxneUHNBOtlYhrxgcYr2BwbRaNoFG8VncdHrVp4JBtNl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Md4/NjFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Md4/NjFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF61AC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783222713;
	bh=HdfWZ/RfxIvjfMq3zwymrv49MUUsHZRFNe2vz23ASF8=;
	h=To:Subject:From:Date:From;
	b=Md4/NjFwC5SDoq0fB8KhpyBVoFCopKIpdnF8peEDnV4dn0gxqZbj0tZc38ft2nK4W
	 JoynoGRMOyADvKMWtIOecSPOotfXwUvhKwt0F1hmxVf16tt7UmB5HhL1+8HlFhv/te
	 gYLRVs0pAbIHt6qyEIYlW/dOT835OMAXuFHt3fqky83NyeUfTkAnyhOiJhUJO2wubw
	 3dQF0IxlkLor63Ehey0HTxE2vWFih5For7yROxEQGKkYdmfcvBmjmmtvJOvW/TuSfr
	 DRSRdwQvW9zlJdj7vaYEXmT9oVm34MmXyuKyXiMtJaAnnqjyPTyKaKqtZ8+3J0qLG6
	 XhB2cJOMjPS5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1C9C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 03:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178322271368.16544.13666734232047364543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a54d5a7cb6c3a18496dfdacafa47e5f98e9f311de3e16b8464da0f273c1465
Date: Sun, 05 Jul 2026 03:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783222713
