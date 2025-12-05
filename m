Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2B3826E179
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764904973; cv=none; b=aKNshbMUcftKO41VMK9lNSSXPLAaxgMrgK34YUBlJOniqCoAkiaKQmvyfduO/0+2WeWcnXw0YsCzLfRKgRlQPB1PMd5gYycj5mc6CH62/dSNEIkPeqYSDj0XSo2XKQj4aNajlweooF3+yh8oEuYrd7f6H8N1dezRGyKfSBUHFKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764904973; c=relaxed/simple;
	bh=mr3Ho9Iu77WkVNrsSRZws5ofpoRH5TbLNZWTXIDMVpk=;
	h=To:Subject:From:Message-Id:Date; b=OFI9yfU7LptcQ4/7ulh+kjP+FmVjFDtVAJkp9zYeEfCsRsFfbWgHckF2sfRRxMgHngf155D4nd7MDOJi0Cpv0TOgFrbhUEP3DzxxV549tfPh6/IeX89y0Zil78gQOSlr7guMzTfC5Gd/c6IS1sX7T+8GHcXk0Tlo6mjnPL9uXOY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndW33IwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndW33IwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CADC116D0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764904973;
	bh=mr3Ho9Iu77WkVNrsSRZws5ofpoRH5TbLNZWTXIDMVpk=;
	h=To:Subject:From:Date:From;
	b=ndW33IwSQeeBz05xs9GpT6O0YSVP0D3/dpfTFD0isUz2+6x1RSOHhyALZv+9HFFpI
	 PAGmY75sAdw5Eocgpay0DsX1+1Fr6x81G8JumthxY6OJjdeYVcFgo18yUGK8O1Y59A
	 4BtRY7H4MU+TYGbuF6LodTCoot0d9wZUUb9jgzanOdutudlJ5ll3324BxwQQmGr8J1
	 qh7324/KaJNTRBFn4eYdZC7y3OrQHjvOPLM5zdrwSaSzNTJW3wJopWGxOUamdAJn30
	 FxBqoqq+LUAbdVyqzAUy6HNzrwj88uHdjHeQr+n8roFVCWKMGgf/vJrIlRE2vwcSvh
	 Ecfgk50WHLPtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91958D2CE13
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176490497358.30066.16002569546101330776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12f1d6716412441e3cec660dbde0faf3a1d2e105a29922bb9e30d80a92b2a033
Date: Fri, 05 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764904973
