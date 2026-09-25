Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A1A44780F
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790367036; cv=none; b=LqnapTh6P9sMZ6G/E4q9sXK22oWsGksO5bGYAGm260quMjGfcW98rb4BdPpEiR7WaznbnF3FPHAIf5U2XTOXLRj/b+URfGljOMFpXPDRV8IO4Elp2Fvg1cfSoVugoQWTtwNp9hMMqsq9+FYcipbxw4Q7MQOBE12+n8BAS8o3180=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790367036; c=relaxed/simple;
	bh=pCwcQIdu3aBaXalufXrjkIOoAYrN/u6Wi+VTASPLy30=;
	h=To:Subject:From:Message-Id:Date; b=XimKN1EbpF4lgyhwg3qrTndnMecjc1iVcWpW9m9WCP1a0ggtWiiq/dG0eItpT5//hujDge7QleYG++geRB7bxKpZT4nktamyECPZEO+GaM7m20QvdKdcRnkSt+J+1EZnCXxi2bmnV7b4w2jDfa3Intk4RiJyhWQVH9wpb7y+BuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lp/ZySez; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lp/ZySez"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA2FC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790367033;
	bh=pCwcQIdu3aBaXalufXrjkIOoAYrN/u6Wi+VTASPLy30=;
	h=To:Subject:From:Date:From;
	b=lp/ZySezf5lL5b9e5H15oi82/pv3qqvPZYWEzOVSubTQD5dQW8Vlq2DKc/57XW6nE
	 EKv/Binxz4xB2mgcyR8Nqy7GOzI/476sPy/+5e67NDPVa07QxMHfq0WpC/z/x5AM8L
	 bw7T96LqBrF3C3dGJeFY2NYpsxJcy4Fmg9XbJlvzwu1sdrXQDQCIgjneSiQFGSG2Rm
	 1/ltTmtEEVjXk6JdhlGAb/ALdySGZQ4JIhY3F7DrSDRmAM56LdUvYXifT0pqVi8EOB
	 EULa1KDkXs/t4e8He0VveaGxi1tmcmvjV/9TBSReu8bQN523yTf6NZ6apxcnqlzr5q
	 WWBVJgdIBYZNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE03AC9830E
	for <ddprobe@lists.linux.dev>; Fri, 25 Sep 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179036703370.29502.5212751560720275005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 272eb2fe87e1435d50b28c47c64a8cdcec369700406096c7df0be80033286e17
Date: Fri, 25 Sep 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790367033
