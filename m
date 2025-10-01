Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4152B28489C
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759324794; cv=none; b=EIQKLMBDOLbgtJr1/dRkOLfrSkssnj9rWZgfXPnLOZzaGoc1S1nxTX+bMissdV4R9pmc9YBB8nuBp5Uodht1If0K19s1mrjxfFYZItb2FBUnR2BX4BT/7oyISx5dZzHK1BnYeQGngCDvMT5zPSlvny/43sCGh7b+X7+kgv/rMnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759324794; c=relaxed/simple;
	bh=mjUQbSHpL9sYj7l4Be9SXrxF1jF3sbTi8wcycGsroBk=;
	h=To:Subject:From:Message-Id:Date; b=KrupXryO/oXSxeK7+ybcXjEVbEsAM1zBwuGFmG3lrzRJAo74j4WbYJHXcBDoaifjU1Txb4xPgEN21c38lh2uxerI3u7aiYS3OEyzXtb2Az7Te9DRmA65nW5N2JPQUlLXzMafUAT1cF85Q70Gsb5m3LXEonO2q+un61RUnU1DWkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzP4yDEL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzP4yDEL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F7FC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759324793;
	bh=mjUQbSHpL9sYj7l4Be9SXrxF1jF3sbTi8wcycGsroBk=;
	h=To:Subject:From:Date:From;
	b=VzP4yDEL1AYiV14LbvLV56bP8xda4gldp1PoEON7pdg16VPuduzgTb7RnfxxxEPfK
	 O7Urffu3bTKMWPiOZJNhwJAlhU2qNBzY2qglGTNSx+a8WxcNV+EjRlNXH4prJ598aS
	 G4Rox1hJXFOqer9Wc6DpgtIqETqomcbEuPUzsMNTeqU+jayeqgdDycirF7wbo3UfMf
	 6bHUYD4J5eKbnDlhVHi0krvwVSeokdAqXij1YP37toDl+bljQV/qnsa5+8M19T385f
	 SEQJp3qXL7z2HIvR5twrJWBHt+tMGrigEhiEDa7zsPb/enRPLrbvLtyBWDvTqRJrXs
	 TlEbizfwx+GFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91629CCA470
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175932479358.1276.9437596650212473191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a8e2bb3ef64bded89f932b4961d51723236ce30b6e6003211cf71597bf42b07
Date: Wed, 01 Oct 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759324793
