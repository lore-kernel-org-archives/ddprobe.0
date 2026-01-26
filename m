Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126F529CE9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769406834; cv=none; b=k3166qSFoLjL3s61rUGQU5vGHqhu4WGeiePIFX8t0J2gJLc87Fy53mnGouR19FwPgObwhxkwiUGdgaEFUuIVMFQjpK8baVF2gqsE0QMcAJvfwR3+zCUX/d5S43TcYqf8XRmGwppNrHN/f6Ujz5xmC1htJFdM/7zTxAXzAEXThAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769406834; c=relaxed/simple;
	bh=wNhP/zBj33MFuxm/AqAP4xlh+beB0CsGMlRknD6tZKo=;
	h=To:Subject:From:Message-Id:Date; b=HHtm+lB1KyPQmLagFeEzX4J4pWfhWpkMDxHbXP/vls6+abZhXTeQdYUZtwfcKqrqkxPPCwrFQNjw08/Iwd7JYN9Dj4EXsu8tWIxOzpW5W9BNMTRwTpRog+S+xMTtvCkv4uCPxad/1CTFWqsN/DTr10P4ineUozuWNOvaWrCorZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfhwO8YJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfhwO8YJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A3BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769406833;
	bh=wNhP/zBj33MFuxm/AqAP4xlh+beB0CsGMlRknD6tZKo=;
	h=To:Subject:From:Date:From;
	b=cfhwO8YJoKf68zaVcVFTcK2psZRKioT1bHyNKvfJdXHVZxPiNNvGPerkWaO+cAkBE
	 O6sxNbT3vRuqi7wq8HEWQTWxbzQSX7m3R4n6dtgI2yBmixAtNqIvcczehT/bBJbGk3
	 WZ3kD74qOsXg54ud9q+lw+QE8Qolh9sDfTQZhTGzOxgeFj52+L+WXucRBLLv8b97Bx
	 p6pmz3resobt+JrWWi7qTkZ5XUol/WCx3JjguA4MiP+Mg/zAGtOFl2gGoA8V8J8/I2
	 e+wTHEZOwuzX3e1g/D2LUqkmIx8p5C+5BN5dAxekPfM/wM1ItEXXpn/mGBRhkILomE
	 HDOjjbrYzfZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960AFC88E4A
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940683358.1566.12386911741322314809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cc66f508281206638e54b6844879eb0b8bf8a65cb66e621d01a6f89555a63e9
Date: Mon, 26 Jan 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769406833
