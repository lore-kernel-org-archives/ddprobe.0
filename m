Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8C94C6D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775969254; cv=none; b=Y7ExA2sNHccTjZ6X6P9LDfHoso0A7G0gyFs0Vo7DjibRIrtWk0ZsSO/WhU59yuCvmwOI4qRkBk0SFjdwAsfPsoyoBJQAvDsDkyBySLaWoar1SXiVVQ6X+fYVFNoiCQRsRxhfV40ZprvUo48s/rFiMJOJlHhvRsnFaC7zt7gk7L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775969254; c=relaxed/simple;
	bh=1vA3puf+iFTUWEzMbrQApni/zorqbqkyvtMdDVfmaMY=;
	h=To:Subject:From:Message-Id:Date; b=ir3ttklTNzQexR/ea5cX8VA2APXdjaonP2MYpW80wAPkEmsi9DUk6X4AjZE6hDP+AJuo0YI1se3N9O1fsGc7KX0938S215yZpAsryujFF+tp87NgKjNYZC3nMezmSeEqlfPK5PCdEQPbykkOKvMKks17XwUNjDFs/d2uRffZf48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dKYworpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dKYworpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6132C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775969253;
	bh=1vA3puf+iFTUWEzMbrQApni/zorqbqkyvtMdDVfmaMY=;
	h=To:Subject:From:Date:From;
	b=dKYworpGyNV5FoY+hc1INCuzQVG/D+A4n7m6SNfwVY8mv6L95TkXkgI8Q8Yt1vowK
	 EvjMbExYnaiQHUPaWzsgNyVvYfQKBYxMk9yC5YbTQPKvh3l1yhUcrK0tG2CIu3ihZa
	 gJ2HmcMqUQUtU2IDy1kTYLYZI1pSCXm4zGgOXLnaT49WakZ3xJqldOVX5panxyCsFR
	 2EWRJG6XBxUiiCfBqWmTjRi/1tWKmvLVOQIzKxOJy4YWrUaokvQqsOcCaP+cJZvyLU
	 noQvROza0v4veS+6+nhKvMqydgrRBJ/cDZSjPGUPzL3IFoZMY1DwThtEUpuBNbi9Oj
	 RIPPIKtIUxA5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF389F3ED6D
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596925369.14818.5649349038265896727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afb0645e25ac0e6435463ec675783e5336c95f9ee4f4046c5c155666274a6ae6
Date: Sun, 12 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775969253
