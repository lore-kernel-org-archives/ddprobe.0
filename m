Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D2C1A0730
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743197994; cv=none; b=rwXPmepM3aLmDPzF7/muhMYJotiVlQtDQtnP0VDHhrs3DG+CZE3PoqBebROyrP/4nF763klLFEjtwpA2fIXqX8f6a8HxFUHz/4UV/imDhZAh95VmhhJyFbdqzArs/xR/PpeuSTCIP2Sej/ehMMLOjh3y3oxQJpTReie7j34DS6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743197994; c=relaxed/simple;
	bh=G+vR9j5tRV35zSVkiaXibHHLQkMTCsIqPaL5fmOfReI=;
	h=To:Subject:From:Message-Id:Date; b=E1uvbJsey0ylxkie6qOMASlHEINHJz2u0qczQl1FivfYAVnYZEZ8cq/eaWaACwZWL9uJyXtkWI+T9FeZyGVZo9r9rFX9EhFj5uxmYbqDRH4pWqFee1jGevRmZd0cXBdzLBHLKcXLCPZIQRHQrjDOVLNrIvpF/4eSJi3gcAY30tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYCF/pTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYCF/pTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55F6C4CEEA
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743197993;
	bh=G+vR9j5tRV35zSVkiaXibHHLQkMTCsIqPaL5fmOfReI=;
	h=To:Subject:From:Date:From;
	b=IYCF/pTjNKQ3ltm1wg6tc+unMWIk171iqtD2djFjmGIJaO4nY9fcLxj5y+CiZSz+O
	 DJPgtPNzRJO2ZcQbfBPbe4OzHoyaBSmmyxgh93ZIEhN8W3Wv/1rsHHGgmXt+Yz7NVA
	 AvhGLKYgkVk3K9FhL1c+bEO6A1+TCcnbY7KqAf1I89TkH5LamcdK3/9pVfkt8FxjoR
	 qwZ+Uw07LowXr1BbwVjWgDE/BOqIdb6Yj1oPnGBBvt1hg6GL+2IEGihy6Rbh+DcCvM
	 fghR7y1RQkVMO8aZKrxmGewS17h4qsa9UR7sAsnzRSCnqoT+5z/TZYjGI3HRHZS3f6
	 HCauqX8G6PxgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1A9C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319799362.2895.2689042122739847576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaaa9dc5fe4db27ad7122ec0765af5703025de38757483fda09f9b0f7784e6f8
Date: Fri, 28 Mar 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743197993
