Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D8A274FFD
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758223194; cv=none; b=hj5fHIopIPFldp67bauKG42iZEF1y8BNP7/lKbXeFTu4jdnp9K+1Z40lpgURKXrocwwspeb7ev6naqUCjIZgjrdBaRlY3SOfjrB/jWQnMGJx1BBbBWCzF2OF2jrfgeH9p12Di/4/mCxX8xoQK2Zk0vurm1i4bOuNLhk77Si7aKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758223194; c=relaxed/simple;
	bh=DoCT018BhVh1QrawxQP/9J4qVCwcbWjaHbgmjaeiL/A=;
	h=To:Subject:From:Message-Id:Date; b=OmVYDwDNLiNZhyy5NbbUlag2BSfuv5mZxRFd5iw7/qz0vHB3Dg1ium5cWflkdrPxOQVeNHRAxRn8lyL5/pQ+JO+mw8Ru08vd6EpJAdE/KqxLwlYFSEJoczcRyu/8F4fYb2A1tqTJKu1c2+LY7DU8dpEwO4eVPWRu3KLQP0g4cKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeF0AoYE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeF0AoYE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6999C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758223193;
	bh=DoCT018BhVh1QrawxQP/9J4qVCwcbWjaHbgmjaeiL/A=;
	h=To:Subject:From:Date:From;
	b=AeF0AoYEEK3lUJ2vgsKSyh7fhMerVrETs3eTBgCWKRGb3ktwmK1pxw0CbbpN2YDXt
	 byj4JLaa77vYAgDGmpQUL9wqq0ttAO7SZ8Yuc8seHa15qYExrm8hLBCsrzGCxGiY/6
	 37vQfCF3ww9MBaLYzGpMAuqJ2UiqX87PADaQv3xXgXmhnhI0bGaNULbBYPyp2YPTpv
	 zelaAbxFKniHuMpnYBFZcEal2Gfw1tEFF05e9Uyvkl3DpycLoy3czVZ/103jkEfuqZ
	 XufgArb9hjoWF3hJw/msOS86Yf7FSAx1JOY/7RI7LdQzhvhFddm71wkmHt0LKHcCGx
	 muX732V9Ejcog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959C1CAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822319358.10189.4693846021065013867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07af2f3d8ed364d0cebb6f376a4137a2505bd66819bacaba55735e0550e5a88f
Date: Thu, 18 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758223193
