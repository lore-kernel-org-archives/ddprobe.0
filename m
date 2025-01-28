Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 376824430
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738047954; cv=none; b=gW+7/tSCyqdWrbUz176Ncc+xs74kIgYtBY0a0CyWLeMA46CNZ6n/ZxcdFK4mr3ghIfk1KFKDqPSJwzme9Sx9QDDbgaP3a+PwDrrJDYi+xobNTZYn3wcrGK61kcZURkEVQMIUoyc3e1sCtgp7irOA2g1hcUOqkMr0t10rJZZTnXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738047954; c=relaxed/simple;
	bh=ctsrOUt8OIYMEB7vi37ThE8KokBBMFkAQXTwCtOlMJs=;
	h=To:Subject:From:Message-Id:Date; b=h+Ef0rVM7ICBlpV4M7U2WvXFKpOYe5qLAo2sFJV2aoKUPrwvLLrIvQh/RmBdI+oFQx0ePp0IJz6z/H5iUkN8kvFM5dpguEBs/Kb5Y1hn4aSKGT5xCH8hkSzUQkajKQIyiJBcOmEmyzNVnC0ElPs5qDyl9v+48vOtUiUBJATauG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiaXavvX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiaXavvX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF0DC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738047953;
	bh=ctsrOUt8OIYMEB7vi37ThE8KokBBMFkAQXTwCtOlMJs=;
	h=To:Subject:From:Date:From;
	b=WiaXavvXhPsQJL9UfB8H6TR8cpl3zBOYJK10UdZ4m3+jTlr1yYGyQgaqhZpM2ADfS
	 mGx+Sb8Xpr8afqG9wooSOVv15cJ0xDOdZ2firmTvWM+kMDElyemV0qAzyWXnE1HJMh
	 i2VeJZ7S1E7QYJ8YLvCNPqnCx2eVq4l0Oq9MHjIRiW6sxRTG514iSiwcF9rGFS3Pnb
	 cRrnd36VOQiShre+bFJPH237041nqdHXN/ktClrdZ1KWHkUzuCYiSWY/9pId9GMIgL
	 8nJOaL/Ebh69rhEL+LUCjw8PeGFxINpZgLPhfZxPgaO416ZwLAvO4mzDaeD0AQE4te
	 lE83KBw3YHpMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9491DC0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173804795358.695.2703640865949029655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b27b8a2cab431b83409437fb935530ea2cac5fabfeea09b7d179300550ab6307
Date: Tue, 28 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738047953
