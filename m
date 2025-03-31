Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9EE7D07D
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743464394; cv=none; b=hjtzFIbT3CtaYWeNgpjK2GJV5drTExxfogNmvwmxBYYT8fWmElwTh4V+cqycblsQ+Bcxc5bCGcqpRkjt0erkFwqMH4r03OXLjhJoR0K+GfMs44Ov/sN2iMM61aE/zmooBXb1T33RtPwLyRSczmb5qRYX02T9tgGWT0Pxxxd5mxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743464394; c=relaxed/simple;
	bh=mHS89e2qAQQg+ttDTElZJmAmg58M/PLYxs/dVWNpiBE=;
	h=To:Subject:From:Message-Id:Date; b=DI3Sh418z3UUn8v7M5Aw7IWdnECuhOLbYRnqFjruqdW+Cva9z/WDKjjB2dxfuS/56c2ArBlgzmhdchOc+o+tw4dTpH3zlatHC7RTYuqgMM/yN9giCYqup9cjnyzmc+t7PRy6VtJtsiipEeMwbMvPcT+i3A5Nh8yv3xCakb+xCFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNeIoTtp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNeIoTtp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70ECC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743464393;
	bh=mHS89e2qAQQg+ttDTElZJmAmg58M/PLYxs/dVWNpiBE=;
	h=To:Subject:From:Date:From;
	b=sNeIoTtpo+ClPFVj2B+QIMaikgjOyqEje1x7jLjK7xWPJgTYoSGVPZIj8W/CTymul
	 UnOaR6AgoBnPN7V6R0Kxh5RaZUKXbm+iVOq+rzdwRZ10l3lSWelsx6/hAK4oQgjDak
	 kJm0UG7B39K6RdKnN5DZAjqF3xbxH/K1+EAUU9chNzQB9Jmcxf/BSAtYU+x/RWRaBr
	 SWnjBY6vlo3NbG2ulfzKOthUVw5hfViO3fj69ZX1am+IztI9/6+a8PRm+uuTYIJhhJ
	 c42DPyj4MqTXgS8Y22Hm7CJpr4GpA8DO04o2ZkJ0OdxIrZ+tHX2ZR/FRxAoI4RSeA3
	 MFqLMrqU7gamA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CF8C3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174346439360.17171.5945958589324447479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8199f854dac0a794e0bf6e01d7c4e618a649a5bf92299921aefed45bf959f72
Date: Mon, 31 Mar 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743464393
