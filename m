Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5062BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743867594; cv=none; b=FWDpEDW3gsup2avctIoV1MqVj9DPpenKL1ma+d3pCQ/KRMh/S4xDU98aRGfCs4YWSFslkvQoZWS5HYUBwq1EOUFrl9J9gKekhMq+Yat8TtOqeXfOt/1K/d480rouQKQ5ip65/2EqC89Xkj+wDH+mio3B8dx87LF/KCKkJuNDRWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743867594; c=relaxed/simple;
	bh=9fDDom96cYoTjfGCZfAe1Vo6RwCyo/qaoIUKaVC3+CY=;
	h=To:Subject:From:Message-Id:Date; b=MO4L+a0xPeMWEooE6rCSzaz1P3GckWwzxCiPQ/YF3rOYARs+t8hUwPpUhKQiG30GDOPQvJMdJrWowOl3qZv8pp+DYZbsGDJ6mTJQd5w2wiEgbv5fS/L7SPSh5N2CLhPtQjSJXRzIfMOCYvW0aR5U+5z4V0nSOtIk20/CpHxSUrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YFI/A62H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YFI/A62H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF04C4CEE9
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743867593;
	bh=9fDDom96cYoTjfGCZfAe1Vo6RwCyo/qaoIUKaVC3+CY=;
	h=To:Subject:From:Date:From;
	b=YFI/A62HNypGK9078bG9HDtxlyZ73R6TPsYqNEHgsTw3ab6lQHIIQKRFXhYKU6rPl
	 9Pmvj9SL969PZNMTc0g2AuD6CvcL62V2/rwrO6BTY8QKPSYuQoh77MDyhJQA6zlDNS
	 lOo3Lm0MOyrW60Zri7bPH6ydK1p/xrE8PTM3QL9Zkz5+RZfPSXFzHupTysVizIUnX7
	 nAyCQstC9WzAXgrL2fA9OOKQIVHKRWSNvlPB2PrJZNYaCabKEq15S9lDrrRzwaV3tg
	 E3PUQFUE3dstwxI4yJEj28X0cj/uHMEWJeQNE+dVz0Y/Wc6+fuMcqpyolT8JpHof3V
	 4d6d/ArVnVyZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953FCC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174386759360.3155.4315893220970183817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4e25113741792c8e686bfd3c86a61ae6b7435cba6d04202ffa2f0c1e734df7
Date: Sat, 05 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743867593
