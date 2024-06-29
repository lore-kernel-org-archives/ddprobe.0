Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 615A1381C6
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719702863; cv=none; b=rLnJXBJ5Vyr5L5UBUlJWme1lmqTv9auFIVSShtTxXwIUYM2e7CcRk7c44KZhlxagw9Ako+2x7ZLPJtJ1vGPS8kjw/2XFEIZ2OLbPrdTmSo43Nowk1SEFQUtvSJvPDW3epNBXEaBnqYwQt/FABQaqXIuKjIBMkACQhTbcHooBcJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719702863; c=relaxed/simple;
	bh=sqm65ni5+4XdH5arLE3xgRZl9KZJQnaOGh9cqMuxqEs=;
	h=To:Subject:From:Message-Id:Date; b=X5mpWGKFTqeCa3l4cVCn4QiLE9N4UFNS5z+21UM23ZmpdZyyF7Ym1dRwQ6xmJ/eGJUsMQhrmAzVjm4azmVnRqhiWszk/KZ0ptpac9Xv1TLtv+gYDL+iSLYPD6DhYuBI/XK8HuCc+BkkymwBtuJJFpDKpO+CiDm4P77a7qQ6URB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcFQ0Mvh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcFQ0Mvh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFD9CC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719702862;
	bh=sqm65ni5+4XdH5arLE3xgRZl9KZJQnaOGh9cqMuxqEs=;
	h=To:Subject:From:Date:From;
	b=lcFQ0MvhO1zunScMnS9JPWG3F/iHCgdpmwALUdC+8XXAm41BcwZAFvMjIUD+vfpw1
	 WWGdbluUrRL6w8JZKAD6IPLDx1m4N2gIOTi5G/9PGoSHXcWo13Ry9pb2ct1ASZEsGD
	 vxpWBNnedCMnTpFjPzRlD1zhMqBOEXdW+T/K0uDfR/Iji4qPvahq/+0slX0ghMmZQh
	 B10qUC/h1TAsN6X0Auu1wb61Zl00Ir33SRbprZeKOjXdy55Yl6wDBFgEk6MsWg80Uq
	 cxpJc6xKBfIE8IpFBKp68crWhalbDAsIxd6tEa5vfzcO2hTYIqlph3ldVA/CvYjxye
	 kANKiFMv5zrtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D5AC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 23:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970286281.18556.11797781617170815726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d123fec4e063966a6b5bfec708672c734a918f489c613f189a8333e93fcb46
Date: Sat, 29 Jun 2024 23:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719702862
