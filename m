Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9781FEFA2
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730793354; cv=none; b=tgm2DZK5EzeBYhPK8q769P2K8HgwA5tq7b8+Teyegfi5DEwdq978QntsXgGQ42d6BNVUMcYxdo7rYubVNRQ5Mv45xXbHiF3dy3/5B9DKafGRHSXDZ693NC6F5Wlo5UYb4wZN9fzDdpKhoo8j9bm6sA8niOU36GQ6/n4TqHBEyyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730793354; c=relaxed/simple;
	bh=K0Ns47owVkQDxpT/jn6TZmoyga9ycplfkUNEnauprTs=;
	h=To:Subject:From:Message-Id:Date; b=aMJqwVJ8RVcAFMPCm7RPf9YAVwKd0Fz9NWIYJXAQHUAINyD97CdSlsMXiaoCf/eFGWOzAAEwOmTaMTIT1kSnrxVN6l+FXZiz1hHVeqIcoRt66bw738ORmTwRvBwDoQ3HZ0MBwKvB9NtonhcHbwo7mRs9vHiwyVsSwchKSa6cdOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JjzHTvsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JjzHTvsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2381C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730793353;
	bh=K0Ns47owVkQDxpT/jn6TZmoyga9ycplfkUNEnauprTs=;
	h=To:Subject:From:Date:From;
	b=JjzHTvsUK4C51xeLw0I2a1aUAVOM69Cpp/qUKMM6A2pabEiZrRynfm+hHc/S0/giw
	 xVIaeavMfwV6ydGoQizkv0OggrSWVxODtLYUWFy3kt61MC3rkcRnueP5HvTRRwGffm
	 Zmk0U99JwUXszAguXUUqH28OGjm3SFAKA9YQ1r2lQKzKkJN59wM21bc/U0/kLHJyuv
	 6r5ELyz7Sxmef3i34YfMOEjWzwgqtHNW0SqgtgmOHWh6O5uqlLCow+5ZoS6rQn/g+I
	 U1F7xVwBkD0zePq0VrCiD4grk01P+s7Nu1IDccq4phBNU3TommEgpqx4usILMYw/r1
	 vzxiNTT92VBrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B40D12660
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173079335360.3002.518261590738139535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65689540565876191902d7458ff15c468154103fdae707e0fbe7b3e86d17df75
Date: Tue, 05 Nov 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730793353
