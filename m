Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A4C5336F
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715440943; cv=none; b=SH0IlOr+SfzeATk3zEvDf8V9AHdZM4sPhf1Vmx/BEIo6WAEOK2X+KDI7am+T2NAzSbC/7lJKQ0nN6bsgbvukwvskpniqCWkvJ0DqwZI7Nxyvb8CcVjg29lD9nj6bVOKHamh87Ao084e9XRuUY7ZvE9KYRNxlTV3zRETgV237uPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715440943; c=relaxed/simple;
	bh=ft7vVVciuI9WJbg15zyVKum5TegLdftJKM6O7mMx29k=;
	h=To:Subject:From:Message-Id:Date; b=lCr9apCqSWxhqp3ME+AoSACamjw9F6e6mAT2Pn479uIBRxn3lUkFjBVmxopA7Gy+t1MYFQa3CIe+ADnuxtGAij2yXYPmnnkeR0wXi4PnS4iBBroTs2GRwkE3jANqA4xdmQcjQHB/34CJq4RGvAmz6Ai9WCjnwaWJPYZzP5FDSi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFKP7mZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFKP7mZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D33E2C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715440942;
	bh=ft7vVVciuI9WJbg15zyVKum5TegLdftJKM6O7mMx29k=;
	h=To:Subject:From:Date:From;
	b=sFKP7mZOkBa8pPW7yue5fFc963ouAv/ZVhBmgRGGZWKC9Qc55+5vlouP/7vQsfmEJ
	 EOKwQuMITxN32YV88OJmwFhCuipyy6qL2kXUi8kV13BkhK9Sr8dPd5c5KrgblQ1azw
	 xP8TXtxQ8jcZpzJiUZcWj9jD2bWpF7dGxVElQp25FxlTpjdgOcMIWVDK7KVfjmj5kV
	 WzNZk1NTxyD09qx198/cO5vkT5gTv7WxVuQpw7hh1LheyXom+cH/XfNm3z9hprSnRj
	 YiQLp8w2Mmgr6ED2EfYHBcKF+1r8tnHf22u3ZbLGnQN6rphofZkrRC8EgSA9aOzqK1
	 IGCAjJDJ8puDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C37A8C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 15:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171544094276.24448.399494208491561261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9d1652812053c4967cd90adf71286ddb0b47043624cc4353efae8e5b43d4693
Date: Sat, 11 May 2024 15:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715440942
