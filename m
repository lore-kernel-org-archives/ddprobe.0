Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54FCB5B05E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719674063; cv=none; b=I29nj8xBC16Uba488UhgS5nU5r9mtOYBaZwIMP7uZqLLKhrjhBgvMCm91wJcnNipBgiNK591vQGln1dKpZjmiamo1Nj6SPfEOX05E8I/iGXqAXhl2d0zRsu31rctSJFpOepV7FQwOiSpiYwEth3y4/KM/KNRSvxrAQJMlAwpDGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719674063; c=relaxed/simple;
	bh=S9pvvdFkU3/OIM1+zZLpz3OQ8VOujZLy/GsSqDS7Geg=;
	h=To:Subject:From:Message-Id:Date; b=tTC39BFRT8WyrUYOXqG2XAP+3x2YZoVWtO3PPrhaodJ+03RQY5Dwg5PGgzAVe3pbJO+ItZTIPLYHMPCjB/AQGPVkoF6PAhjLhWHwHHYsZl37Y5Q5xxSNK3D/xEFRQsCXeWpZhAmBVWhv1tU61+vReUD1E/SGNgRc96GWBXok3d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z5oZO7Nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z5oZO7Nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6653C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719674062;
	bh=S9pvvdFkU3/OIM1+zZLpz3OQ8VOujZLy/GsSqDS7Geg=;
	h=To:Subject:From:Date:From;
	b=Z5oZO7NmYw7dFe7GD7brP9uzDOw3AJ27rXRbxljWPRuyfRev+Gc9+g8+ug0HyISWP
	 m9S3eleOOToqMCLN6s0NxYae4EBdt0JqtijbJfh+4tn54QRHQzby/uFZMlukJD0yO5
	 1LvCDxHdei3qm/pg+BsmkQySjDIvSahCZHL0g1fIR8Z0hkNLCHBr8SQcRpkqgTpBnI
	 C3dphpcVuwhhPLeDfUKe2hzUQWRB6xhmKgF12P37YmOr1llbNSShcvjU744oJNyFs1
	 2knL+Ksxwn7u6p11QRRNQ5rzHunXpsqobLjeUge/GSwY+x/GwSOu3eszilXzbe+gH8
	 rBfNisSPiIc3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2943C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967406276.20981.614452375729325731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b31c38b548f3d3f7e6ffcde2929e40a0782240eb43293b89ce74b5fbcabc8a2
Date: Sat, 29 Jun 2024 15:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719674062
