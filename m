Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAE729A2
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757219995; cv=none; b=oF0UaJLt/AB7nLVAtyOzGTYCOW0dyh8VZ/fQyPi5pMlMDGrNTGbLAN8ej6ai7rZbeLr5qwfMhOk6ynhPC48y3zWTiW/N5Y8vJFe4lhoQB8ZZXFfELGPVJ80ta60yvrEZEhtqPvbi+5k2dbYdyw3z24pXlsmfYrFJzYV46NDGUbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757219995; c=relaxed/simple;
	bh=YavtCoeQbVj4UWH3jBEtw5F1/bSSZ0YiPE8OcXe07s4=;
	h=To:Subject:From:Message-Id:Date; b=EjoxjEaXEvMXz4mSD/fGfS5P8nu325N07cMf0rQHiycCr5STHV+GsZ7EVJc7uFncP7naimg+EQfB+4gVfsTLUYqFApBGhyRoriweIbyFhPbAwxT5iKh4HJMPq0CAeoRMRDA2WyDq2qSoXIi2Yme+R5ev+JCz9ejsyXHqYlO8gOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXg5aPvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXg5aPvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4500C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757219993;
	bh=YavtCoeQbVj4UWH3jBEtw5F1/bSSZ0YiPE8OcXe07s4=;
	h=To:Subject:From:Date:From;
	b=WXg5aPvd0z5PbQ08vuvAnhFuFNGmfPfleA95zAAbdBORW7ZKxLV+Ac+A08cUy7rF9
	 ZUIoSq2hNXcsCfMITV5YPcg5Sm2axZil2u3xjIoAxegiTzFLBhggTEyzGDRGMAbQZf
	 wnYNzbZEz+t0GDkVPOa4ve/p3+yNuEIvzudndUcBOUaePMvlHlayMbL65Mi2FBtoNH
	 /7XJzJCuep/DnJklzYjcm/c430XIn/QhQejycq0//0H4pKa71LTrY9huh6bVNGBREJ
	 mkbNd/ebo70k9r41yHbT3Mf02/Fk3yrDMbCdip/Ztx0g/Zs6FwsuNWZ2QI+gPAWTvL
	 j+Jcaa0afADog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105BCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721999357.14006.11235813414872106159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73a2a2417b8a5a8e5d8c4f5d2025377c30736005ffbf9a39b08ae2506a31afe
Date: Sun, 07 Sep 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757219993
