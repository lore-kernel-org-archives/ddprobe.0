Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34DD3EEAA
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745917794; cv=none; b=T0H3v4XHvbhogQyST0wM13czAC+r6EHl3D3xhGW/YcT1Fp3Qwl1z2/Lk/yiFc/YtKLg2hDevxpmZSIErR+zunRAW3B/xWS14vbaE2mAEWyRe/1sqVAwZNCeFmGaRrFhdb6l+LfFWAlS8zrc0ebQRGWegUv0qOi9r9jnDaXGzw6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745917794; c=relaxed/simple;
	bh=PVWGlOGoDFPcIJ4vtl/pIyUjf2gXle+8yO3Yp0+UK74=;
	h=To:Subject:From:Message-Id:Date; b=FcEvCjzk7NLTkw4HTJzzTI8MXexi9AH0EVU6k0VkW/heq8pDvJw238loTBiEBu6BfWmH3Bl5rq+JXR1dTzlP1YsefdNHwHz3Eiu7KTekx7dNq/rqA8tmQvuiNe5gMIPo+0fsJIn32RyzEsAlc4vJ36nWc7QLg/3n6+dWKdIjB2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5WmdG/N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5WmdG/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A11C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745917793;
	bh=PVWGlOGoDFPcIJ4vtl/pIyUjf2gXle+8yO3Yp0+UK74=;
	h=To:Subject:From:Date:From;
	b=j5WmdG/N1G60NF1ZCY2rtKmhfnCuVA73C5rPwZ+/G/FQExeQrHCxHz9lgiaqARy/B
	 4RyCMQasSsvJOkLtuAmxSSMs4XW/oKjP+qd3ezE+TD4fytUYkHuaC1TqgRwaHDEyPo
	 izIAWjtV26okg2sWuD58yTO2qsKfmaStH9dVxk2eUbQkW1Iw5dQlKJCR33yw12hC66
	 N6JL+c8LaFFpuTowkMmkz0crieVRSCHeSIE0kyGLdMEZyRE3MBl194x+2d1KQcalxU
	 2qVT3VZjUa/b7a03X3hBOEqBEVI6nEAe54qvoZ0C9RPf+mrDS4TN35GVl+30HTkpHb
	 +BPcD2lu8yWKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A6C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174591779357.30001.13299721776373450842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af66d3bc3cd2463baccea2c5134b73ebdd5a66d238adf699948201708577166c
Date: Tue, 29 Apr 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745917793
