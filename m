Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540D37CF33
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720277783; cv=none; b=iLmWYCdg16ERv2sehFKnnAjol/itjyO7rboKG6R2aYenkZqRYQJugivevePzjK0mr54C3n+mRXCj2VY8AbHVp0UoJCzcCbOjJ5AJUMcdMkORqS0WOu2kuzR9bbTSHWYYKskYkqw+oSIl4Lm9Ltnl7sXaYBVYouhjDZ/kE+2ku0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720277783; c=relaxed/simple;
	bh=3P2Kvkp7GzJWajy95HS9lWmOv+arhaYm++NyeqsybvM=;
	h=To:Subject:From:Message-Id:Date; b=K0OGDHtu5zcyL//0LOXijdwEvW8KYH1xBPh9dFP4vW0R3zFptg/bpYdCrQ9LouCpH1i+EPaQk0T4IEBkQNudhV7RqBSkA9c1R9Ylum7uWKpaVPLslYD0iNGy1a+o7kjsFoGXCRG4VtdRj3vge+UIk7ftsIe/taiPq/3ft71007Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhmZoQUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhmZoQUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E01C7C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720277782;
	bh=3P2Kvkp7GzJWajy95HS9lWmOv+arhaYm++NyeqsybvM=;
	h=To:Subject:From:Date:From;
	b=GhmZoQUr62E1m5fIW/mCXpCuvDRBGsmBOWVPYUt8rKDk9nJUaAoUcq0O64HnUMlWJ
	 rX/2t/BgMTZhx70Pe39p1zEDitdFh7pUDw41OgFU6RzD2yjsVbLwz9WSbE/izmXpty
	 1MCsVbdwDHiTU5GMCB9oyFGiXLf+GFatcykBQju9RHXBb9i0HInux6TbRG3qxQGFVp
	 nEVYAT4jILc2MCmHirFu04wZhXW/40864YQ4Jlq928pR7ZEzL3c25KtqdPhBvYWcfC
	 o1P8SKYcZWikNeHVpNycRU8oKPeAis2QRcJ13B3X5gXYzWamAhlf/1bEXGtNFSG4Qv
	 aayrkmHdCYIBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB898C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172027778282.14860.1078183088878805114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670340194c9b1f59ae2b881dd9814532b0fa8dc725b8368ab6b7a8694f6480f6
Date: Sat, 06 Jul 2024 14:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720277782
