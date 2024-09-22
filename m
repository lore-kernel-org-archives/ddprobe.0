Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C993FE55
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727048754; cv=none; b=Cyf4AI6Dn48Xk5e1mQ80nJzF5mlPnRNbgSYiNh/5Jr2eqX5HuwoKF65Toh96vT+e+zaKARzPh6Gr08QNn9zFUv29BnyYTP/18eqP6X/XyNIqOQ+HY4pvI00z25GXSy7m2W2dmyH4eIHpAnyd1BEbELG7Ttwls3LZSOby5DlHKuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727048754; c=relaxed/simple;
	bh=eDMX1XOZsYZc/fdg+rPD6jD+IGWoWiVRfpOhFJHzOvw=;
	h=To:Subject:From:Message-Id:Date; b=aDv/lR5Hhl1Ic5QZdJhlLHEeVYUrZ+yvEIKYkB5EL4gDAuMqz/Uk5jNSWhmAwoBsqxOyFXBQUgWQX3lsThWdYocslzfSkxUxRF31atzuGsrwA+xvhVQrxr44T7TlongSbtNsBuibdE2KfBqMORAbXJGZNzpXEkcaYW1GxbIpX+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQDzau3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQDzau3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD161C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727048753;
	bh=eDMX1XOZsYZc/fdg+rPD6jD+IGWoWiVRfpOhFJHzOvw=;
	h=To:Subject:From:Date:From;
	b=tQDzau3Q2wl0+vglzQr3m2pWhrufCp1JGWgZoI35s6AYedHk9tTyPkAy4dbT4lUoJ
	 y9FcXwWrHIy7BlFLGxlYFwPBTcOcDfScwWhMcf6XJ4KHY2tg9IGgLFF5GcKSq1YePx
	 uT07ZqvmdNQjBlCboQby5AqPucpJAk4WJkYyiUtoZDBxNUZDnEE7wXjfjjJ7RwvI1u
	 YMHWRJoBRHYgWLfGwa4EYpW1hqlnNhqQmOAvItOZgi9G9AL/0ahgB5y+UzRQW3JV2e
	 TaEj1kVecOxrxIGGOxXgdKJSubPrhCvrDcydZ9VVauA5booqHOxcC1qyhvV3J7JZZE
	 Zt3whxIhGlBUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999FCCF9C68
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704875359.26193.17003039135536390181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1370f07dcdff8eb579eea35f1b4d4155f9682e927a12bdfd8ebf39cc2d9b4e
Date: Sun, 22 Sep 2024 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727048753
