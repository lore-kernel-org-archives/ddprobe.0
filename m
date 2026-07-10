Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409DA282F34
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783707514; cv=none; b=XOhEI7zApsOOqQZsofoSrtLNNzdvNyuMpt+pa9kbNXQiKTVka4fXs/6IwgiiQ9m/qFKxTnVur7C9ejvcCgJxCSgDbmnk5xhOo8+OFMxV7SQVyo0cXqp/9PC5z9n6hJbpJ4FfUbMwDcW6+BedImC81swaiZJFWjwYw7F3JUpuKQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783707514; c=relaxed/simple;
	bh=zM3VZZzxMSqbm+1PVjpnP5oilc55WxmH4qMv7tr04k8=;
	h=To:Subject:From:Message-Id:Date; b=Cpy9Ogoc2DMF+6K4t/XYJUMFstb9kLjN2EWgUogjrhvNq84Yz/aPtjAMxjYxE8SwJTBNTnKBSL92hTbAtPsgfbdTIX3ap/v5z690MfmUEb0aaXXV3iOBfxwYygHICKAZa+OXmnyKeeCyA1P9k+qCfG4Do3blFfTS/AsXvVTZsdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmUVtvQQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmUVtvQQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2E65C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783707513;
	bh=zM3VZZzxMSqbm+1PVjpnP5oilc55WxmH4qMv7tr04k8=;
	h=To:Subject:From:Date:From;
	b=pmUVtvQQED2oZniLQ4Zrk0wWcTHEF8RIulULAvG2+45Z6TPPNsAxX8KzTomYV7Gdd
	 Z/9bj+HH9ZkSRimvRyjasNnI+Z/ChUSXSppYsKq4VrHNMAX8b94jvo9FyhcigzMYPK
	 RO5p5SwlsC+3tAyI4dm18kE++B4zYay7JZsUcfbv7AEu8X/WW5qE4KgRtGsT1Orluc
	 glDORjl57efcmWAcDnOcResvJVZWy3A0oERgTYCn+MdwO0JxZ9rDvAdFyDQsilFQJk
	 gHeD3TOO4Pg+h0GOVWAqMthKokj7eqcO1I3Wb+fKyh8+kxWO1dYjdBYy3hFWltPfC7
	 zIcWpPNm4lwWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3DEC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370751368.12219.6456804396508373230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d012d3f2980c93e0175317daa762e67df2e36accc5bc4d2d9f64b90721088ef
Date: Fri, 10 Jul 2026 18:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783707513
