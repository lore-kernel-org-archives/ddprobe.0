Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA961836EF
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712786297; cv=none; b=TktUjGwITajySE4IqljnqzCS3dsvO0wnXikmmCEbY1w16xqtu4BQwA7bVbXaPCdszfKbGng5csnOesTOHsqTzSYkpVjp2pvjXOl4opzBve42J5LhmhUJVoyGlGNFkrGzKqKTjjlJUeD8FR1QG/5nsR3DHxC2vsySy8LGKY9MlHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712786297; c=relaxed/simple;
	bh=KGku49RdmIUYvbMtdux3AfBJwD28R74HHnBV+bWxW3Y=;
	h=To:Subject:From:Message-Id:Date; b=oWVjCdWskF+Wx2XpZV3t5o9GU5I2quwckgIm4fIy3tY+uW4LcNv5KXj69p7DyZ/+c3SmUA9qBDWw4T2BnprwHHcbXt7L48pzn0KEWmK4Z+uxZQYFDTq/UDUFjCJV7xAojugIXfRkAwn5nS2PZPjdBPtpJIYL8zu1pqR18t2TucE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rqYcAx8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rqYcAx8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AD04C433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712786296;
	bh=KGku49RdmIUYvbMtdux3AfBJwD28R74HHnBV+bWxW3Y=;
	h=To:Subject:From:Date:From;
	b=rqYcAx8M0lW6gIT1fdLx5BcOXcfmO8VS3LB9EiPe+4GHTg/ZRIxnaO6Ck5cQs3mY/
	 Ivu6aY6WXivdyHo7960t/1b/Qtrm37YePwllk4EbvqezF/233wyoQ3yDBOSAGXNGUa
	 MLATOV9aogF6IOt7VZms/lTHWVMZP3DxdM1AravTe4TRSbns2IDTA5QGIA0XKx8mWo
	 GHyXbESmjnLYJKMVRbAjs3wuF8lurJK4OCgYTxqv7jY6hxnqGqzxENQ4m+r1QLJFoy
	 F6p76RLRtgLbR0tFdrIF3ljCT9BOdiGfVP9Mou+W9bIJHzYkERn4VK2gdhD4WefkgF
	 oD6/Bwx6NMVTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BEFCD128A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171278629641.25460.1857049606172147566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d53e70d6645982da8f0be28daf8b70d887e77c04ddede920ae6f8fae322b28
Date: Wed, 10 Apr 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712786296
