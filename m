Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84ED428C037
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784391514; cv=none; b=jM9sS+POPntArlZUeFLuDEMajNtSoVoR0AJaB/YhmmMx9oHVQ642n0gEjyOOjCLDf5Gw4aJl68PSocASxVzZQX/uSK+nf0qVrKNgMKqKSLi0ziBn6W3CmA4tSqOnU/6Z1vL/3z3jtP/fhdXR9DplM09Dak3Iq6wED7otrzjrQ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784391514; c=relaxed/simple;
	bh=grifkYN23GDC1+NMSTFAw/IKbE27YNF2STGbnIWES84=;
	h=To:Subject:From:Message-Id:Date; b=JECZ792xDPVJWOgC5cETMXWYJwqbSy369Zmpxu5b9ndZ+gCGJGL0OdAPSmmQD+c2aDRRKdJG02bs4mIbww62/G4KJHSKuAlhXAmfuflhU1Pyktcvei3rbouapDblUIzVaoGyGlRqM5ip2NLv1g9o3ZJyjXI/pzi+Yl89Ir9p3Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fRTCQlpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fRTCQlpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D627AC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784391513;
	bh=grifkYN23GDC1+NMSTFAw/IKbE27YNF2STGbnIWES84=;
	h=To:Subject:From:Date:From;
	b=fRTCQlprx30u+hE48YIccqJ04Z3WtOToYXdRFQDqV3QAw2Cfp08b+Ufvj1Qm2U+QP
	 g2eRff/GglDO18ofCemPM1N2o+W+mKPDcOD3DTwb/AhiIOyWvcogb763rvQXeENCPc
	 fqpaP2eombxhoeZwbTolu9r2calrsDFPqHrPEpD5bCvVodaNkjKERlYhSwmgTHXaF0
	 I2JQ5wRZUaKSwBUg+dgAVbVDctlUc0j8Kqsh8L4JyDL2DC37zzwu8kuvldadIxaQWY
	 UENetEMHQbwOhXaoTRC5+j3opJImKwjty5E1nheUWCNecR0bQRhvmfBDvQU9vOYjMc
	 IALOT4W0EVEaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF66EC4451B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 16:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178439151370.4800.7449950703784038188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55fa3e959ab2dd16b0c61ef25bcb0e70029ae9da1babe08d2768edc949c908a2
Date: Sat, 18 Jul 2026 16:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784391513
