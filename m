Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2193D185B50
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727432154; cv=none; b=ReqK5OnIJQ+zv6ND1WwdcWAEVbQ/eafdXdyEKMBP0uuvF9EZ9FbRbO0yKZbsvs+8dEWWbQcWTM9Sk2Ico1k1iX4fd1MWxewFQwzTpTC58De+jE0Ad9VynVXvVnrPar1wQ1NGJETDcOUIt94L/YPXEosVP093BGTA68uCbJwiSTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727432154; c=relaxed/simple;
	bh=ufbFWvxfzVTFWdZWcdR7ZaNaMAEglkzTlKd3XhMV+g4=;
	h=To:Subject:From:Message-Id:Date; b=RGOQmyrRSarK1XRB/nhn+gP1XrXMulcvj0pLL1ZAia9MmGckfwX5VXlp8fT9vbXPnDYHlx90/SpSxcvmUVVOw+4LQApQGCQJaaAr6FoeGBmJumHferrFDfnfcZKzpGoqfeO3OHvtQhEN6Y23pMfHpQ39ZQaapRSCsBZffjd9fDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdQuZqZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdQuZqZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3052C4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727432153;
	bh=ufbFWvxfzVTFWdZWcdR7ZaNaMAEglkzTlKd3XhMV+g4=;
	h=To:Subject:From:Date:From;
	b=pdQuZqZOmy9GNOJd/38mxz4GxJazCPaWSMeoPdA7mIufsBmhLQruuqAnd6cyzrnlA
	 3shFcWnScEgP5DRW01i2TLEc0xrwkD7+Ia+yCsGYFB8tysEi8hR/2o7Fe1xRyeh7OY
	 kXShkazFCaRSDy9xRSxwK5D2yATLvhUvTWfw5ZuYrgllC1gt6LajcIW0iUwGm/ATqP
	 36mZXQZBQmgSf6crEs3W+9GZbqU9fAgdh2tdHObE28Wi+LJp/7XGqomqyZyzXn4UGT
	 e7oizhf9D5GsdoI3+DC2BVrXcPfcnxh89lEDJHn3MWaeow/+laUG/Wb9/jtqTgapdh
	 ZoN/ldCnogYdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F08FCEBF8E
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172743215357.1144.14098245166776685167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c08d8c5d99a8c02ebdbcc3f0307389ed892a5beb847dc0a1aa67c75e3b7a0920
Date: Fri, 27 Sep 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727432153
