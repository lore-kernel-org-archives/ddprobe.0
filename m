Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557E756B66
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 14:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715439143; cv=none; b=j2p7/kUTDH0N3G8Git/F36BfIygDY6G5FUvVyKl57DvQg4BKL20oulUu+E++mJPBea7Poj+mi2/IIqzaR/mdeRzE5i/7fD5VlgxoIMf8RbLZYlGcgBflPiIWevJsUtRR+whfS+n2e7/erpmXyirF20VAvcDDERELFlOQ1fxwLrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715439143; c=relaxed/simple;
	bh=kfG6Vdb5a+UdMGhBoANoibVgVfQ1CsbFyVewWey2ogk=;
	h=To:Subject:From:Message-Id:Date; b=HI3Id/jZ2fdsKmkv0bjIQx1X7jYqARglec0/Piw20r9icvqtHiQfuFXFVsUPgg767mGbR5GKrOCLpeY8T1sok56RoZ9F1wVajBQcvBSkgGZejdXh1l3FxHJSzxtIJId59tiQJjrVEJu6imPRgixmlM/maM165QGM/2EDD6fr2dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q13tMMW2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q13tMMW2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF199C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 14:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715439142;
	bh=kfG6Vdb5a+UdMGhBoANoibVgVfQ1CsbFyVewWey2ogk=;
	h=To:Subject:From:Date:From;
	b=q13tMMW2Z1oow+7Qz/Z8kmCDcvqa6mBaevYXAW6f8pJ3WdT0a0BZ17wbVMFSBIZfR
	 5TNcaCp1wooxaD8553cPpfB9bS61yQSdJC8NCM1kRhPLds6WWwW6wxRBea18WzkKOm
	 JTA1KrCNrWm1PknIO9KmXT/fv+Nx3385wR1n80lVtfgUKYx6UF3UWAqBNQrESj7tFG
	 qUzllCBh1Dw++LXXcJvIRWBY0wIrOZAr5cxGLWIpjN73S4PQazmZS0BvgttHwAZyug
	 DQjwFtqw8920R3H/dBOZd6Q0EWKT9mDqBbMxNIe4HZdr18g+M35gq6EhXwXyw95uak
	 Rw8Y3UjTwMSXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6DB7C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 14:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171543914278.2446.11769529751037602319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 719a5fe92561bf98e388b4913a5ef951b2b183342910035220184441985fbe34
Date: Sat, 11 May 2024 14:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715439142
