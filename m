Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA04143C4C
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728295554; cv=none; b=MMgNZ4jRvaqguhwMH4FHjKOQldvkyDmDJdlbqn0vsKnCwkb7mBf4F9jRwJrpyVwDlqUdFyfexRP1SZU60LUNeNJ5VP1Ee0A6Oic8nobQ3+aJ+etrZ7t48jQuWpKFFZqyG+9yR8qifIoCMrP/E6m9+EBQJAYOYXWwWwF4ijXKdMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728295554; c=relaxed/simple;
	bh=hyCuTBhEKBrWCT0lcdmJ/ZplFXQxy/F9NShhIZLC8ZY=;
	h=To:Subject:From:Message-Id:Date; b=KnSvE4hoEbfI4wC3D93SpcXrmuwQ5gdC2iwYiBgslU1XsDS9V+Znql+ShWU+Mt4OqfLcy8G1McWnfJ+XGwrkyW8e6ceFfPyifSusPPUELoxdEzs8t9Wy8XS+jTw2MOADXoD7jCil/W8KsKr0yCNHYKrtz72lbVJKRxlrrmHxauw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0d4u8w5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0d4u8w5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3123C4CECD
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728295553;
	bh=hyCuTBhEKBrWCT0lcdmJ/ZplFXQxy/F9NShhIZLC8ZY=;
	h=To:Subject:From:Date:From;
	b=K0d4u8w51Y/9ur5TtF0Q4XpBdCFHReXd9j12elvng9/GSkxL3whM17xdKXb8rsUxd
	 O4n+vh4RKpBiFQH3/a1ECmXfuqF6GFf7R0xAUnm8VZUe4jLPb/h2yeVMIIag1SgTVC
	 w2z/lfpcjXWmJnQkbgAqe1G881uCKtanAFMEKZSzzVAPr7wRcu/m274nrTG9qFpDtm
	 Zt80O11ERt2hVZoJ551mxQXO7/t58KvttU9Y1xZ9lE+rwZBfwiNgJm0enNdeY9fLkr
	 YD6UCYD6KIHivNFQJwgViJNr+do7Hm2+GsvBX859vPnITnVl1luU/8i6gxm/ZcZ2jI
	 VVLXrnMMRE++g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B165CFB440
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172829555360.5296.17750977366653175154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2951983571a6390d6feda41cc48ec52a62507b96fb41cd38e70d787ad9c0720d
Date: Mon, 07 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728295553
