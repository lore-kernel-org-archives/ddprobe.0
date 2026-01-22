Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1885E37F109
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769115834; cv=none; b=LXeg+aXf9EDmahvThQAhlT1Ki/BzUqcNiFD3qEiDc4KOmkCupA3MBXtexTylhNQxvPOmO/1di/aG4hJ4UFsx3YdHy2Oz5wq/XdZcL2qonXA34unrSjwJV4XKUxdiahU3dLYYZdApLv8OfF+o1e3QVVBBx8+AHHOy+U6Goyxrp0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769115834; c=relaxed/simple;
	bh=duzsFSWgyT4SrctA+rQ/w0CXfcmiu4v53HArAxTtOq0=;
	h=To:Subject:From:Message-Id:Date; b=aVYkH6U64OFgcu1nSyxwLdFErksdqN6xnMybmL++0dIlIiqhGZwNEWlN6dGB9WtglgzYHaBw7NHSIkYvXXQAn2ALjhJNx1KBeQ3T+16ZwX10/e7hbvMvBN+B7Zh1rq5sqxiDtCTbpt1p4TUzi/T7cZTuU/HaA+/IhLI2vv5eHMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbccdJZd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbccdJZd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89A0C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769115833;
	bh=duzsFSWgyT4SrctA+rQ/w0CXfcmiu4v53HArAxTtOq0=;
	h=To:Subject:From:Date:From;
	b=BbccdJZdo6qIPSFL2G+zgOFRfg+mmsgA92cttKm8ZHGJL4AZjmUNENg+0BiJMWrHn
	 Fg72NQ2gywqVFcW6EC0O4YHiX87gj0Tj7as7Nk3HsM686IgqBPoVIWsk09grLsw7lp
	 oKmfUK0Uf2posPtyeHaICy16JhZkivr3mQ1qQMDH8plQHhg754L/9iyYGJPARQqGw/
	 QHcTmN7jo+3mQNewoPm8eKV34Y+y0pVd6CX68nkBWFCzJBAWdBD3sKbO4LAku+Fgno
	 AUPfIqLlEk27eP4IqI4SKDZ1sfEW+iX4WXqsAbGLilV5C21/sGtWsI1HTEFuuuD+sI
	 JJhiTxFighjLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93607D6CFA2
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176911583358.17714.8165879675982596836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b1fa825627d16508d2de350b8cb6f4938d8cfd719af95c9f942b5de5ec934af
Date: Thu, 22 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769115833
