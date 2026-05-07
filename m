Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 882071AA1D2
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778114254; cv=none; b=HUc9nDs94/um3SyYt3V80hbjGpSzisfzqrVRpwG3f0tpP+goq/4Mn39OOgZkb6t6kTP/aYyxt0MTyK6iRYiiwYr4Q02OLstSB2ic+bPLNWTdOn8htMRAFxkErxLsXZ2PBsrQsXYmhbRrSUMKqAXCl5LbJknJZ7/tarzHp6+I85s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778114254; c=relaxed/simple;
	bh=bNe1QyILQu26veCaxs1I5rHL9AdebrvMiwd6ILHZDA4=;
	h=To:Subject:From:Message-Id:Date; b=ipBbuMhKErzL5jfL69Pe+t3/s/pVjB4KZMWCKWvzeI+mOciWjvuv5pS9ayDAmFqQZCG1oAB87VtkTSs8ybWr99LNlstF1j9SKORpdrjbH/8FkKztlAnsk5YiVCjuhWWLGTvb99JDCmNGbU/BlenBuLv7MwjgTLbj9wS2M83+oeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fvjbqiV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fvjbqiV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD81EC2BCB0
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778114253;
	bh=bNe1QyILQu26veCaxs1I5rHL9AdebrvMiwd6ILHZDA4=;
	h=To:Subject:From:Date:From;
	b=fvjbqiV/4FWu044EXV39tHQl4NhtY2aywNsX6O+wWzquakZw/Ng/mAfc7zTDqocAb
	 sW4WAlLqndWNeOK12VHKwY/3LTyO2yOEMsLd1AF5XMHk49PjnxmWiNVUOetzwDVXSm
	 371TJvXrvUTxdYFh3lmr7GgVhZ10F90bkEALN6QeKSqkoSqr98HeszP3ImXe6/pKa5
	 bMPUfXrCOKetLv0wj8w2AecJzCBFWOdjyrnyU3tje9uVhBPiISOl6dYSzUaVL1wnxO
	 NyAl65f5BDp9cApBmXiCsFwx+S5FBYG7Pyy6UPPkVhyT5SLmJ9SCrmTHsekAi/rJZo
	 2+pfAr3wP4bag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7F7CD3439
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 00:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177811425369.22875.9875888010995277082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eb61af174ec87e5830d6e20913593b0feac006771f0f909ab84dd436e811372
Date: Thu, 07 May 2026 00:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778114253
