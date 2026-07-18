Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40086312832
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784419114; cv=none; b=qRh/rqEJas0ib9w8GnogKy1Xbwi5atTiSX3yt9GtGAgisfLLfg0IhburvHDNq1GTYOvTnPP186PTrtBkbppQdy/jrTkEWvtHAhvEweqOkRmTZEgaaFp9ecCG+I+dITKYOEpGqqBJ6d5dBKRoiG0KUjsDtxvH9wrL26PwFgyAMUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784419114; c=relaxed/simple;
	bh=AV/5pUq7ZBSg2gI016iCFzuIKovHsEnrnzBCITXpW9Q=;
	h=To:Subject:From:Message-Id:Date; b=K/Ba1iw/8ke1rE/6TpYo7c0znRueppjDGjdqFnNQoNzTorhTI/enXVNBl6DvUv0gPczYKiOI5MuRRvH8zausWZ5L/dwJF1gnCWtO5rNpcTkODwV7WuPRFZAeuK0hcJX5FD8We+TVXd5EyuC5IXUUQlv0C7pNjaI+4HMXizud7ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Up9KGNjJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Up9KGNjJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CD9C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784419113;
	bh=AV/5pUq7ZBSg2gI016iCFzuIKovHsEnrnzBCITXpW9Q=;
	h=To:Subject:From:Date:From;
	b=Up9KGNjJv1o6ODzdYE6ZEz64mfx+7BjgHd12AjQb4+ZwJeFs2gAIYhIrD9ZiI2eWK
	 +MuDF15UyjJaeEkJYwVej0Me9/OvLE/4sHSvaJSKLqJq8wc1c8HRt1hL/fnzDPkE6p
	 TUKKr5MfgRRdy7mZR2PuIrTDRetJ30FNYYOMb083TMad4bnV1lQitEVK4XR7yCTAQX
	 iBhFP0KuONCXhqfqqVcAmtNcwVE4W2CXN8I0VCojpxQ/kTPQMD00ZpLODSsozGI0k1
	 7bDPZLSCm1jtJGvjSrWh4LCu+wSGIIp990Sn3/uAgzc4ZyJ3IEu+g/kfIbUiojoTgJ
	 Qu5o4SzsAoZeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF131C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441911368.32590.10777828837071912661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837a7f05d0f0f206e5fdd6dd30bb79158980c2ea3a52219a7a2da919793331c5
Date: Sat, 18 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784419113
