Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4AB23C8AE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783047514; cv=none; b=Zmllw1ciaRdu39hi6zGAqhyajDFIJrXqlIehTxXjaXTTapZVryM8uURamxxcJZHIo3OG42QZxfySeHX5PjvwgWtC9xJUe9mZpy41VanlgOy6MEqQ0/0vzwO+0vAiFUXLb7juPLooRRAbBCBHtWqKCZ3+qTIlpOV5wBGnwOMAWNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783047514; c=relaxed/simple;
	bh=PoSUyXJj/epddZzGdh8Mzdg+i3RX69Xo6H/rbaV7YSw=;
	h=To:Subject:From:Message-Id:Date; b=ajK6/G+kClXnfpy1eK3DZgD8UhBKgsXhwUrQ2Z7Y+Gy2IFkWwKUNmLq0j6J0fgadDVe6o0LZCyZ0qy7bHll9TB6R+lKMyEoR4XlPu3sBXYp7IKK+FYkP0xWquodp5JJAY7HV2DK/TdypJB1xpLJAMx6lge3Thxify54keoG2uPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiAIjzK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiAIjzK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF7AEC19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783047513;
	bh=PoSUyXJj/epddZzGdh8Mzdg+i3RX69Xo6H/rbaV7YSw=;
	h=To:Subject:From:Date:From;
	b=uiAIjzK3gbF8RkAzFjVy8CChPesVA/p3ASI3XtZfmUN0J9TkgAZtOJjnqgjHhZid7
	 HOq2QfdLT3XTBZgBxHG7ApHDApp58a/ZSaafgTwR7dyAzuto2kgqdsXYAG4K4OYM61
	 zg0pvRRFocuuHnGb6WAgDaWTOfW8zvy1m5jtFnX/BSxJZlKJ8am3Xdya0qV56Av+Rm
	 FGyGbrzPljDpG8L6e6It8aCVWmfPcVf59UumVRZcFeZx0u7BBpZ37WxNUvtEdlflL2
	 x5mJhufqnYWDmUyoXWw/k9hEuQPWtBAVkFP6G51a7aGBp6WUWviyfZojAPvoRoGKKL
	 BiyqEglsD56Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2BBC43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 02:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304751370.25089.2651442827492130178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3771461c77209e16fee6539131a8c79a41e673190c5e9ecad047f2d7a5e760d1
Date: Fri, 03 Jul 2026 02:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783047513
