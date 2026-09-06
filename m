Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF9F37F72F
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788717634; cv=none; b=sNVtIA/5ekV/l3+rymMXId7eopc6ObaTr1D4D8JiFfWu5PTilKvnFsEOeRxEe615jF1UN3X4cn1DOxq/EkrkUE3dF+/seMMyRI6ZP9pZno2eM6lJMNlKYgsVKCn0oA0E0g1gzclIMVfZbSK5jV4afy6ciTnVkOAhobOml6npMgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788717634; c=relaxed/simple;
	bh=KQLYjUMzjCcumedfwsqDLus5+wjgkoqpQuEQxPSJI/g=;
	h=To:Subject:From:Message-Id:Date; b=hNGSq3Qj/Rh6bmBlox4b/uls9CShZzQ+rbhVawZJAKM6vdxA7euFvnJ5QtCEHxvSVDF9Wb4+/eRdttNmzmFCmCK2pYq9oWKIY1DrmRRFvr+LvX9v8sSF5Mh6p44xf6m0sg8LsfXrGhMJ8DZ3zdVThkJZtauOMAro8lsjhU1NKGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNPQAVff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNPQAVff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8F0C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788717633;
	bh=KQLYjUMzjCcumedfwsqDLus5+wjgkoqpQuEQxPSJI/g=;
	h=To:Subject:From:Date:From;
	b=GNPQAVffzL4Xry4fPN+zU2iOvbVZ/RDXcvpx1CH1+mn8vzWokeljHJ1DGSMtWyyGG
	 3JRPQ+T7oFEdPUhwWNbGBZ9cxtJRIRbT5TilQ+xZs/389yjcbpGgxWTxo1rhtxuEAy
	 81L4ZEvvP4f4IhnZBBZj51miJG7nqlGS0OQvUSe/dpU5SKunHdYx2/a+drT9g5FgTV
	 o/c7EjZOKdyOjheZNpvbW4ybkisudRL1vpMeEV9bMBZ5muB4/xTjAUv5CfNzzIqPRC
	 X7VnHU5apgZBP7qHJ5qfKzyV7Bx6t+flPCzc9pPpj5ZDEIJ1Ico3+WkYqbJvd47Nql
	 Ymo7fybC5D3FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB291C79F9E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178871763372.18058.9327136877694863109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 518ed6055da8556dd1a24edd4f368ec30a786b44df4134e3cc4057e7db1a5800
Date: Sun, 06 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788717633
