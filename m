Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3054A1D
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 00:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715646143; cv=none; b=IE9srgOfL5x3+Jz4NQuhX/9E/kVr1E3VoxSSMcjjwBvTd4FtEDjDU+Le03r/f7O12Jk+FTa4JAQeZLh0UXKZnSFXnzZ+khh+3wpfRETjia6OQrmVNW+2XnKyMGoU2Xvjd3sIsmFbYbq2AfrxFpjQeuK1kT9SFmE1y4coKBQlH4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715646143; c=relaxed/simple;
	bh=wJkJagHz599L3vlOaZc8KURQYruIOy0+DC+B1U4x0eg=;
	h=To:Subject:From:Message-Id:Date; b=D7WgkDFpfi0CFuRePwb966XZIy4lIGzo1W+dRbWOdtaKjc1ZAtLKjdtPE7kiQRKv39a0fTPTwRLQA5sJ6M+Rb4WbY27PmIgd2xHZoNc484WvwfQ1wJYlkPi8Ketnl6wUHDN2LwfYaMq5s8NFBwgl5S8Ypr8MIZnlp2AQcsTTvJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uPj8gch3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uPj8gch3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E364FC113CC
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 00:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715646142;
	bh=wJkJagHz599L3vlOaZc8KURQYruIOy0+DC+B1U4x0eg=;
	h=To:Subject:From:Date:From;
	b=uPj8gch3WKI1vSHmzHKeaGeLSQRypmbEkwblraWEchqCtVTw7JLA+I91fpzRDlrWQ
	 JrxiaHnDQbmePOQN6Wq3uEXtgiVIGoocDWlBnY70xkn0CeYC8dZGFIyK+yPzDHV9WR
	 43yxVQUNh/ija4ikWgIPrmQ6bSVHHkXovQyF+a1HnXMvhf1wL1K9sKhMznN7y6ap2w
	 pJvM4ErgOKGpaFhBrSSuqxLaxMXyV1euvvq9P7cvJrAcThD70M3XUvG0L7Ba950zgN
	 obp0WA0sqzse7Hkkt5durdPT+uL5yyBRIsjnlMrCxuBtFoYxJW387INsGHKzao0uad
	 k/a6gpjIjI0KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4D1C25B78
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 00:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171564614279.26391.4467692041545145669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a2486ed0bcf41873a0bcf91431c7ce0d547c06067e66b13336c2d764d0b14b
Date: Tue, 14 May 2024 00:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715646142
