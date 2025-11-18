Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A6C30CD88
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763454714; cv=none; b=YK20DjtUR4lhl3RvR3jJUjpTx38eB3F8SljoJYrFdBvqjxmrQIGIe+JZIoNSyBp83T/s+Ej8y0+wcEfT24fPL+aLFs1IK11Oblvmi7s32bI5uTrpe9qmKqGzDT5D6vMOgQt+oUwPKDOKQb9l6w/gRmLTzkk/MgKfADyYKh9OTxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763454714; c=relaxed/simple;
	bh=eZUGiVr13GaN0ZUahFcGH/BOqdrRQUnPDmeBcki9pBc=;
	h=To:Subject:From:Message-Id:Date; b=JZjlJthX9LbRh8S+r2NOJwmDjguI/+L/s5dIhRorABvahAAOqU+nMUO9iJI/4ccp/Hth+HL9lKvK1u9x8UsyePHlJiC3RHOvYeEQiYFFUJiptbp0VSX88CSSrNoveogID4rfYt5d03AOQHdtWFXnS960PVXpKIY5fXh40Llz7UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBaLiZzZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBaLiZzZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B1FC2BCB2
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763454713;
	bh=eZUGiVr13GaN0ZUahFcGH/BOqdrRQUnPDmeBcki9pBc=;
	h=To:Subject:From:Date:From;
	b=QBaLiZzZhvUTP/so3t9GPoqFwa5Q4eJiIxwnnyUAbpPVsFItB0tkjy0J3hAZu1gGN
	 WP/tpC0P5YZZ30MLuS881cndVZCuHbOughLhn0B2HNnFKni24WBVlGBLgPJRJWjrJW
	 3IPI9UR60hPjVANwarbhNAbMb2BNELgHMjXNUw/knB7qr2JtXFNU4yPVnc+5cVUMln
	 djm8hU2/ilI7FnmAllDbn1HhGijTk78pXKzqXj/Fq4CykJkZKkzRAaKQEpySjuv49a
	 91GhH8+vARNiJKAJ/dYaVs0VOHeg4xkKNvK9g2e5jVnD0TyGQfFX8DIWhDQ1R9HPKH
	 t8AfKFNvozgCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917E1CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 08:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345471358.10346.7884736907397532089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d584989c8e170ee94d2cc41e75842dfd4ff040f86f9b09fc440be43eedcdbe9
Date: Tue, 18 Nov 2025 08:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763454713
