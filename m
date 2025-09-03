Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 326AF3019A0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756903796; cv=none; b=CGnxAXE3ohrFXVvW5yGI/L4P3AgceZ/tNCeMLypmidztnc6ulI7znhW4aXNo7qtRo1YcZNTH70lmg3Vl8rYTS3tuKRQaEGxAXGuI1ZqD2J4tyrzZeoCMd3RiDAdYLKtrpDuNBCQsm6Vyp8x1nxx4Inf2kg9ifx9KEWZUnRl42Go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756903796; c=relaxed/simple;
	bh=zuRxIQMPqaqF4u0eKKz96vGPHkb+yv4M8pIT/XfPspw=;
	h=To:Subject:From:Message-Id:Date; b=r/1YMJprNfyhxzEF08pp4TR5aLbIqVpfqi91CxRky+IGqHW7oAoWJOYzCdPfxGBDr1S4qG33xS0GqI2rK+MLI4EwpClNDJKHs4I2BtxrJFE4p1oFgxOzQOWx8roNYh7gS2yvpx1Jlm1car/d4JqKorqlY5XEJjHwqsHMQdfamXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3/7UPDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3/7UPDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EC1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756903793;
	bh=zuRxIQMPqaqF4u0eKKz96vGPHkb+yv4M8pIT/XfPspw=;
	h=To:Subject:From:Date:From;
	b=n3/7UPDQipftM25IUEFbxnaM+5J3+arMHGbUPyddRc9W6ftEOaYQ0pcUX5Oz0Xf5Y
	 njl3OhAeGGOTcf7h9KlMVjHojN7mvtkq0SEOm4eoGX2t3DQlgaVUueOpdoEqs0BIs6
	 63ufG+y6hIN0v8BtfGWA3cyOq1FOg8Gf/h0F7iaB1WqpY5DczvkhtVc07C2GfN/vFG
	 Qj7GK2S3KXJYDHBcqWj170GV6bs/eYwhaSEIv4TS/awSH72ieAuufJedBs0DUVR2cp
	 on8G4kAJIvy7CyiV+Lw4H4Uwkn3zaXkAok02UaAAT2jVgsJ2T4Dlp5ovtEuinWrN0+
	 dTZ92BFF6SykA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96707CA1010
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690379360.1546.2618919352857621103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d336f021e99b89d1dd5edfe0a5d8f91d1a520ba361b617c69fc55083a1140a
Date: Wed, 03 Sep 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756903793
