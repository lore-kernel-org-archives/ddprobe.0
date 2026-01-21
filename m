Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28577492502
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769007234; cv=none; b=Auzvl6X7VFCvEIf6PgNNcGIVVHHoqXIxBvCFjiDnfFLeY+8ok7HxUKgU5ttkQ7oJrsIyg/K+lAThfI+T8EecNBc2cjRUk97hSOawibN7KXJ9vbn6obzge0yNqUs3avDOuzDjM5cxuh5TLWMo9tszpvV1e9/I1kzxCFciBmlAdYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769007234; c=relaxed/simple;
	bh=6hpWLRl4Vce5Bl1JSVG9CUmNetJl/RUes53bGpPuVRQ=;
	h=To:Subject:From:Message-Id:Date; b=dHR0sCeaKTkLJKf9Isa1as++7bmhrnO14tArpDU8uMgeAdRw6vSGYXqhyqJENs4nR+fSMfeooDcZpSSCcH24RnAtJ+LKu04uTCZzxratNzEfkyXOfaTt56ur8AmU5pU8fBjat9x9hTHxcI+aH2fFiycaUhWcGEnbI3DZixbnhqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRpnRnez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRpnRnez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9B9C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769007233;
	bh=6hpWLRl4Vce5Bl1JSVG9CUmNetJl/RUes53bGpPuVRQ=;
	h=To:Subject:From:Date:From;
	b=qRpnRnezUgWISr8RgpIPrmtrOnWCi7S33eUqSRtum6nvV1obn/KTqBpEdtH5i9eJQ
	 92NO2K1Oto4yZO/7weQsUlC3rqeK5i9+ANPD+FWt/LWPm3spJzZWjTas35T9QT9Ccg
	 oV052rCsgHEQZU3TRetfnnAeq0+sBzaVl7q31q7h9qx546H/+OeFfVcQJToVxDgnRs
	 Hk/zQRZ0twjtKGUaZ1bFYMgcqD0fOTrbTMY8oIn1oVTXVUnZ/KqJqPtgDdDYTh2bY3
	 aMMryUaGlnuUPpRhB01HJ+fsd75q370q1QLfqzYAMiAe6CgzzYHAxKTJE9D9gQFZjj
	 nW+O/LNvjVaWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9263FC44536
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176900723358.18340.1060319511804329471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 721a8233c289b3e792b5c4783fe54e18ce92968bf00e59c16c411587af1d9b36
Date: Wed, 21 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769007233
