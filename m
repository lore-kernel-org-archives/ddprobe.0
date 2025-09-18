Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FCB2C324F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758227394; cv=none; b=ozsDzpZUC2+iEdrV3FziDuiWPv3MO2hSgQima6ctbLVzpJTiooCIrazExr1Vft4FgGr8uyDR++n2gWn39ZakYr8CfKQWesN2K7VfWUIcD9snU01HFaQ8I4ggHP+YFAhdTTZ6RSugW/9DMmukq09FbfME4a1k9anJL46CWZAUiTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758227394; c=relaxed/simple;
	bh=bLGEgi0Z4QUGWyknib+y07y0xR4gI0trE16QYBqpmog=;
	h=To:Subject:From:Message-Id:Date; b=nZx1fxLnujsHPXdCVvMOsFfXaXO1wvn7JeH7lpmhtIrMG8iVeHdZ7x9RdpBXtdATyEsgiLrgX3mFr5/01CG5J3fPwDlBc7ReDFqQtiXCNlg2mkjrdzVBeiWzQf15zcEc1/gpYjTfOpq6f+9W9krAZ2rNngjj8lJz1RkLU6XkJoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yvu82EI7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yvu82EI7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8B12C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758227393;
	bh=bLGEgi0Z4QUGWyknib+y07y0xR4gI0trE16QYBqpmog=;
	h=To:Subject:From:Date:From;
	b=Yvu82EI7we+jkduOGfjB4Y41WSy5JON288ewpQGmCVs8ufX4meNJwLb3nd8q+4o7c
	 bn7LB5S0CXn5wopL4BPQR8VShiY51NpQ0LU9Y862u1tIC1s5YFTWWg1FpzsguyJ5l7
	 sh+t6WFyzNl3Tdmrb36eWAncxXGO893FtMrBC+KTBIr/mhLheH+zWCzM/h/6IcVcgu
	 xL1g4C0TKyrzZ2R6WpYniuGXVjHUN0P4/Q5PR3tqm9Rwbuz9QWBF57NmqfRKuhcHfT
	 N7zo4CeqT9rAAAw8MW2F7EdbecTchQqBdv4vBdXo1Eg4gTuvB/NZBZrqo0RbbYVKG2
	 7zbBYlNmK+25g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9732DCAC597
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175822739358.20983.1794743840944007068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2386787df8a8ff129865f73501c1ac02034d9a4cbedffffa03c02fc6858abf3d
Date: Thu, 18 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758227393
