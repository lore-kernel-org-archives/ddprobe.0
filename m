Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CA8661FFE
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782239794; cv=none; b=aaV9vtu9WcNTu2ZVslDhy8PpzDvT+FriyGvHla1Ctsi2+eDGx2Cc6z4igt4HwBOQ/CsVd50SRqmr7FaqvNO0dsCIXfDHzFtNjy8XVMkvebPznF2FNuJiFlqUXBzYiRbS43vbL8D+lsvFMO+DrSIpwt/6rfJlNo1AtHCIh8kYQyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782239794; c=relaxed/simple;
	bh=oS0ZweknsTBt0yWiXOembhGm+BaZ0d4AniW9LuXZWqk=;
	h=To:Subject:From:Message-Id:Date; b=pRjyAcrJjqu28dHzfH3q1D4NXsfpxxprwbDlmGfb0pkoYXB2SgAp8PB6Z/rO1ZlOVV53Z/usTlVc6R9pBVcypsPegvwAc1AjXBoQJZF3JRiSuAW7N6mWIFk4zAh8w70N08QYqfETMSaMWY+CmvgyLel95RHm7+j344mnWaDmbxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPIzPJQR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPIzPJQR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE81DC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782239793;
	bh=oS0ZweknsTBt0yWiXOembhGm+BaZ0d4AniW9LuXZWqk=;
	h=To:Subject:From:Date:From;
	b=UPIzPJQRseZkH1oMgQZWGjbX6g9b5ZkErjC4roGyZ2HzHqN3AkdXdIMaIUCD3bk2c
	 swdGJoQlWwjnaN5CWRY7H7ytHbZNKDsoj4HZgQPN3zNZYEk3nGcWnQFbISVwn/63kn
	 l6MpPJr0NqmmgDnDU756xhr92r+SOQP/eoi7pO17vhVBpog5dwWOE94GMh8+7dD3Lg
	 /mAoy6tp1invDnvvSRg+SGU0H2XfA/xUcDFtZfkHbZyv+5qqGoo3mqvlsD3XJErXFN
	 z/6w5sSytzCtt+c2VoFD2RY+t3C6G3zWwQOkMgFQcY78JTRfA7hi748Pu9DzToiVJ6
	 8PGWRGIDf0ntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC453CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 18:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223979369.20482.592451094665129502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518d374ac13b111b4f7542ebb032d62ec1d65e38d70b8d3057b6c66683f64b05
Date: Tue, 23 Jun 2026 18:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782239793
