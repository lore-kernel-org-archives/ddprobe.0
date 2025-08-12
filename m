Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17EA91C2324
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754985594; cv=none; b=o2E6k1dUasxjZUc7XXsgdTw5sxKNSlr3pwyrhojEe+V1lYe1zBJEmPIwm5xwPhN/7hmkg5DuqDQrTxQavb5bWD+I4zjpdSmQ/31XRcbmQZ+OJzh1L4Afly0i38bi7BHO724UpUuOICggFY8t9s4jX5mt5cv2kZofwLjeZ+Tlzys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754985594; c=relaxed/simple;
	bh=b1eveBwXthBW0pVxTkLci8LsaqIsvB2r6yRlmxU3mbw=;
	h=To:Subject:From:Message-Id:Date; b=iQzw15QXOGsvjuaeFdN7d63CfW29fJfZlRge0E0VaviOutKYBAyiPP/rgxFH/ETYiNA0Yjx9TVz1y4Z/vgEbhWIVPZqC1VPRbyaJkuvckKCMZnxpLIbCqUX2aY9r/koJgEK+G53gceAHYG+g1S6tinjo+lRKL9ufR1KT8/15Rvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hjyw12TU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hjyw12TU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFCCC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754985593;
	bh=b1eveBwXthBW0pVxTkLci8LsaqIsvB2r6yRlmxU3mbw=;
	h=To:Subject:From:Date:From;
	b=Hjyw12TUSgDCPvxjbjUkaV3szHKzviS0oONnLmOFLdEDRnxf379g04BxkxIH/e6DS
	 beU+7muoQdVmbLkHQAEl2W2m5aW63ehN7B2Dm9+IVzA4rHAPxcWKJPybSvYTxtmE5+
	 o6Jv7U02q99bdp6Oqs/ODBq/RQVHNZwx1Ivxr9OXp1Cnb5SFI7Sfg4A2yjIH22kOHe
	 Bxe0ZNVRJknli7LotJfYjcfB0WCb9At7mju97k3ks/065BNLVfCf8A3ABxstofLmue
	 uPw7yq9hG6nJ6ThKxzILHOV9AoA9iSeMgGy4bka6aSNOPJZQZgo4jusmrvCjCcoMQF
	 LGNZoxCcp9+pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3D8CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175498559357.30272.13893233002009567016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f657ba5eb2732e6d824090111a169cc93a0679afcb95c8e8fbba41c7001300c
Date: Tue, 12 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754985593
