Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063571482F2
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759384194; cv=none; b=iBoQ/D7BFQZhFxIIHzqFdS9MZ5zQ9kQrjRS0Yyuf/I/G8eZS/847vIdRG6wvhHnNwM9GMuDYPwYywcuGZ9YV6yg+jhQfKYgDzo81iL93VnLwslwWYP8U5qlOKnGQnBQ8fkRpW623aHRLf1Zlq7nvftSbTHWxVYD8Vax0Uhea618=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759384194; c=relaxed/simple;
	bh=KibQXePN86Sa8kJeaw6aX5tUAXMxT8jTaisO613lQkI=;
	h=To:Subject:From:Message-Id:Date; b=NTjfhnjFbShXOdWAN7t1ISuAJ5YYMh07ZVqr4Gp1MGDWjp0tc0SBWlHbherHj5Qk7iwNu6Cs6EptcoQrOMadP5k7jswfVdRp4zm1NQXfgEptPscaT3e/HC9968W5CDKWWJXly935HtoscPOgOg92cI9rlG3ZpvJ5G9Ydv8oZDLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/mM+IGi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/mM+IGi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B6EC4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759384193;
	bh=KibQXePN86Sa8kJeaw6aX5tUAXMxT8jTaisO613lQkI=;
	h=To:Subject:From:Date:From;
	b=C/mM+IGi9tEsFbKs7gXaz48oEu0nyCMyBSKt74HhYKv5wGE+WLI7XeFx0HLp/vUMg
	 MCKSAZBSxXHR4hPOZbKSDBYNW7JQP1BTCwatJnuUuKtE3oPOupCrh98kOz0XRXPob5
	 l/Ndt6FEWp4kydFKERA+i/0Ucq8ddeJ6/0RQBk/A9wC4Vyy4HL4Ptv2jgwB7OcPi1x
	 nVqkLEe8KRKdpMm7jlCWkSQ391l2oo2ykphRTlozKd3W1NdmkegVyJSY8abhFD5MAM
	 10ALQ/I1WFtdL05Kd1/N6N6/3sWs+j1OrSJ5sZ+xdRFE42RWdb0O9UwgpLvhcxO1Rz
	 KnV2v/oYcxLCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7DCAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175938419358.32762.16836891517871310024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8d4dc875d9e51ba9345fb6ebbf1f99ff4c8b3be32037e2e4a43384c411964ff
Date: Thu, 02 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759384193
