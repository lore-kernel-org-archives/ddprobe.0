Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A41E167DBD
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 11:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716981263; cv=none; b=MvE3uTgsRj5tRmDH3Wa+r7f5JQKvQem2ZFTi6+CsNU8WcRGwrixeUG8c8+m5Ypa+mZVesRBLdkOqHsNdauGBu/2p2iCoIZMAfCs4Sk1IDIiIb0f4EZKqkLFiWtTCJftf6edzEAC4I9G9923fzzTCZsqIY2h2OsWoclaKj0VcyTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716981263; c=relaxed/simple;
	bh=V1pHcui9RIO8iSYs5kltq7mxR3MxGLLZ7nkXfKNJ3RI=;
	h=To:Subject:From:Message-Id:Date; b=bsZeereuYgw7O4iUCEIZ0Fgkl082GYoHsX+HrosMHhf3q6ua2wCSZ5xyFDOiaXkWHUZb69hV1jEIy7++MmYP6LWInCQxdbOvEFkgawGo1kj8+i5xmh19yG+XxqySDo0r9WuTfyAQC9JwQ5Zym/zJ5kl6mJi7KCoz1TLjLe7JABc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5zMlKad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5zMlKad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B6CC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 11:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716981262;
	bh=V1pHcui9RIO8iSYs5kltq7mxR3MxGLLZ7nkXfKNJ3RI=;
	h=To:Subject:From:Date:From;
	b=Z5zMlKadrEMDtLLGEDe90sLrufKdxni3XuMtshuBo5XYnqZAcQP0irTawSuDKwiOZ
	 o379a0PNXPG8TS9msvO4gP6pW5An86NM+bTkkXfwlMkBEkPmRF/SYDwBz9tcQJFUwY
	 WWiMaXYF57NBCgtplza/7fH2D7qFOJRsc2TVYuYMU+QgraCtPicYHoh4XnrLRPk+/k
	 OFOmNeCqT+tLG00DUgm+U+cRwJT1PV2M43L3Vo9/bIg2L1hqWQJgOOqiwIH1kJFjU4
	 lhNdgcKSgZHBzl/VenpuwP5sH2PB9P0PhL43SUO60dgWpZ1XsecM/gYwDpIMT4n1GU
	 Fb6mAMZjzTc8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCACC27C43
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 11:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171698126277.14696.6880322613168821185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121411ff526e9e3a39d39c16e01f66f4b32b2fe5ecd3453195f3b35a289f2380
Date: Wed, 29 May 2024 11:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716981262
