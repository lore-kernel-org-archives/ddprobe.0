Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5825445948
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742612994; cv=none; b=EFYvUsD9EnAEstw/nlsaqA5PqJhfq5j7kzb7zXtMbcKBKAsuTvrSP12SCn6QfqSuM5CvFTMkdnTPaa7C8sgYvlMTsOEwEwp1QIc9maaZwQ+lEBBcVaINijUM87pTmoa+qbjN7xXZi7zFBAsuUritIyOAd/B1xkzaYemjcE8qM9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742612994; c=relaxed/simple;
	bh=6+HYblhKZmwsRcEGIW/tESMSQePkOFxVG2m0HGTNpBE=;
	h=To:Subject:From:Message-Id:Date; b=hMedBz3J8XZ8pGryMrIlwVAP4l+3CcBCH8GJyHbZ+TcmWDnlWJplkahZeD6UKDtukBVyihIjGW1bUVQND+flktq2tQpNNe88gCjsNSNS3b0kALpLQhcpzM/0IJuunTWzk3gYDlqg/WurChTk/db13hQcKWLKeInkaFJsRTzTgSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfJRjbLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfJRjbLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C48B7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742612993;
	bh=6+HYblhKZmwsRcEGIW/tESMSQePkOFxVG2m0HGTNpBE=;
	h=To:Subject:From:Date:From;
	b=gfJRjbLZv9S2XRYWmACxQJaApt2fhfKqdxavDSRIVyyrZK9M9Eqigqk09QO/fy4So
	 OwuincmGyEvvXk2oYT1Cn21GOzMuJjT64pgM8sKE7wGN5UWiWpTIwkc5QB5KJQI2L7
	 wpG7g8jCIavoiEfgDrWtVLEojsh+z+k2gJF/KjzkjHweOz/hysk0x4cR9/S6tJvgbj
	 6igmScRkREEW/FWgkGiFoz5VD5aAIySqsJI49rwz1Hftau0fBNgr0IdHOXD/IZBSK0
	 Og4xBIsldSsx6Bu/J2dzwW8tqpxIvyJWMYBnzGUg3Dc1vyRDHkKv7Jbbr1dGH+OnKI
	 epi5i1Pu1wEKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4681C36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174261299362.29357.8452814841266787326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a4f540f716ad3d1d79f4646f7e508403592949e75aa89be2385d18d4038987
Date: Sat, 22 Mar 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742612993
