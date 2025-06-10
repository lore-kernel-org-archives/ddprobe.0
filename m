Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2557225C83E
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749522595; cv=none; b=Wv3q7IcV/CDr1VpHbaA6htVoNi2zSwjlaW3PyaGV3Beht/u/yGXtoJzIHoCJZ70d26EJiwsOmZxfVFl56+rCgRlcdQq7kAhf7m+eP6wQCDm9bjWkVBrwAWbuUlI2dYi0s708YNcLXQ58IcTbL+87xf5LEv6p1vYQ7+IaBG+VnTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749522595; c=relaxed/simple;
	bh=4seuXfgQ5aQL9qlfzxFyzYPkA01K7B8E0Z2w8wFiHJw=;
	h=To:Subject:From:Message-Id:Date; b=jW4KGSYMEJzhdhG9Mkw2HMqdXKYmLh8fzkjoanxTr5snYwHiaKZ1zT46pl9Wqt9748xpTjLWmTFivx0a6LdwGFobQRVVrtkHcbmIuYVe9XR7nJt7xG45jUT4jvuEjV99UsM3E+/GjC6dkry3lHpU6v1W07dcRrtD+wHfvU4Kx10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XP4zmiC5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XP4zmiC5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE7AC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749522593;
	bh=4seuXfgQ5aQL9qlfzxFyzYPkA01K7B8E0Z2w8wFiHJw=;
	h=To:Subject:From:Date:From;
	b=XP4zmiC5Rx3wjs5J9xuep0iTKDtsOwwqCbw5CIIrgV7HcIskvDzZ6kPECK3BzX4w3
	 Hq/VPp9NqiS+0yLFm9m3/p2sOO3kXHOFq+wiHEEX4N2fnq63zinqa4PVRmP6MISAxu
	 t7RxnmeIrgH1A3aLDFLdYjwdgEhvbbysgFH40ITbw3LPNC5FksvuNxfAFJXFUF4A1x
	 DKw28SGdiX6BHASrEXZF+Tr60BmKeuLWOf00p/b2ZGe2Gz0IwZgtyEvNgtWI4LYCtr
	 ivJzwYPdPGysQ386lrEF1U92Ra0BIwSLcqQ9enWytA35zgwquPsdwKfZFk4NbBsZn4
	 4LoBLoCTCB0RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918ACC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952259358.11040.16286824366937382525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8b60bf6fcac2739e7716ff6b0fc68e45b13d8d1f35772cfe5123f86e9e4842f
Date: Tue, 10 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749522593
