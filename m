Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5202F156F2B
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 06:30:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713940223; cv=none; b=qJ0e7TomvWx1DTuWVeFhJDva0ZeN9wl2+WVbGjyDI8cX1m/tiP9h1HjfwB+Zc6y51APruDtZhN3V9E7/e3oZDMCF43pX8Syw1ZRd+zkMpH/4QSrRJedyuAaD7GWXUdtvJphWVjO2zqLWTXcpQgCj5RgVWJygGjD4NJjX3PYRmwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713940223; c=relaxed/simple;
	bh=WdHhzBi98pY1J0TOHpt8lQvQmv1C/7OSLDCGAzo67Wk=;
	h=To:Subject:From:Message-Id:Date; b=oXCK7JVIfKWMnB6izI/0hc8U7GzxBpBFpxOUpS/z/5jzXby02cOl1y471YQJYh7jkcs7rtRYYRKZkwLDJVxBPTDCNu2NYlK6bMQO6YrY4IbiVDplQ7lYtm/QEN1wLkdsN1kThucWEYcQ4K9SYgD7uIGaqUd85x+wwo3AZimZu90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbYhEWR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbYhEWR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AA1C113CE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 06:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713940222;
	bh=WdHhzBi98pY1J0TOHpt8lQvQmv1C/7OSLDCGAzo67Wk=;
	h=To:Subject:From:Date:From;
	b=qbYhEWR917zOTx1rjB6L8Gd65Mrri0LT1RTCgi9gKi0RnrwVZ/fCqRKGqlOo4g5yX
	 32nGDZov/0P6T3byKkuyfqddZ+gRxTVfoaBSA33iOCvRG8d2LGqsVcHqoxwCSGbmDg
	 jo75rVNTO6W66rnMYei+GIUKfBu4TiwmuFUXmiSS/64Ampx94MWqn4jea8s/8EL4Th
	 3mVLxspk/ZQhPhYTc5HCjEZrHoJABpVgMT87EoLeg/vUynI4waBo66fZTYXQQd9SF2
	 q5kp6Y/ZZ7Zrcze4uVnthr1NLcBTIDql7PxkBdVCbj1iV3em5xXYI864RjgKDQjw20
	 0rp1FYKAuPk0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C60BCC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 06:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171394022279.24996.9214277633597094517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f488edb2418629e07ecf520d520c14a3e4f3d0f8c97a3b296ed93e3cb3d5ad
Date: Wed, 24 Apr 2024 06:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713940222
