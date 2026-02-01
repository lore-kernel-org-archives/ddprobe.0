Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062FB31A567
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769937234; cv=none; b=tbtCt2GuO5SEMhXiKpL+8a5AI4FuFCOSPzG8XDOc/OqiWMiLpbx/Pjtg+zMUr9RyaEs08Jt6kSQWUBO1yL2WNG1z0Uw7ummaJHh9tO5cAIe8hAQVn2bCbugiEosthsjNcE5bd016aaVREGenBWi83Eza7C9oEelL9DtoCrlrbyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769937234; c=relaxed/simple;
	bh=0txvHG3CsqiDcVy0akrPlixuMNKLLhiKzIMzTeGVfLU=;
	h=To:Subject:From:Message-Id:Date; b=oeZvs6v6my8uIWa4/Kf+sKzP5UfM+m9mW6bYTKJoN+UI00wOsLgy1jzWOBp0IqTnPK8gELZBQMm41uH9API9FzzbgrF9+YisoDAEC3Xsa9pBDAgIZaevZ+vCRol3Qk+s6IhV1EuihDfS6GMDgiqOCWIYva8inp/+rBQL3EUFj04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9AZPLEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9AZPLEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EA4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769937233;
	bh=0txvHG3CsqiDcVy0akrPlixuMNKLLhiKzIMzTeGVfLU=;
	h=To:Subject:From:Date:From;
	b=Z9AZPLEXvUAMPngCgdEkgmxP72mPwdymQSfs3pQfxA2yzpIhjwUfsRTOQ/JTOpXWB
	 CUdPZLYg5W6A1M6XmjuvH9vld2W0FrJOEqE9Hj4N+SBQmiUAwydPXZ3lhHID+0UK8n
	 97tRSTroOBelCc0Ucobmsa/ft/s2UKsRdqoBvG7+aFX4EaFcYsqmUFyMn/GoQGs7tB
	 6wBv6jkh6hnYjZ7aLUN4f9YAS3ThM+m5MwS1l5K27wriqxfi7kEN9vJnRNSVGBc9e1
	 31kDSHAhxelB58pDo7bCr89kmVSFS4WPCvxT0691sxX1kJn+BSl6NkSIhcK23YtxOk
	 wAYUEG0iO3HpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9767FE7C70D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 09:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993723357.31147.3479654350659448544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960748137319661d27f3da8b0190f4a912130715bb99fcd41cf0062a7225cb45
Date: Sun, 01 Feb 2026 09:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769937233
