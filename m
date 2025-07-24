Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162751863E
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753333794; cv=none; b=nZv46mwsQaQXLCR4T26A8ftunZUw7Jon6XdoEOLKTVUmTKzMniFz/zfz7HGpqRuioVrviN3r1j0CvoGfnEtxoIwxokyzg4m2cy/nQYJCRCpQq61zqQXY5XI362OIWaHWFJpid6EaSC8TOui+TbFCGgXVI+4FKfsZd3Bnv3ZprL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753333794; c=relaxed/simple;
	bh=A3OGJuhDongu2TVajp4K3Sdgvyvv2sMS0yvfmY0w5JA=;
	h=To:Subject:From:Message-Id:Date; b=sZV/VGnypkxVJ+bT0lYqnktSP0DOHikJDbVFDf3kM+yA7GG5JKuBTbMtvDe6l6xTXNVpu1oIv3Il2JOOwHQ2D8zzjrVcttKpqQc4u85jHWF0OkbXhMxl+cEfG0HLhk/5eqvv+JFPuhxKaL1zQKKDq8TqkJznk9M5mzO+qGI27jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOAY/Yr8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOAY/Yr8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EF5C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753333793;
	bh=A3OGJuhDongu2TVajp4K3Sdgvyvv2sMS0yvfmY0w5JA=;
	h=To:Subject:From:Date:From;
	b=aOAY/Yr8o9R7ekGOCDSE5Su0jZkTD9hnvQlaU+6ooswJZlcCXcpRSXh2BdivJMA9z
	 vxrWZ/ayqrFiWFEgdwQEN0SfiUZ27lSq/1NC3RW/DrMqy2jHmOaILkqBeyIxTW+hlY
	 Z2DI1sWipH96Cat8IhRYOxa1+jWwRZvHgXeLFIXKWYv5q90/GYYN0Gmpyk2dcrP9LA
	 hWnIRlDz5R8mAnrltdPxlqZYXiRJP1tshzaOLSK+Q79S/Q9CQq+TDjzfLuMpTg0nAA
	 vsezCOyoSjXegJaSCgySfC0sWhrNrPfdlSRkbewK4p0jcbHXfw+bB2vvQ9YL7Xy8et
	 +a8SVreJyIOKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C3C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175333379357.13193.2996084366781700340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76b4ea0f1e333701ea64c2d031e67c683f0f4d5ab2ffa7977bfeb0bb4f7593c5
Date: Thu, 24 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753333793
