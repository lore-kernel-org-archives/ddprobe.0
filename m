Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26ADE28E0
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775711734; cv=none; b=OxEDUtuQhGFdmWHbX61oqCzMGcerAjeG13lxP0EgTrm3HldQ/7B0u3vMWw00pppgmEXo/spjzr+rjehM37Bo6a1psJMdwTaK3HqXYYgZEcd1oD1Iigi8slTosSWmU7/VOhxxsfN3nQ7OvXY0tgkuJaLAF5BdCvIa8U4thpAmACQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775711734; c=relaxed/simple;
	bh=Zf/Xk3hML44Vaggr+Q+wjfG156iC2Y2zhuFk1WdBPxE=;
	h=To:Subject:From:Message-Id:Date; b=RplqktijZKT25wVjO3xy92mbFTxmk3ZFsR4DvjUlH+wPsRWmWbc/KbBLhluFdj/X3weLP5wQHwRC975c1NJACpA9PIwU7+GEVyu9RXdH3QugXouyIQLECoqCSjaxPw+dpK7CvVzU5sLDvLqgaq2MP0mvFHn8Zt4gA9gm9FaehZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLKRl/9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLKRl/9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C356DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775711733;
	bh=Zf/Xk3hML44Vaggr+Q+wjfG156iC2Y2zhuFk1WdBPxE=;
	h=To:Subject:From:Date:From;
	b=fLKRl/9B35q7YIlcBgK1dkwDTf9xShlEdgWZKf384Xtf74sjznyrWEgbCpyZCqxCZ
	 vMlC3QPyMeX9UTLte+OIvzpL+fr5cd4ukdjnxkHFpoXUT6x8gqqFd3QHSCam2Pzyfd
	 Ld4HeWltXvayzvf92JVyuLpMXy1Kj3vlWaOdIpd26GzZRlqQtXJ73bbSabTooRuzaG
	 /7lhfkTNdJEQ44psDBb2pVcYP83kpKhKs2AxRlsuy8F9Z1pYcPIaI1H7mAmm0f1tXx
	 kUAFwgkIAMWq1OSq5fVTl2MWA5r18z2vsasT8T/dsdIbkIrcN8Ru7gaD1D9UIV0GOg
	 JrI0RNzt0gaPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD18EE98FAF
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571173369.8615.5875480154400091272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89745983265c232d379a9894f2aac0585cd6c7b529ead131d62ef70a2f60da85
Date: Thu, 09 Apr 2026 05:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775711733
