Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F118BE9
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779013834; cv=none; b=tzV1MmkLdrD91yxXyVcDVwPwY1wftrW3EJrP8RMTVTYXbzv13NpzifhJNHPUunVt8qX5vLo6RG7TZBeSVq7DDUy5/WYd35mb8t9RhRWXD+00uV9o2mi/dYn1JGbaf/NyHBJa9aSrnXM039I47JA8E3pRblwEHRUmPprox3gh60Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779013834; c=relaxed/simple;
	bh=fNoGRN7OfrUdgzGvlNOkDFfG3Isrq4V11RohY+rrKQs=;
	h=To:Subject:From:Message-Id:Date; b=TsUosKs/krcttisC8QX0OUiMJ90xh3boUlKyxlQlDO7ml1DSRqacDtG4bvETNc/JhyS/3ogtuCLXSbCWaRoCyR+VeS/3gNKtbcet8yTFcIqZZSfo7Gp31a1+7DR/68gXPQvqTPQD2j+AlIZ4hR8PNcUVqPxeO8fqMdd4RcXiFJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEhtKxp0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEhtKxp0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3087C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779013833;
	bh=fNoGRN7OfrUdgzGvlNOkDFfG3Isrq4V11RohY+rrKQs=;
	h=To:Subject:From:Date:From;
	b=AEhtKxp0dP1eWSu0SZ3RGtSe0EzF8nQ7qA+O9CvzIl8e/fp6g/nV+cIwDa+44n3w1
	 JTAa46crlQV0ZLLmrRsZEgYVrnbBQpA3IEwgB2fQNnt04Xa+ci2UYiV0tkJ26fGJYh
	 2Xn5AMl+r5eos/2wq19Tp1ijGI6SNstlTv5pUyK4ezlgfTcEd/3FPlgyvitfzAFTc4
	 +jbsWlIyAu4mTI2e3H7y13vr+xGSEI/LhX3pdUDu32VJm9H979YJXpcoGIIbJ9G6Il
	 qlaZ+0Dcqf183T9piL9hscwtC7WGC/luK/TjiV3cCffhTKoGUCYrGV/b9seKeuZbzA
	 /Z1YTBnC3eSmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEE4CD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901383369.5149.15765051117936683169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87a3ccb640b0be499234d3281ddf3e8a9c243959e5ec3fcae5968cf647c60487
Date: Sun, 17 May 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779013833
