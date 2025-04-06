Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482C545979
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743920394; cv=none; b=GhrPORLx6ePTjvLctrBv7hYUNR1aRTq7cJLv6qmqMmZ6u2TgayAnekjGGBgvHUtpKeccT1gds96fsnCcCC22EFCbbtlm3dsuhb9Q8O+Dsl5CIqqohQ3bA355upyXb7eBCEN0Og5mLFIyqUzdmuWlu9vQXGl2fjinsGVhVU8Y7ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743920394; c=relaxed/simple;
	bh=UYthFS6kG59lG/pjIIdeeCHRLhcgaXAZL8eTwZfSQbU=;
	h=To:Subject:From:Message-Id:Date; b=Bme5u3oRHO2DcOGhjMjwv2IY7nJXwzT23wn87xlGV0ZsQIl3/NPe9OSO9mmgEqkIbui9fS71fm//UgfZm1m8yCw7OmOJRq85zGMfQbIYFn74BnPRuf2NDCEEjC25n0hsuLNSdbxiwuOBjDV+KIpglrmMaG2V8e20euB65YgSsJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2Cv3nhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2Cv3nhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC7CC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743920393;
	bh=UYthFS6kG59lG/pjIIdeeCHRLhcgaXAZL8eTwZfSQbU=;
	h=To:Subject:From:Date:From;
	b=l2Cv3nhbZs+zKn4y3bsVfc1cG8VPk3qVHA/3pF7gQ3Ig7kmLzGl7A9DboBkie8C8v
	 LSXaPbSPhdCzevdPaDT+/Hl37NBdrz0x/tg0MDVKVrpd82uLsndqErVq8RXEQfruc6
	 +f7fbMjlLNrUwq+BxTmCWyg248U3Q4HEA2p++Z3ov5SfffBLT4eWJT1BgOpDdjy175
	 WpooUH+jJUvZDnPAk1ya2fWS+a6QRpJnzggcQsqvi70il1OuFupXMc61HUWk+RiLXt
	 46d3exv1MKVkPAH2xBsLDoFB7MjnFAvJgpyGaGtA6hg4d42o9T9GPP+82C45y6wa14
	 S5knhJB+tmGHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2DEC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174392039358.24498.4853100625307238346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d05ab77a0518b09cfaf35b532ec0b77f104f9512b1e43884fb134cebeb038b
Date: Sun, 06 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743920393
