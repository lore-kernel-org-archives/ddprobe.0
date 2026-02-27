Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE57D2BE7DB
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772172293; cv=none; b=VHif7osz6H5Y866IqILYPtpg79uCHxuEhwdYdMyKgrzP5BuwMe0Dsx72NS9Ykx4BNkwmK5b666U3Ole7Ve5AVgW4vCNXKWMXIPcnZVT6YnYIJZ6ubfqP+qzqPKzwROGtYQoF+5092UAweRQan9mgA9Yawr87khezGbmvdzHSa0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772172293; c=relaxed/simple;
	bh=xAuZLt1PdqvqtepdWdp8PIHu+OTZ+4spaEk0No+10SE=;
	h=To:Subject:From:Message-Id:Date; b=H8fhGEq11BQ8VGwoMM0pb71Dby03P5p6affgjhTB0DnS3MAV1ofkzBBRvl9D+d6O6NyYEAFBLm5dI+jS35MoxF0C24mSkCWzVjZfnUgYMZFzqAh3GJqqnNik46/Y5ANgjgU6hgOXg0JsuEzSt+R7lvMB5oZDHnvrSaXbyawcyuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SnHtXpkj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SnHtXpkj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F8CC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772172293;
	bh=xAuZLt1PdqvqtepdWdp8PIHu+OTZ+4spaEk0No+10SE=;
	h=To:Subject:From:Date:From;
	b=SnHtXpkjGwX7xtIpAIoBa2g/e9rLuuXEL57c+8X7QbUnNWuh7RHle1+BvOiA2oyZq
	 0Z7aGs28/jMCgil08Ebdz01XTyTgaDpLsjvMPEJrq9jb7ihA19TlG6AhN2CIOxHT7U
	 ESP18D+eadBcAT3rwVTJQRQ8I/VpaD06VKU9Jsc9UjxLQmE6+rbrNy31pGW+Zub1qx
	 dCHXc6CAEl736Gnt3uhzzbxsI3pp1cKC5GjZwYSOMJ+I6//mwa6k4D8pTm/+k1voyq
	 KwNDM4sW4cS08TaN5YHCPqCnGhcH3HFgc/lOw2fXtNa7rZKduJNwkC47hGF1l6KXHW
	 Jwp2w+FSZmHPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912E1FD9E3D
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177217229358.27789.6685642659810012261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f042bdd6249da96ff067e109a25c099800e60c642773544516811982cbb51b5
Date: Fri, 27 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772172293
