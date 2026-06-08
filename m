Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6343E120D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780932874; cv=none; b=tm6iJrmEOOt4Nc+E6sqgn3imORdXBa5dWdsySoaoIpRmq8+ZKlNMF72F9k4cO1p9Ou8oqiPW2vTLioVK7uLkAr8xYdd+1Mwrk9/Elnu7k/8nf+KaipsC/zRnFHYL5p2B5WqErC/LZSFDpxfXq9sN6+txFrlK2MhJUJOm8s3r1ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780932874; c=relaxed/simple;
	bh=GiMZzcYEbmKYrRdojX5uBP4p0Tatt2xP/mpTj5BE/+M=;
	h=To:Subject:From:Message-Id:Date; b=Sa5DtgThGflJIVn2m7nFoeRkddrEwD2806MOv0Ge3S4dlIbLkMdXUTyx+cX0goJOILhlD+nISkvGQ8qxDnT4aSVAMV1IN+2IpnUnccMRXix4gk3TigpsNQSFvUPLItMJavvXHJC4ZPBfyw2Kouj0hlxG85igwL0JiP1hpAbaMu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWNd3Q2r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWNd3Q2r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D666AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780932873;
	bh=GiMZzcYEbmKYrRdojX5uBP4p0Tatt2xP/mpTj5BE/+M=;
	h=To:Subject:From:Date:From;
	b=BWNd3Q2rpAZuIb8Pw/A4U5iHwAEo4oVC54WIrujnYKkG6DLbWBuHYX4mWfMhI8vmF
	 YpyiIhNai2gnjHLJBLS5g77oKxn4i9b4dz/UbE8bg8/VfcYZhpEaKtFRIxSqINoQJj
	 iraL3hoPOxi8hFCQNugxulJYnnJ6gEdaTCogD6dq1xvqHDch1Mr/oaz2p8NVpQTllU
	 kZ3Bs3sllcKL+ZOPRzFYszmd1wSUaLAQLQYBsTfZVdGwta8QsEOgXGLBjKErbTsFfY
	 +eB77r7p/fzltZBxHttbsV/caqydBVgeQbzaIOG1IRAMCm3Ah0JBPWbZA4uGIqdNgw
	 dVjPo34X7l9Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B861DCD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 15:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178093287374.2162.5256638283464953973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5533c1ccba2d8a42423b92cd094288ac53a17fb91e5a64fe84a83f7791726ed8
Date: Mon, 08 Jun 2026 15:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780932873
