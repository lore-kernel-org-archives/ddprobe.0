Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E5944DEC26
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791889234; cv=none; b=E5TnnbzeJR9N6QGwhw1zjtWM1dYHKtY4Nma/Su6fLLmDCDbU9lEE56PdoFKEzOdgAjnH7HNmc+pXrMydUsxuuJTBmFpIh89grKS7ioeoz0lIqMD1XGWKkEZmXCtJNS8e2vUJrTL7B8bUlHdSDjPNfkPA5kY3Hs51BsWwKjDwa4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791889234; c=relaxed/simple;
	bh=73PlxZfm+6OiB1qD6j8oiW5DNsf7byVHG2o30HsZLFk=;
	h=To:Subject:From:Message-Id:Date; b=bQjsWY4YOGiZYqs+7qVOh3QUy15qLi0YAfvK4nIK+1jCuLwan6iz+JVW3c1BWVQoasIEYL3XEgkt8KoRM7H8uW+4HmgqW4bb/29fgQHMUtKK+vup69vz0x31yv2m0BDBI3lIcEV8dY+0+LA4WqkcgzGhjm9DJadqtnVjenomWqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxaVg+YP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxaVg+YP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84F7C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791889233;
	bh=73PlxZfm+6OiB1qD6j8oiW5DNsf7byVHG2o30HsZLFk=;
	h=To:Subject:From:Date:From;
	b=YxaVg+YPHlHIn9RmlEXQqVfWpxocGojp63zyO9r/EavRl6Jkn5d1bfnNiQsD/s8XK
	 TuRMoj0owLwx0Lysv/bfc8SeiJWC3wGa6UM5RJvJWBXBmJLGyDE3uKwfnIU1wczYfj
	 nfiesd0G9ZRbmLh6caFUtUqOrsUVCLpCB3Q8rWYTlYgsf3OiDvTGcy78TMjCL3tW/H
	 rCKUB0yaTWG6Ibk1At8TmuUX2He7Qk6itXT3fZK0sg9p1HV8G8n6k+XmQYvJB/8om2
	 Zo45icydWfhr9o2yIU3pA/Os6+TXEiJe54NqL1Rnq17R0jg4zyDHbLx+D92jZ54vBQ
	 Y00a/sWNC9ZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1378CC6B03
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179188923371.6675.139499640445927835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37307388495d01dd067919b34421017efbc1fb68ce6446331ee756fbc31c52bf
Date: Tue, 13 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791889233
