Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0C228DCB
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723286754; cv=none; b=L5G2p/7+JOH/UpjJSqmNJhJPMp4fnBrBycnArOkulbCBNlRQSjK2bmsw5/9ogWJwlrtHjfsxYocvRulxOg6ARgr8UpZlodRFRr1QNIfo/dPsIPWpt3B4N8FsCHQeR10kvTATCvRoeaxLXtnS0YNGmoPfC/KVmyD2R23Euscs/UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723286754; c=relaxed/simple;
	bh=upqLCuBtPebpv4qWJh4x3HancIEyw2FglG4T1Tl59eQ=;
	h=To:Subject:From:Message-Id:Date; b=W217plPq0S2LUnel5dhAm7whDx9FEx36E/r1vTYl8JybCwmyOF4v9YHwVz+I4+gjWcnfN4OOvA3sq91LhzcqDQmWdCzk2pXGK76IcqI1WG2GNWKdERB7rk6ECOQZINlBbY++wbwZSR7GWrclOhmd656Hj6iDVneJ0ge+X70/XdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+DIlk+L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+DIlk+L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEB6C32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723286753;
	bh=upqLCuBtPebpv4qWJh4x3HancIEyw2FglG4T1Tl59eQ=;
	h=To:Subject:From:Date:From;
	b=S+DIlk+L3HqvdR/pv8U0A+pkAdM1dyQIN8GzaMGJ61gn4tmGiS/D2HZauBIbgJJvC
	 NVar+hKJWdJBmkatJ1fjT64FLE+GRkEjaG2qvBJy1JG3qpdINWGbOhNYRO5WF/Ylnz
	 KDFrBgtfp86veRTMqW5KhbKcfMCu7dTAzXvhxNifMNeifN9znejouRNqaaV2A4rBbp
	 66iBLBD3a5FbkwXeqqH25zbZEfvoAtZBwRBaIkKdRgryXJW38U6564gb65eqe9VYr3
	 piq8s/BT65lAlge+3Z1u/IDmeExKY572nQRLGs8cVjyN1j5mM9fquI/o+HGu7ujrfT
	 aqKHtSacx30ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93905C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172328675358.22322.16605500746273664698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd2fdbcce2cbc20a8fd8c66accbd5f9049729366fdd2edd48474c1844c8b5bf1
Date: Sat, 10 Aug 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723286753
