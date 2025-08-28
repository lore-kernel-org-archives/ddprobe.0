Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D4A30CDA0
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756340994; cv=none; b=YsWbZCw1YBkjwtqTpIwsjHEZB/lEWAiEpW0xrcaPkDtF3uPSYYLtCd2VtRLSyLuwnwYzzbAiVuNM3fCqi+aXhZe3JVqK2DGdhmJpL2k+PXoIHlGDuGGglAFMmxYXGSNUKWvfNCab/Ru7Tpb4u1FEm8WUt2QE1CNLtV02ocsxSuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756340994; c=relaxed/simple;
	bh=gVaPKuTFqzsjfOk4BV1P2itJu9wdIEXimyTg0+XA+CE=;
	h=To:Subject:From:Message-Id:Date; b=KdQUGBB5rayWKh0gsJSkoXwnDCQXqgtTH7OhMZaJN7e4x0paLeaGIfeKv7PKX6TuI45x9W0ZJUaVHFbMcMiS951y/C2HwPy15RS8ZBj1TW1tWrty2YGRHT08wdUWIwmCjgQ9Z2qZBSrSlbCJP6SeVDanWtZHqOXZp2iybj3+ECo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCnDEXB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCnDEXB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F327C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756340993;
	bh=gVaPKuTFqzsjfOk4BV1P2itJu9wdIEXimyTg0+XA+CE=;
	h=To:Subject:From:Date:From;
	b=CCnDEXB+1Bm6Fg7xm147lYFXdGittxALw/stH3h/LGHR7P6fuVNwqgfoU0L5qLUuG
	 cso0HFAqA+nNn/YVpnP2Y62WtVsPUM+24J/rfPtI3by/eB+25y/7cKwDYil7v/tnZi
	 MC5Rfzp3G0OEOZzSE1QNjwtOeiwigNUeumoghOih/wHb96MyCTeBJz8/A3cUxYp9SA
	 CwXsFMmCoFt26NUcAIDYfthUWojjXj/4gfvXpY7fOt0fqJou/U9D5sUmuwoTvXlyQU
	 9/jBAy/b1lxQ7QeCovU1nh3Gv2q58UbCSi8W4fEGz+z4jdBy/rAAcFzrI4BKyls5zA
	 /I93oRK2ka1pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F3CA0FED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634099358.28800.15948044925026293940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29c5095dc42feecd9de8a5bad0b7e44e986209b9ed38ce3bceb68e2bdd1ef765
Date: Thu, 28 Aug 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756340993
