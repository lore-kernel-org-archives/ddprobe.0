Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FD6F2CA7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719978323; cv=none; b=E/zK9dOQR8n/ojwSMfPSAcGXkbK6ZVOLjMvK+I3UFl3B/lKv92ZOnLDe5sWPvNaeU9rabx56AfaNTeu6IESMgljZNiRg7Q5fD+2axJdNrnqN86XJtyCprkhEdfiO6JrendnV3Dkmkj8GAV4kEpY57d8i035emGIkjY/bKYPbGEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719978323; c=relaxed/simple;
	bh=QNQTI6VcpY2oWCT4m7xs5qgVbp00YRkS6ldHGcccabc=;
	h=To:Subject:From:Message-Id:Date; b=hl7SPw4/YzHsv3TrfVrWegOv1a03ZtDdSul/xr625sF1yp23LbI2gJMmncIhvfHb8DYBMW5+oHejaWgnOHklczhjB19ReGZb1Pd61f5eCIjGMZcR3jv3Xloq3WYRv8lDDoOzwLh/zAqRJYm1mW4y5IOY3vGvv2oL05P9xBpao7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKtrCPe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKtrCPe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE74EC32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719978322;
	bh=QNQTI6VcpY2oWCT4m7xs5qgVbp00YRkS6ldHGcccabc=;
	h=To:Subject:From:Date:From;
	b=hKtrCPe1/vbaPSF69Z3d+yImdUc9TkwyFF/JwvbmAbW+GNCyFlRBi0ufNwc+E/tUY
	 KkZRwBllobllZ/pgQ5yUYoVn50sUmHE+2/Ob1VvMUCrF4o+F5hYNTTBSNQ8qH98Ixb
	 jFOBB65wXbmnrPs6Svj3Pdo/FGOrrKOGe6HoqPtfkkD9ZPMj/z2MLDMP1oU+BgonHY
	 qYIjBSJ8dg+XpyZnuJY6Ju3C1QF7FmUkd9pU2+kRjXWXFPLe5VPKUVOp5XSs40EPjG
	 EVyefp7mmbWUEbFHst6hV1KSGCTaoZZhSSrkkrNdn9ipysoIBW1YlreZQYXZfG9kID
	 Su3mQEePAq35g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC7E9C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 03:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997832282.17957.3682820494671188093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98049ea99504035223e1681445f13cc8ff039c6fe7ae9d535cb0265e3f973fc8
Date: Wed, 03 Jul 2024 03:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719978322
