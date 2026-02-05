Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B65413A244
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770251634; cv=none; b=h8XE4MG0lc3tMeuSaI2mL2PnpVMmQhqY6zyi84J8tUtL4LegSOmwpdAS2Ce046bw9q1MwzdVs8lnIWgElernJvlmSBXOpaEHWSJZ5qMlr6U+LthAyvejCR/dv8N00c6E6jni4pxZbtgI7GDVvEk50o3kr3rnJ1hBsYbXk7uEwCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770251634; c=relaxed/simple;
	bh=GB6HPQ66qSqsmSWHdDz/ti+flkAchaQRho/TH9vPBnI=;
	h=To:Subject:From:Message-Id:Date; b=AjZuRsjT+JYu77WEJ3JN0uCrCVUpLYqDBPIN7mY1f6J+ItP1RLecJF38+aGJSQm5sGAAjZ+XusmvVim45zhNzk5N1Txjb9mNInRz8Nf2M3RNKPewu2Ou4OgTCjc/9kuoWl1lyhRwCziRImQEbVF5gEXrpFlRZzpjTS9lfXABMOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvLiQ2Gl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvLiQ2Gl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B28B5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770251633;
	bh=GB6HPQ66qSqsmSWHdDz/ti+flkAchaQRho/TH9vPBnI=;
	h=To:Subject:From:Date:From;
	b=QvLiQ2GlUo8Sc0adwEUxJGRfeLGxsOseBGjlZv/ZobSG9Kzwx6B5TTwpAsN7OxKpo
	 DtnPA1UzMUpvvSXKMq0j6bk+2TLsf/bKcR1aIYLfJTE2eAZ9p5kjwetE47xfW7+Qx4
	 /yMWo445adl3tqyQppYND7sFqZv/xQOIu3RV0GXLMmL9dhiOINt0BMteq/qzNJ3F8/
	 ET4VeoNplTjrmVXs4wru3iHahHpZpgH2c/GU2bad12AfRT+okmQbRX7HJQy7pAgZ6T
	 jfG3p1FGd8bQBEzhKOoq2/kizuWezmFi0HW1aqoyZX97GjDY3mVOvL/UxacUlaW9h5
	 0YsCX/TnkhrYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF4EEA794E
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025163358.24456.6626976182100316259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e0a86839ab8efbdea3d70a56d8eb5df17b6fad55501b2f24c733e3dcd5bec0
Date: Thu, 05 Feb 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770251633
