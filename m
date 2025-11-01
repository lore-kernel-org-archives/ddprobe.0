Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CA919049B
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762014594; cv=none; b=rs36pD+ZKOMwlRT3STPeiv/h86wMqnLZ7SZYgBHrl8I21Nc5iH/rOomp9lzbBjYGah4TX1UTn81OdOeLQr8a24L2PGW51u0JDGR9VOZ9ik3GbylpJrtX5JipQG0VCwJ6VWDAUIkAJvL1CTMiU+cj28qoCj41JIlbHYJsf48nCfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762014594; c=relaxed/simple;
	bh=uWVNHyP1HvMzLLFOHb9KXUKRch1WWGP2V9zEAfUj/FU=;
	h=To:Subject:From:Message-Id:Date; b=hpnxF2WDZ+1xyHgvSNBv3tV/Y87KxGyTX22LAcSOn1DbenVTDrU8h+ScQCXSqpljBTxiOTD8dsREyMz9OYCde+96fuw/kVWhOMliCTGInoibkOKMFgy3QSPIq7N3WqV/xzod265FSDA7lIEPzuWBdD97xPlYZeFw9LsjEl2VOfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sH5J3EBH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sH5J3EBH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E98CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762014593;
	bh=uWVNHyP1HvMzLLFOHb9KXUKRch1WWGP2V9zEAfUj/FU=;
	h=To:Subject:From:Date:From;
	b=sH5J3EBHjM002Ff/eFiLl/V1YVlUQHhE4So10VnHBKmNq2IFs7HbnmJPRi+HfJEHX
	 dMbeHu52laMkF9HUlG05lXcObDlBfv32+znRojje2YDsdKdeMQb0y2CJDx/FvyzAGz
	 poE0dXkUdM6uWyDzX+HmVno2BLrto2P/bQUaWO3dvbZF5DcpL9ujL1AAcNrtSdlfsp
	 kb9ifb4FCpsrKbeD/JLo8uvFxgLQchl5fF7JIrwctH8710PXIosluFymBJXfN0LXqy
	 1iKtjBFsnJOnlmJFVx6M1qmasoc7b5/uGMhwDFQ9D1TLjB+4ES8M76NB9iTQZBb4Mh
	 47NaxznSTX/rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA85CCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176201459358.18936.5141312231849434927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fc50a19ef2e9e90a71c10a12d3688e3f0afd248858bb8cb9221ffd7eb1df323
Date: Sat, 01 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762014593
