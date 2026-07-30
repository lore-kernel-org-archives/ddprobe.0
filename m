Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4436833263F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785375034; cv=none; b=hpjp6lHUJtpUC/LGbeYLuIX3HeLeftGlWZBfl3V3t/KZYvEOn3spwJ71rrkRvLc5ZQmEFUgVSVNmdpbt53yndlG5Z3Y1Xqr7Ych7wv6Q1nmvi63hFqvLnIYXBm/Wm825ZrOZ/6rPoBHPqw+sYPHWMnOk1gwSAB6fxe/3266WBws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785375034; c=relaxed/simple;
	bh=2JfGeoLJh9xjATGaOhI5UMy03fFCgPfgQFC1IaT0uR0=;
	h=To:Subject:From:Message-Id:Date; b=ZTTbZ869CHX+1JPU0YaROd1IM7qC+9M6v/ntBgJXtmVQaqwWt7yYWb2XIMPHfHRMjLsgSREcSyBYkAGnSDzVgjkIDPlSy/ew77Me9a7km55p0vlAwuufZ4gR24ONvkOuBVtV+K0mJn+We7LBzhp11zOjN+5Ced1FViW5Jbs8zjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SPlLRmAx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SPlLRmAx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD58C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785375033;
	bh=2JfGeoLJh9xjATGaOhI5UMy03fFCgPfgQFC1IaT0uR0=;
	h=To:Subject:From:Date:From;
	b=SPlLRmAxDHhBCnpAq3ce0yG+Rohc48av7aeP7sht5U1unYNwWDNdkntrY0rFq4RQo
	 EiX4Y4cQXn2vKgbHtsFdlL+hM0Kh4gqh1PAThZeLLhx7qpy8Iw3ZUHGjsWGOx1yS5Y
	 hkdrIo9vSoLYCGQEFRiloa9h+a1h0OyWIb568ZL3vJ1cGnmzq2j2cUllZaTNsrCHB1
	 OCETG+Lf/fgb/EYmCHoxyz4rxnHdm09VFkjEc0MjSK01GXUZjkhUMS/VQegT6GKknS
	 YRUANPLplFM1SWDIInwmCuI0ojuH3em2Nbp2gd7sPPM3MGnXCxb8yR814wiLKyiDew
	 5iUmbm4Q9fHJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AE8C53200
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537503368.32658.4935340274105702475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 428ada00edc2c7041d0f11ee824e7e28701f000811c9a774c4bb8a8f8a8a4d8a
Date: Thu, 30 Jul 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785375033
