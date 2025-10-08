Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DE42264A3
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759966794; cv=none; b=R5ZE8T+9d0dVHqpuYBWtGYVK54Ev4g0IIvrHe8SJTJY9ar4ZBDRR3G1AgYOTGz+IBNfIxGqeVqwmkzdyHXGrTxYprKFWEmLFlr5i/tLN80RyFbAnXNyOug3FqHP/pCPYxtKgtq8RgRr3YwGtqX+2GV4kOv41j7uOGBO6DACaGb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759966794; c=relaxed/simple;
	bh=rSd1+cdV221dHT0A9YcTidiO1Q0YIkaSmJy5FJ4skSg=;
	h=To:Subject:From:Message-Id:Date; b=e+yD/cUE7kb+nspJOkfhVg7BglG0gQGGiLuv7Adpnu1UHlbO+N6j8J+G+p9RaaPBnpsDS7bFpBde/Kcpspnz+mWg0y1fNpMJpm0U2prj4yaY+VeK7OHjHgyhiW9YQX0hmH0makF4gScZiR4SEQzSL/VXNS5jn5OnIjd38cgkqIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SD3sVL5k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SD3sVL5k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A492EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759966793;
	bh=rSd1+cdV221dHT0A9YcTidiO1Q0YIkaSmJy5FJ4skSg=;
	h=To:Subject:From:Date:From;
	b=SD3sVL5kMcrmnePVdpKVO391Am4JFD0ezOjDw/twVSLIeFFLpV3C3EVWVqVHwH17w
	 JkJ0/MojjTu91A21pIdkE3+ztRc4+F9Jj1p6RB3E9rRAKncOTCVfa/K0udJ+erCd2z
	 NAwJEhXBgu1/x9co2FdE19nnQ8pj/OoDL36BEOyuQ1JtoSYRdXuEguc7fvcixD0lrk
	 PwGsU3Dm8VtABr7YQmOSu4eigEJ/R7cD3id57XmMeJ72aIFqpPSGyyKXxdvLcIH+Cr
	 jaMPQypmMfOJ0wZOHy8fVGAlIKPtBaPb4JZuEcz0tg9Uvq5hyh59I1gDVOqpH/oAnI
	 FPWMB4NRKGEPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FCCCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175996679357.29399.17124852425075963635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f14a445f84672ec82760f6c848aae9db7459c952349fc4911fcf69f1e70365f
Date: Wed, 08 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759966793
