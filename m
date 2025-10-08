Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B6924466D
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759907994; cv=none; b=JIpd3mi0vfMRytEvZxFlABBDTadTy+Fz8EWViFv6Itrd642dIlJKI2kskRZ8poLQGqpgIa8aKh9xiRihyCTiZ7MCUr0rV+YaESY47/k1vYVsx1vUSZTzMPJwIRX9dgTh65ieC6wrpNYWjsavI5ofeC7iNGcTdBM/oxqY3zJBoFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759907994; c=relaxed/simple;
	bh=S7eIchrulJv3okRRw0tqSsTtagxF2wCj53QhtD0Sce4=;
	h=To:Subject:From:Message-Id:Date; b=Fgd9m7fszWdyIy84JEVo71MzLJA2mwq59zrh3iCqVD9PxXwX99WzYbcILHT014zOdI9TnMpIb4hTkvxn0Rc9gwykC87EJmIxQJvTZ6V48sxBbsCKw0Y2OKjJVE7fDzUxUEpBM7AWgnhZnXGaru+BKIFxd+3lP82Tgl++HRgRHRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMCw/j7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMCw/j7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBA9C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759907993;
	bh=S7eIchrulJv3okRRw0tqSsTtagxF2wCj53QhtD0Sce4=;
	h=To:Subject:From:Date:From;
	b=WMCw/j7bozjjQ+vPx+31u5fb1IJ0RDXd1RIEOuZOaBNel9ftkXzJaE8wxDEpOXrfr
	 jApWxUzVv4oKeR/AbdjXYDH4wcp2TwAvfH2X8xm3c3zkhS+0Nc+GUFk2qRD4apUs0m
	 wlHn960qlO8Tucz7nQ6JaJaKMnw09pfbUR+AjA1YWjRJEzh9z3QDktmgwkuF77Tabm
	 /IwsspW5eayrL3B6Fv6zQ+EGbkmYgMZ6N1l4lPIIXSYSX5wbgXUnVjx1xzVPINt9GW
	 iTuvIBpTF4SkTwGvGbyDLzki9Zg9IEavOnUQ4GVlw+AL+Be1odjBAFNB/Qt7nX03kZ
	 3QJ9GMQ/eHPEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F984CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175990799358.28838.5379345318281384264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7820ce976e018a3c45ddf23ee430969e36847ff32ca534aad97a861399ce5436
Date: Wed, 08 Oct 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759907993
