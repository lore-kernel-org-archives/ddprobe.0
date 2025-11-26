Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D65F232395
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764189174; cv=none; b=Tox3CELcdW1YPRawhrV8DPq4yswZokqm9IaNcNqrP7wVw4vip2T+UNBYA3QfNtLQDTStgEtDpOOYin74dDVqnKn7Ho3/GMkEFOxjx/1MKZtExTUKQZtUslBp2p6SGxsD5q4WBtXySdj0FtmzyBJwEdUaC5e5HE69k3j50nfTt3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764189174; c=relaxed/simple;
	bh=SLCQrNabweyia7lSf1VXWS4Xe+gCT5cwCr5EG+A2c4s=;
	h=To:Subject:From:Message-Id:Date; b=TSQyQ/zzxa7Dga2tM++phBmoryZT9hfjaixDW+WOiowycR8s6+bilCM2cHufm+zesKnoodNjuUSobMZVuJ6LtRVR4AH4QsSEvXUPCTn1eeIh70fN7Jehan77DA8cF8552Zl3fm+GdDA/xfyfH+6debi/KNmHKMICglsI9+jW4iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heLQP5NW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heLQP5NW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ADFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764189173;
	bh=SLCQrNabweyia7lSf1VXWS4Xe+gCT5cwCr5EG+A2c4s=;
	h=To:Subject:From:Date:From;
	b=heLQP5NWAQLtt4ZeOoEvjCpD/yCxu2oeiabiASFPaT7HDlInsfG27X6QMXLJQjEND
	 cmokJZlfj1ck6D99hImuWcxlX3D2V03aXuZD0lzhzJ2YYqslcVEgTRxtkfEetUp2TF
	 liZLIOhYYEFYnAfsGv/LNZTdN9JMcR8LLM8Ixsmx4NTP46ECf0C58ZQCLbRmwvhdD/
	 jD//RQG3P3+uBsmR80xWUzSfJmX2XD7vNVRI2g92pg6tgSb1e3bRcdocqdDGN8t3Jb
	 Sqwy9XmKLgDzhXZbZOpsWTf6W1EDjB43L9cuKUKpyCDnPTKSRwN/jy+FXiV9PnXLOn
	 7lE6CWwkEjcHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935F7D11196
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176418917359.2666.6933368255048096614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 271a9a5da8e0553de1860b1f53124d8c5f64c1ceacd8b0168481eae330228e2e
Date: Wed, 26 Nov 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764189173
