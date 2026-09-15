Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 937CE35201D
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789453834; cv=none; b=dWbU4ugsE3/EYZRRnXJ1i7O5RwvVRJE2+HV1RNREAu7lPFRzrThVBJxZZRFTvTIcPOclNi+tgpsDOvVIqzZ7gHFL7qj5dnayUZ6AC7fpVZ+Ki/E+1fWZHaPLw+RIryHDNUu1xgVppVVSyBblsXC2qnXhU80Tr7WOv5TbII2FsBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789453834; c=relaxed/simple;
	bh=8ASmxQMIeyqZ4GYMirLn8hU0scDziAmVz9rTQ3uoXFU=;
	h=To:Subject:From:Message-Id:Date; b=MnqyPx0gzAkB4gFweIFk5pvxNcZf88ohgsNGMmzdn0kmurP/j70AZVZejq45IORUA1goSsRvWWJ/LYLe82IV+MTnffMLSeYJTXWvgRZEgYfFHwu3qTnUkL2XCfNzinZz3PaeLMi6eKnyizIESXbUS4FUNtaRQFvatuxbafj5LDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YF4mnNvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YF4mnNvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFFEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789453833;
	bh=8ASmxQMIeyqZ4GYMirLn8hU0scDziAmVz9rTQ3uoXFU=;
	h=To:Subject:From:Date:From;
	b=YF4mnNvPszfop317+lj4tFNRdMLdyqatcyTNHAZubcw/qJ1Uk+ND9g51y56LAzrn3
	 TafbfsDdTa2a4LG90YPwXWy9oex24TtxNDM6Gn/gp6yPSOE9dxjtt8iObdRDdAugmm
	 5taWb/OdNNDZlBQULC4IbA6OAMwxYwAaDTdTr/Xpw49LLalPpc/MFgc7Q2ZSz7CTM0
	 gaf02pf1TKFvCH8JyKLqNx7br/EHEP9IGIfwG4nagvsU67S3w/4lQ1JDSpbQPAsFIo
	 GkUuqG2gVqT0Uyqnq5Xui146WISndvwGBlpGI+myFut4ty//+UbPaASfzJQ2dOvHy2
	 BYPFt1e687Kfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9651C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178945383368.17894.3594662608722835141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19713923bcb58848ceb93bbb84f1b9c08d8a2b0d54d371868ea486e3eaab340b
Date: Tue, 15 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789453833
