Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247DB1D6BB
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762153794; cv=none; b=SbhWJA70tXcd0as1jUbREkS0hzwutgSwXS13Jzu8zxULxRcNINuNf0amn3MryAvpk9edhwIlnINVdArggAYoc4uXZv/b9jNHj/4k6wQWEUs8T9q0yHdL97eBMKJxhjr69kiWV6L7uqKZ99zyM3GidtPo+hieZIe90PCUunD/U3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762153794; c=relaxed/simple;
	bh=hPk4au2vWj5fo3b/StFlRj1y8Fy+1xsNl+Mch67BCyE=;
	h=To:Subject:From:Message-Id:Date; b=U5UKghryZo2X4Rysg1FdkX+PU+MupvP3QdYrvalph69XUBF4x5vOtG2dtRNVZbkPUofXL4/ZcV9APVuY4wFelY4FIkaVKJP+/JKg4D03j+NFpCPRHfJ9eNT2f0fRxOvY55EkgN4WTRBwHFwFP7se3seT5X0DIDzfI+nILcITJvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8WfgePJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8WfgePJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B0FC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762153793;
	bh=hPk4au2vWj5fo3b/StFlRj1y8Fy+1xsNl+Mch67BCyE=;
	h=To:Subject:From:Date:From;
	b=R8WfgePJ40Vg5q+CJwSg9VXvljS8Wz6tAqFUaHzdewvLXXzQYPO4wakw2fMDGdOTx
	 JJPRsh/uV/tJ+f/LfXwc/ehTW2XnoZRrc4zQbO1UIuQeVqWdf7/hcMB0hNHGp3iJ+t
	 EPbXWDBHwptJH7x7d3SYC3aI52vfzmEPRyhVfsz6yjLzCypLA3AVxL48yIZ65ay8TR
	 I/rTUOEWJwBj03AnsXH42YxpysUNKUF8fz7nU4DguSDf5/tYMuKOWqp0vrtr3ojNu0
	 gAcHLmeUHQqp46HwJAd095+M3KRAeYZWZIxD52a41uWLbkJIM3JYNELZF1EzySo3bg
	 suAk7XRs8yhzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95244CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176215379360.25147.6324127659194543936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c459752901ca8529f32439c0e7ba034f3232e4e4705d15ec49fa00576f70ffdf
Date: Mon, 03 Nov 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762153793
