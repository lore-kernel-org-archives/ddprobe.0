Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28677448BB7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786014636; cv=none; b=CNEz3RBpWaNrfSft3TraRTLzblEnEoFnH6VVEbtU05oaYlrUtmnpyLDlayHwR+6w+ukI8aTD/ewtgPYQEXeY88mbZHQ2J0jeLV0WCuiFfrFFChS36t45BIBbrCWhQB0uW9B5vvsQJYom2+NkWgtVpytadtL+DJZsbvb0Lw5RR70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786014636; c=relaxed/simple;
	bh=8sSDot435U+Gg/sZm2D+ZOf+vnsz8kJljrqE5JzOYz0=;
	h=To:Subject:From:Message-Id:Date; b=tjvwtlzuN35T3t1NOk4WKfrY81G2lYSwx/h9xKSuu9JC3qHxW9Bvy7tbW2KXRTIJcAic2j0WWlTsF48P/JjEOiQbjv9QEraVu3m3xaPrMSX8/UujSGJTNBrS3YtNKYBiKv0b85i/HzFoLTc5Gsg2dUBEzezew04Qc2QNfwimlfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5C2TaNh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5C2TaNh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D235EC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786014633;
	bh=8sSDot435U+Gg/sZm2D+ZOf+vnsz8kJljrqE5JzOYz0=;
	h=To:Subject:From:Date:From;
	b=b5C2TaNh68FISEwtalT6bL0Bdc5ByXeehfZ9Um/AFiRo2U2SyctFFYu+8cX3HtsLs
	 ld4wobmKjou384MNMAOXRdfwSaHkVr1mguoqA8WoyVWGFT3oI+Q+C1bDFLSNfsosAD
	 dKTRE49CEP9BeVNQ5+VwWFthsSOSQW+a7/O4ytJpmb/0AXvBGq6Kl/z+5nYRdHMGfq
	 K/XE4iMzr9X15AP4wiVPs/37Cc0liWl9T9dz26/TxIwuumoqoziBAGp6q8X9XGKywt
	 uqZ5yvr3O6iakZWdsSUToz11Ft+JJ8n3JEBoj+iDldlA6CnhM0g0CWX+epq4EnaoOd
	 L4LUAPDkHBSNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD225C56208
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178601463369.1011.1374704496438691164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce1d7221a107866d1466782ba998bacc6f4abb63bbc9ce3d5dfe92fc9cbbffa
Date: Thu, 06 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786014633
