Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3179B14D430
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732912554; cv=none; b=L0Souh8+4rIxY12woS0yZx3ksYNhR9OmaOsqOhjXcnQ85j1CssB+E/3gwUXsANRcwhCEsXTHD/mhFX+FZy5UZZdtNiPmhibRTTGm9V2kToiO38TVVgGvSFuGuoHFPIC/N9Yp0cSkPmA2JbNO/PafOSBywLejf575p0xVpjs+UXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732912554; c=relaxed/simple;
	bh=WgGBPWVpTxWEdzS3pbKlqKZs6Wnm+yeYXTIt2SiGU5w=;
	h=To:Subject:From:Message-Id:Date; b=plvlnQywdZsFzK+7XciE1jxxG2Jeh//yzf+ZTMPNt1KgyRJ7y1co5c8WRgAXmPlYwPG3xvVPABZQB8ND1iRup+rKZ1MtlTSZHWwCflbik8WXHpixsqdybRu5OkR/HKqoVaZ1ETZt43kifHCycxspiqQAt1OqfCEmc1wX9hh5VB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1Cnyfzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1Cnyfzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07AAC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732912553;
	bh=WgGBPWVpTxWEdzS3pbKlqKZs6Wnm+yeYXTIt2SiGU5w=;
	h=To:Subject:From:Date:From;
	b=h1CnyfzzvADSl2u5Z6wPBDZq/JzEctBCaOCMY3zabXzC/xNQloQiKEgHpIMT7Ocer
	 EvUjuZHwAOpPKE4Qg7zN+ff9jCxzPpcGHXWQLTwava7NhtHhp8lmpbLXqHZVDuZ64N
	 lVJzAlRuwGvPfknH0GvgeGBTPhKx6+g+QeJLKgHI8mdnI22O6P4CruoORKn+VyqwFt
	 x5Fj7Z7jd07uFS4a40ejr759SwW8omPLofEubm2YV5kiVCizSvGXqAYBqTj5jzYIth
	 qL4vbNx9aEPs6JGS1jN/LxDB6BKTieh7PYFUZjegWIS87plAIT0gXRN2V7L1K0MHEw
	 DVjZ/0tvBWwmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991D2D729FD
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291255359.10778.5217407827877913225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fd033711622345740914605f9ba00d512923ae0fef952128210747220d35f56
Date: Fri, 29 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732912553
