Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F9D270569
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754062194; cv=none; b=S2l7g6h9X0tywzvo42VH26IT+lvkXchZNqNJsDDz0LMaYfB13/dzU7ekNy8fBQmiYpI5qr9aP7Z/TfSEzEfxl4qxLpJMPZwVO1etvXWi6dLB4QrvX2KEHzHG22B6bTGeWFy6C+tAkRcRoEBdPy8HXarSPG2c97qtNHsO5VN63SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754062194; c=relaxed/simple;
	bh=RO4RGh5nR9X0aznGLjzFtfNXWxC0iXnRyQKHPqhe31I=;
	h=To:Subject:From:Message-Id:Date; b=r36RdWt0U6lg2B+eivxLSv11xLQ4J85JFmWO1YTnXD/gK4qPqJJAhH8qEpqQlGHVF/DS975FA9ows0w7zikakoiaGjTIAdO3SCdP9hQa18uawaAgBAy+g0VmRXbC94/WuXD1rDVyZt0MfMjmE+oZCwpmEmVp3JvdqtmAXROLn1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+OXpX0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+OXpX0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73ECC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754062193;
	bh=RO4RGh5nR9X0aznGLjzFtfNXWxC0iXnRyQKHPqhe31I=;
	h=To:Subject:From:Date:From;
	b=Y+OXpX0Ffknnc4Oo4R2yGG17fB+oXxtKxibn6MKNYBWEcIKW0xCCOuAj8eTa5DQLn
	 Ly7/KdhgRclrcyf3WTbAI0E8n+31k6digS7JDIQ6L/7FPYWGaxAlZI2+qVhj7X1lp2
	 6jqmUNMop/hQZkguXhoyKp8w7in0FKwC5iTblAlVLVhMGsRS/lefghOmuKM9V1tl7l
	 NBc+VPQcC7c64I3tUun1Y73THZeudwBwfOfQUCN9Zz2Aw+f7l9oo2Am6EwLoq0i1bl
	 S0nLmU7P3A7dLVSvIX3B7TXQt1JjsC0kGE13ynVi/+/FCtvCoIv6FcYvn96RuXq3g2
	 t8K4/llf/V6Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AF5C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406219359.31656.1748054271744930559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32c07b7e37fd41c53c8c1561a9ded04eded446d39419e6c13255f47c138a2781
Date: Fri, 01 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754062193
