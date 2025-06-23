Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C82977111
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750690794; cv=none; b=JBhaYnpDFq0TwqTcPTNc1diJOfuKVO3G4f8+bBRaccSX/eO9vX9Z6Ubhu/+2q6jl0mz0c0CqYcIKg9bGmWajRFUis+PaMbo1ix3McwqpDGezzpKmbeS2y8kQLcZgEatMEIOCLv79CmSmC7xMgGSq+DmFLDKJsbkkVW7LepmsWe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750690794; c=relaxed/simple;
	bh=I4VKQ9xEjqtLhD6SagLFISp80PCFcfAGHmcz0NrUWkg=;
	h=To:Subject:From:Message-Id:Date; b=eef7/RMzfYs6V0sHQgxRqSCn4iYG0qgZQNQx3nXAx8FRSVugObDD6wlV5EbH5CR+fX7qVDYHWacrb6T3agVOGtZL9Er/R2gGG3WGegNFwbDrGOmkUjsda7GHgAIU2o+v4JIcGUZh5dsvwVr6dloE5Q4ZdU/nf0DnWYRSnh6Lnbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzBV2Zbd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzBV2Zbd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F309C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750690793;
	bh=I4VKQ9xEjqtLhD6SagLFISp80PCFcfAGHmcz0NrUWkg=;
	h=To:Subject:From:Date:From;
	b=mzBV2ZbdBFr7qXJNMk4yHJeD7kXxX7RdhvLEImUsnivo8RTGqE0GEkQgY/ZyZSn0T
	 eMyCo1/6E44Y1V3Beyotd4Kjx1abzxmzZz3Ife5BhD0F67KPIGEP30DOCjAyfaKvOu
	 WW0Ub8p5q24o+Nykssff6wcyRelnsNYkJLhgYRPgcBlW1j4nlJ1v6G1ZLwhw4XN8mn
	 rtLACjNEZrt0ls2+0iHnHil7HtijNeZGdeeE94E6yHrN7rwGwgbuKzzFE/glytvls1
	 J0Q09WGnntJgOUT+GHWRB36byC+bOlQu6KOX/0cgLkSRmsbY7XhJLR0am7/VqytixJ
	 ScmazEIXPG60g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90919C7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175069079358.17922.16008551501990588027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1166203bc30d751b672bae5769d37658c90283916e0b3be9b43ae88ab2203813
Date: Mon, 23 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750690793
