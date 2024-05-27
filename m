Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501891667C9
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716848663; cv=none; b=rKUTIa7CtU4vgZO1ZQjQWrg1rCJI0Uki8bcqVrB20GYfNAb8/kT44pEIIpGueA/F4KUA0QFf20EfFzf8AHtU6m5wfV4RyZ6LGHPdZc+Rdpd1Iw7RSRamy/8vckm0GEcu/mrHzcw0RXtF/9V8NcqDWH5pGKUKQpgpobJhbgZdgmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716848663; c=relaxed/simple;
	bh=pDNcsfmZ9up3rc//9ez/JoVe63ne18IXsKAtoaJBgqs=;
	h=To:Subject:From:Message-Id:Date; b=nuNdFUcGN0zLTLoNc47t1CI9khCoaEKCrTRUwHRZfUfG4ykaJDs4+sVoG1DS3SVbUAwaI4HlniqQNxIc0UNmoVCpfhxO3Nm2bI1n5rQVcGNUNA+r+7tCE4gLm/kPB3Bv/Hwve/COqukSCZixpASIWimQSerI0stKF2SEIBMVJAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mlevOnjj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mlevOnjj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D62E0C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716848662;
	bh=pDNcsfmZ9up3rc//9ez/JoVe63ne18IXsKAtoaJBgqs=;
	h=To:Subject:From:Date:From;
	b=mlevOnjjBhB9InGVUY/ABuABngJLGL8+m1xwjgIPoPrK4oIzEiYDp9UnFu17jFqtl
	 FLgUjSwojP8WFNEt83lrXOp3ievVX1W9kGhHmhOx9C4ddDO4dEbuNel72/XtJY2jhv
	 l+5Ae/xIJ+K6ajlcBRrOq6bEtfMxwjX75zYcZqmvIAAh1jJki0pSwuT1qzOkpvhzC3
	 VV0Bf09OieHZtoohXRiL2qhxWsSbesWOk51DtCLBaY2t0SDaiBER4Pc1v6HJlxl6Ql
	 r+A1eUc1rjsJpmrB4ridb64Glaz3Xo9Zxkq8X+NoAsXenNB3ozIM+S+dxeYOf+mDFo
	 nHZRkSEgw7pjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE26AC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 22:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171684866276.30888.13374086962727586563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 858fd517a47ebf98e33ba897aa85d89a72131de3e76dce02ab46e6b112834739
Date: Mon, 27 May 2024 22:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716848662
