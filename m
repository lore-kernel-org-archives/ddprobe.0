Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2517C3AC3B
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754794794; cv=none; b=O263MtpQR2T3D6iM5d8JeZh7H0wgcjKAo4en+WOwssABNZYciHAFN+uLrvKQmBgVuJA7xEZskaCJe28VNGtSj6ji9+IDUZh7BZpZGYWBI9JoAgSfL3kzuEF1pz4NMxxqKNHcWu2wrtEv9xnxmOwmFi6GQvCGdYtTZsddKr5kpJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754794794; c=relaxed/simple;
	bh=9a269Zv06uCB21SXS3hne0ywNhrL6tjShS538d1xHXI=;
	h=To:Subject:From:Message-Id:Date; b=oIDcQJZOEeRgrOi/uZF9SYFMh8kd1DhcH/xAuo2UQ2agcSFYGVPK6RsrUqdIoKs1f07RrwwTj6c6bYTYoDm1Gi21jgqCHd/QP5MbOEUUAO6XaVA940Wr7xWiUQcdwiTjIpThkyE3+2/4/rgSVaCM6kBnz12EPkcoMgJPaw730RI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfA52224; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfA52224"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7045C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754794793;
	bh=9a269Zv06uCB21SXS3hne0ywNhrL6tjShS538d1xHXI=;
	h=To:Subject:From:Date:From;
	b=AfA52224kgjBw3Sw9pulX4Kw2fk9gwpB4FBhARTmzuSjo0Irx0hd9PfKGNdvd9+Ls
	 JGk3oWmg62i3gBz/UDv/Ufqp+bACUNEBgDC1mCHCTT+xGcX/IAcpZQwVaqwEwvuxQy
	 m2iWsALA7nsD7pP6WORGxYEP8eQI/fXN8XECfgEL1/Cikyb7ftUpF6xOLFU1+qm7lH
	 Q+QFJywRMt3Rt6EsyWi7PUcgb/i0EpEv20qix6uhRyUqMcGC6swjX1XoR2LhnDDEM2
	 7dkF8AeBtzxfqZJmxb9ufv43fP4Mydcyo7Dep7833kkOCkfHdTD3cngJEV4jdIH85R
	 7otmlZKMdzDIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93849C87FCB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479479358.3369.7257508702216146692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bbfbcddf8afd46efc49c956d23d765918358e799af30094d93cebbdf8f8a18b
Date: Sun, 10 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754794793
