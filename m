Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37349770FE
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760248794; cv=none; b=WOOP67/84YJux0j0oyv5RyfifSxdP+lVhH0av8qAh0LK+oQIqg1xRQKXyeo5rT7IFE7t6IAQetay+mbn1NkEpeqbkSQJm73cC2srRjmX/Yyp+VNhb6EADQjPJv75GzJdesl5PoM2oKJDM6BgMd/EvRrMeOUCzTVeDtJWVPkSwPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760248794; c=relaxed/simple;
	bh=Rz2LiVJ0XGaRA7qnIozbnp8ERl0VE5y+mj+7bXBtc/M=;
	h=To:Subject:From:Message-Id:Date; b=tIK3VAEEZM95d+DpofLvg/1womPYU2c1bBZPY30CdIwucx7mc1XwUh/H2arHukaCu5iko2/60rMVPnmEo6k3XCkGzo2/FM+RqrWwVAeuDx6+tkG1/gFymFBdG8xlFguWctJ6OMTjmJN8WdzMWORLrUe083/vR/OWVpCncaCdi2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkYXEOer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkYXEOer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCD1C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760248793;
	bh=Rz2LiVJ0XGaRA7qnIozbnp8ERl0VE5y+mj+7bXBtc/M=;
	h=To:Subject:From:Date:From;
	b=WkYXEOerLn87RKJQf8oCZfa/rYXi9siUq0iAKFCBsKSv5IH2ZB4Vorj0Qiez1YF2S
	 l8htBRG//B9XvTsNt/NsknEre4hEt5reQH4pPUHM7pg2v+cLC4Smhl3gUnTlVSRLB2
	 41NAAfD36PHPuk5af7boVjVzhyIjsrxTzNUlPiqsqlyKPWg780JSyg6B0CoC2oyIS3
	 DjEzkXDiQvm4uf60z5bmdkGLFz23eN864yT7Hb+Byk0ooP+9vFvsZCdhMWVn+LWFL6
	 Ypyyo64ai9m8ruwh918MHf/EoOnwVVw2guCpwrT9xN44nc1pWmwxATmOXV3SP18kTg
	 mxSgiBVtUzaew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF9DCCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176024879361.9006.14329074677400096119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b1d9035e3aa030c07ba7bb703fc9d80d9e766489357cdee50591d398dcc4ef6
Date: Sun, 12 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760248793
