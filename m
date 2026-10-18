Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33ED5392C2A
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792338034; cv=none; b=rlCRJvio165IddCWjtX0SXlWvJ+jGoamaog0o5ruieJx6WKR9ZKTPU58SI0HUfwfU3L+v9jD+RBSJ0VN8yqRCe3AVkgtkTXKliNaEWHeeZZmeGz1cqxf3tZ6sB1n0gUO/numhB8nXhHw6okaL3vdA5eedqh8JKbGcdFul/S7pDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792338034; c=relaxed/simple;
	bh=PdvLn8g1ox9FvMjiVf8bfzrKunuCeEX/u38j86pQM2c=;
	h=To:Subject:From:Message-Id:Date; b=PNtdr8ekWB/crae16K9ybEiUF+aPF/upGl0VAbDaKpW1jiOUfw0FKIgUz13UIF5XSuwdU8UflFnp7x9Nxgb6h0slsHp1MT9gSqRIOTpi+FlAhdry4QFxhvWzW7cLWh9eweZOdMeicvuFfLgtjawxz0SqpXqU7VC3HcyICdccaLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJrcQwoO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJrcQwoO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8DCC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792338033;
	bh=PdvLn8g1ox9FvMjiVf8bfzrKunuCeEX/u38j86pQM2c=;
	h=To:Subject:From:Date:From;
	b=KJrcQwoOhpOwC0XpTceMKNAdKLwvPpN0i5Nzu9S+lgLhWxv4Jz079x2+N46R3m/90
	 Yt2ZDvsda9y1N4rppb3aEDSvyV4xr6o+2w/B7iiL2Qp9AjQtchsv2Mh5FfVKPlkFHf
	 kit6CYREj1F+HCtRxVu/Hwox9XPQR3uS1KDaJVkVhDSawBgd25zQx7IhHSQkaLXYcU
	 W/bJFN0ecc9Fggi06XQlKuYd62Ecs74GC4qwckyhf2rl65cN08APxiN8svPdv3lVtO
	 b4jW1NOcRQYXlP3/+U8oNVQcx8rcjCjGFEexM/oJ8A9rBYCdebO+Wq6EMpE6ZbmLdb
	 MDxl15IgxuswA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA158CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233803368.30904.1922258515628264038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd1373c495727341106e70dbd586b77f889a90fcdbf97b60256179a835b38505
Date: Sun, 18 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792338033
