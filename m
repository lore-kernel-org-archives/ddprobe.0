Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A46030677B
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780513474; cv=none; b=Y/O4jkdQ69MtwMrEZqsp14NnAhqpoPU3QSa5aZp3nXyA1RHuGBdfd9Rb209uWsv4VIc+u79cSKf0e4wTzldnaZcA9hKcYTY9qZbZg4upenynXctaXXghjdXuw7yNdYdvnmiw0qEKDFG3XtOQQVCaR9MNGooMGYfs59ZuFpATNQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780513474; c=relaxed/simple;
	bh=pvl4MV1Ga2nd5lqR7lv+NhIU3C6fXG/05PCH4/TA65E=;
	h=To:Subject:From:Message-Id:Date; b=SgZY7PwvFlrDLaQLHx9PVY09BsPtlchICkL9ZDbTrWKPw60LjPU5hdgVPms53P2y1JtFrPV1FbnstXAnmumyO+8pTRZoqG1obA8nnBog3kE3sHz2JhticV2cG6FIdPj8zIsPs6usoUAvMzISO2kqgXd+WoNWr/lBK/iFJQHeuiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ofYt9Pti; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ofYt9Pti"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC807C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780513473;
	bh=pvl4MV1Ga2nd5lqR7lv+NhIU3C6fXG/05PCH4/TA65E=;
	h=To:Subject:From:Date:From;
	b=ofYt9Ptibht9kMYa3lBOSJbW9AWlCtDFYgrPN21cv4BK9i3KsBI0va4YtDxl8U5+g
	 BKP5/XhgHe8kqR4elJ4tVuDky6wUHz8rIoZV46i/31m/RBAhztQEu9EhqLrdwxUgLA
	 fhkUm4cwIUg5WcWb1EtCsagry9lZZgVMjgj/r5qaF/mGJDblcvkBkRho20n+h+holf
	 uOFxh5xNbMul+D7kkk06Nsy9X7bJdmkTz+8gWr2/liUHgW5HyZdrk5FKKnjsHAsFsy
	 eNUqJoT46M8rU3oFSbnKZt1OMjBGWnWA7GvxNVwoRo9EW7k3i5WaocLpD4xVHsNU2F
	 tbBX01AZaD81g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2662CD6E57
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 19:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178051347371.22016.17202949686944761674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66011650002542f0bf6c91a19cbecfabe99b0144a01781610a81dccf35a575b5
Date: Wed, 03 Jun 2026 19:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780513473
