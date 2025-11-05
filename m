Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A7C221F13
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762314594; cv=none; b=FWco7E3JD83EcwfgkbheOFeH0aHGdVLhr7aEgeK80BcBvwUFE6CwsF+FJIJXwdnH/KNlGzHMpvWWJPGMrDeAT6dfg+Lab2u1oCkeoKYFuXaA0aVtJUlrnVc6Qsp8WvkSCBykIAMai2+yVmlHdioNTWKCBnudIiWAOVm6cz2x2dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762314594; c=relaxed/simple;
	bh=69sNIeSKKqHsZifGiOYAgP4p/q0749rJgpT4h9hAdNE=;
	h=To:Subject:From:Message-Id:Date; b=lYwK3bfVwwulAuYvNrZV/Ix220Z+XV9AUFzi88v0R4gChlpy95iBU0PxybJ4T/JZ5T7bmzRq4pxr0LZNHeqPwHqcNsgc/j+XmaVzBSslMYH/HeXuQTfYTvemE8u8jiGeyeXvQzC8XEPtj3BOJCQ+MCF+cSe5Wszbi0B+XhUHsFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQv5GScG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQv5GScG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A57C116B1
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762314593;
	bh=69sNIeSKKqHsZifGiOYAgP4p/q0749rJgpT4h9hAdNE=;
	h=To:Subject:From:Date:From;
	b=NQv5GScGtCcFoIS30h7xbwhuiPXceEFUTTjhs0PnrCd3Nzbi7QxEE2k58ZV/CgAWS
	 1FXDitLEEXz7jbkE/ckO1RLZvEMHGYwnr4ncWHI+0v+x9Et6MNlt+abth2z+JADPIp
	 NBve2XQUQGLoUZBJCk678v9cQP8H4kB1uvua2WnfdY+UdKxrWBFJf399tNAvBWa3Pz
	 D8kj17SAu8kRp3uu3SSWJYS2JQjduCggIh223RRnIyv9fv1wSVP626UwAKmCt8Ti9T
	 BxfIek4YIt3I33CN2o55jjhV4w9jJAP81JQ95fZwRP75BPH8uNo/3d7YRtDB3Xswtt
	 rpq6RlpCkSzOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E6CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176231459358.27544.10050852242861652355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8037978d2f2bdc2390f90008a4b42c18770c8cb6ed3c7e93fec9365b7c4abd
Date: Wed, 05 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762314593
