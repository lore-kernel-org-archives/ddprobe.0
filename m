Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722CB3F0A9B
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792012234; cv=none; b=cC0ci35hK4/V0gdXvy/HeVGB5jhng+z+Rruy8/BXNS7enOgIAlcM1JKEq0aHjQ8XUozOieCXuK3zIssSbdeggllaF24Gwl7WdmmNPvNFT3bHpBdYblsvWEjHhR5TJWZ6VywybCQVIvZOM+G2iGrZ9YHAc+NWvluzPzTDUZDNzGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792012234; c=relaxed/simple;
	bh=QbTd10AJFzjuVGXHJAQkzfTQHx8QuKubLP48P/d7xKE=;
	h=To:Subject:From:Message-Id:Date; b=kepwqpgQu0RIPxIhiKqOLGuVmW6CBVFsNXgQprysBmYQITxCLjR31ymCyZ22YfJvyqdkq12BEkZ0vCJ49Do/hO3/uDRkUZJsFt2iL+Mbkp9kC0ct/uQKWxazN1sRbtr3N/dD+1cZWxI47Q55Yn9YfasNSBvqTJM3QSEKTWiGg1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTtIEpBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTtIEpBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB065C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792012233;
	bh=QbTd10AJFzjuVGXHJAQkzfTQHx8QuKubLP48P/d7xKE=;
	h=To:Subject:From:Date:From;
	b=iTtIEpBVLBgoAGWImGb/KrZHHzaGLih2lacqFkIXpTi/Dx/dpXiw+ryzI6FBBX+Qz
	 X0IWrE8k1CuCuScDWYLWT2mDS5wKaiXuMSztYtDEEpJ/jkvSAwmRA1ridtraQcqaCf
	 m7eYSP58WDVBMvBOVOQaJodSEyHrhUA+ftrinnNnfisJiOMZ22y9PgSJ3h9koDIC7R
	 XxOQ7gLDH38Z0Yp+KuOjKkqaIPNvZ3PWj4ETU7ZadSb8jjwXWUG6Kz8u7rlmArq58v
	 r7ls6NztYMzmGOlhqIRP5fW+F/KEesyc4221s0cpTg4612ztvgRJjRKd4z88yhMbGD
	 UjON0xwRn+DJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63AACC6B2D
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179201223372.26809.6602707820159583411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 038063367f2694989f5f56946e0a4bfde29227f08c6aaaae6d203dde53ad7c97
Date: Wed, 14 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792012233
