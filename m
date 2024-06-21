Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132A716D324
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718958143; cv=none; b=BVOs4vLL7D/JwTL+04h4Cf3WsBAnnrLwmlj2TjOz0Ugt/aL0Bf35i5/35glAFTaCsZkW9mfT3IapLON4Aainx8izn/0aq22wbqyPB1oEZyYWxcX8AkVCDlXM/p7ubaYiQWqyBAcA59e0Jx7cgawYWiD6M26pV9xU9bs/hNxTExM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718958143; c=relaxed/simple;
	bh=cuTUePbEjoUTHamyssd9WbDPGCD+X1JWQTiltagSd/s=;
	h=To:Subject:From:Message-Id:Date; b=AbYMGa1BR18LNSLsdPEaMC+s8pLm32pkGOCAmeJsjXkesFdAgEcdo+uhaaWr5w7Rdc+pEVjaF7mdmldw1IDnADUwi71uLiRNRQCUIXQpmyCuXcaQVj9J9RhFoU8ucCp3LKKIWisu9sVL/7zvWCfgBuTQlLHSXRGxqiV+rBjiobk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o4p5yfYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o4p5yfYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC8AAC4AF08
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718958142;
	bh=cuTUePbEjoUTHamyssd9WbDPGCD+X1JWQTiltagSd/s=;
	h=To:Subject:From:Date:From;
	b=o4p5yfYkY0gy+HkzFX0mEWhu1IOHhWqxFYK/z8QAnvCcgpc42RjwARZtPNMuny+7R
	 52IbFexDwwnur04umiH3BJspULToG5BOFsGv/Kjyb2aJReqW8QmuaMazcQspYmdG+J
	 RM9cYmuM88pJRjD9HfLjPEZzMl9XtxUHz1ltjajY2BhyP6IGOfW5PB7+VxWwWb3/kO
	 BjRlqR2VqjXWpztV+THLWXfd++NkbxjOGBo1yZY8rREVZPje2j4qN8Gc2Ug3mSPQRd
	 k53cHJklK2Xxk0kkIhnhHb1B2gxIbLZp6kW8+GdSG5DhaSoqL30VG8+cgyNgTUSbOC
	 AYen1Tsd8Wo7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BAAC2BA1A
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 08:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171895814281.7273.11729687492755350670.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e599ef830ceaaa9d9af0f695d1bdf31be8d4576413155a0ac64789e08ab182f6
Date: Fri, 21 Jun 2024 08:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718958142
