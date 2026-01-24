Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D417495E5
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769274834; cv=none; b=h+N8mF9CyVvruKXE0/1I5RU4LqCY+JiD8TO+OgQUTOPi5C4LYOHYTX48wZiCZbmVgkcLzNropm/hDK54At8TdwwE+T3ldd7lEhTu2Jun+ITssvjcYbZ3/SXVrfPGb6SiBlxNl3T+U+WXZjO+0OQxUHlFEpATD9BrpjYTbDTbMM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769274834; c=relaxed/simple;
	bh=ranC5hV5sVyuwMb/Jh//nUHmUI5hD0+P/xTyIzzDycE=;
	h=To:Subject:From:Message-Id:Date; b=jTeZVpGfnBqlvUb20HdHRVRCTlHb/zbv73nYpdgkHd96G5HCqFPpdZvK9Woo5uMQvy+oNn1S98cuYOdqGTQJWKuytMdXmBRQeo0V0e0WU8fYEnbHo8P6+0p2JbHdHKYG+m1kMtQDy+Z71Ka3dUlPA283AXR3S7Oax8PLhRyyLqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSYsp7Qy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSYsp7Qy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8F4DC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769274833;
	bh=ranC5hV5sVyuwMb/Jh//nUHmUI5hD0+P/xTyIzzDycE=;
	h=To:Subject:From:Date:From;
	b=OSYsp7Qy/5H6SsjdRT1LbmAfy/I3jAEldvP261tXozd7i1PoPlQ3RMeydoEKCtimn
	 JkTOmjahORSGmoYmE3nU02VARnjlid2ibtJdJDcL3KkiswrOBwVtgu0RzdxLR7D3Nr
	 uLz7/ojj++xLBZAJKFiAKcXca5Vegc7mIIKS061EufqcGD9aRE5puaXoq6KjGbuirQ
	 BVQIWBaWfzFbP7hHnk1QsBP7mtF6/s5NV85zPgt3cccqvlkP2SRYjTVCUSPhN3Fs9F
	 kzwnN3mrLCfzhELsBbjhgsOjEkIIkJs0zVGbfHsUHFCjP/3BRgFi5f6M2Zd7lE9kFe
	 q6BDW812ru20Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247FD715EE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927483359.13165.12810368436184592547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69d749e2a5db846edd7c4fb33c2c0954c6e5a2bd4ddae048f401bdc132a630d
Date: Sat, 24 Jan 2026 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769274833
