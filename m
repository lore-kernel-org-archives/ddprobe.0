Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468D220010A
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785573634; cv=none; b=cwyc9n9dMr7YEagzlRvOsmIwXmfVutCHKHuisEkZ3g8rW502GGNmJc+3G8ETG+A9tKB7b0tchVIxAhszlIqvLUz/cNrz54+XLn4OXywcy8UI+eZMEd1rpv39NBZViS98d1bljbvH3cafIT4UvJb2OjMiat69UcdNBVD9yg7z0Wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785573634; c=relaxed/simple;
	bh=lsIQ3bpAWGZFuB4v917c7sUK0W5rsYrnHfFTFGWwEuA=;
	h=To:Subject:From:Message-Id:Date; b=W6ysdcljIeKuMqfYyYvWJzFD3dTg1qSBySNi4rDYtTzoiZBDvHMSy2QF1zKmDEeMKyLe3hgDbhRodSkj7oNyixvwI7nez/V7MbyWgfjKfRKfl0wBl3mee5/EqP0yaBuoNiSL/FYM7r1PTs51O4ojCAtnriGH14iwKexbro32cn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=As04thdZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="As04thdZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE266C2BCF6
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785573633;
	bh=lsIQ3bpAWGZFuB4v917c7sUK0W5rsYrnHfFTFGWwEuA=;
	h=To:Subject:From:Date:From;
	b=As04thdZwhbM6/1QsRp0m9VcrkBckRMDtppHsY+z3YVncERDROvUNpp8aOM74wYc3
	 gzi8knLCqU9T9D0fEbW/lYZF52G1vhysV8pzoorkr1TrDnabX6OBZ7WKONr3pw0ePP
	 fV93K6Ogpei67WqqLuOp80IVC1a8cx7ufS7LvhEWNIAni9GuSjEU/tTzn8v8QnGcve
	 MbILsYmaygBlhoA2ooC4tkNCtUAb2S3J+KiaV7qyTUQTps8yQkYRj8tZF0EgNXNt5U
	 W1os6xUn/xQMZ1JZS+S/25Fx7zAwfPU30limtAsbiNMnuo6/Cwbi64DbtbF4A1qG+n
	 S5ZXRy4VxWR9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99B1C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557363368.16935.948156490468452297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2c21348f69cb0c8112fd1d994ed8770eba5907bbf95ff5da5c841afbdde416
Date: Sat, 01 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785573633
