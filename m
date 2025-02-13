Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4871028A2A5
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 17:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739466534; cv=none; b=uZpF/0ZnsxyTG/hW0iZ2tRdZAWC1eXC+u+xq2H7vRgUWdRlFgF3ipA4IneAOHCO085NnGBq7sLnVZjEo2zJixHrsJp5KE2cLlfbqe9O3B4u0eBIcsrau5VMzf+0cpl52lPv2v81c3FWCnAaVbPUrOs8yW1k+VF5JqdobdW1DX94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739466534; c=relaxed/simple;
	bh=dmA8I9X3ZlDKO30i6yURaKpEcU100uZ9FLLIZUpvt3Y=;
	h=To:Subject:From:Message-Id:Date; b=ioz2I00bHL0o5EL3k2czY+ZsuFox1DMHFiPI0EAj4kr04LQj4+hQbpwVaNY7MhMSpzJVT6U4LJ7ajAviNZGBLdfL00iC8mHKNFrgL69opnRN/f0/Ndg/QtnGZ67yZYweentqXZN+lqJ0rruYf6Esad3RSfWm9dQHwDHwZ2tyG+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RBmBuUs4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RBmBuUs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B15CAC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739466533;
	bh=dmA8I9X3ZlDKO30i6yURaKpEcU100uZ9FLLIZUpvt3Y=;
	h=To:Subject:From:Date:From;
	b=RBmBuUs4aaCCsjRj/jVhQEVAgYRAIBLYJbjNirZg3NMkd2efHU+18uM0zDwSii2ut
	 KQqD+v2DGcy0JUSY6u7tnJH/m/kvM3dFkNAqnSrSiSmi6lb/MRK0oejGfDGnqnj0ZW
	 kQ1PUtxyUDvN8BJmpUKFRDCibpbpCN+ApD8hIwZcLCUSdlp8AoSJbP5zYaQmLSjrKw
	 e5fvsu+u5QYmTcRvFPbacEgB4W2yBu+iNhqdm4wxa2uIbPw1ZG8bR/zCs5VVBbcuj7
	 ffyoMkz60Z8lIoBCMBJ+59QPGcQuN8V8tLp6fJ8XCunlotxiF+rSNQn0lL7PRoVWUb
	 mSd5S9vxF5R/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A262FC021A4
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 17:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173946653365.2689.2156680428193869789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8ec72b6ee6dd3018258c2356833db08edfbb559e16440603253c3ba6dca5397
Date: Thu, 13 Feb 2025 17:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739466533
