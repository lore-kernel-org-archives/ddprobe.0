Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A63530E84F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768195434; cv=none; b=fy3ZlOyTfIyFKsp2HvBrOgL/Pr9C56kKv2+V3VWZ9TzuAlO8vUmq9Y3tPLqJu4XgPLALbpMVWDGgeQctVYRC1FsZlz2A1DHGHm/kcAq3BJgGP3gkGE58RrUvEW1VYR69kxz1smD236lK2HOdrBIfeb0bnDUfJylCnQDtzg+keW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768195434; c=relaxed/simple;
	bh=fIgQHofaWd0xTfLgh9LNO/ifCF437n0o0R/IzvW7Ma0=;
	h=To:Subject:From:Message-Id:Date; b=smiw273jRbKJIRMExNh80ovbsf1ODlQug4KZ5BAp/GVM3tnixF06NQ01miwezDqyaiYRPUVruA41l6AAf0B40u4pWP0sxIpn61oSfL5UkQFHAAc+pcUmqKSc05pcDvNFtaxP/EqcESJitpquEKuVSvHJ+DGGunWZ/J/Ig5suznc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gzNXIGgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gzNXIGgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16A2C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768195433;
	bh=fIgQHofaWd0xTfLgh9LNO/ifCF437n0o0R/IzvW7Ma0=;
	h=To:Subject:From:Date:From;
	b=gzNXIGgXtvOTCNzk2Xpii+20uDnVH1MUgtqonFaS1wNb64aL2vpw+J7q5CrNwQaeu
	 5a14lLdpoF1Yzj9rI+fC/AiwuX55/4LHCkeSbngs41Fay+De/PZnlRie0KYbg4D9H8
	 kxsYyrr5iGMWwmNn/helJNjz0TUjFKKugWGfXYg8M7m+ab3GjQbZsgGkYbPX+v9x5v
	 v9MyX1fK2CsJrevgdQDEtTI4RG6JbMRzCnTLUShceo1pol3lJJBeZzEnh8fhes/z2V
	 mHoGm2d+6Ru/I/ARiNb68BGFF+vwRl4Ks420lFbWPtkcu00qd3rtHicqMfDhLD7y0L
	 7TiZDd+F2xqLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90596D2502F
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819543358.4284.6313628875106994956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa2179b3f23324f87ff1f70145144393457a02f29bc3abbaf95325dacda173ef
Date: Mon, 12 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768195433
