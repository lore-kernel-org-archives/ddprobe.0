Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AE923AB
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728279354; cv=none; b=bINUbdOK/P176a+9Syuo8KS7I8jV+sF0vx7Y2BSdSJ7HY6VfjglFmYd9Xz2uzZ7Zkv1kqT1ZtxsPbPtZNQT9SyT+c2GzEJNCtS8pt50lXigJ3nSy9XCnqEhOEefT257UBOZpYAG84JXv00ReWy75nsN9zDp6v+6cPvE13/YSggo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728279354; c=relaxed/simple;
	bh=OnjPs8jtn5C/A90vDibzfrhAdv9ah4CjrSqcTx0geVs=;
	h=To:Subject:From:Message-Id:Date; b=tzeTH6b+/8QMPG/RvktMZ+VcZlk/3A/hb73HBkXr6O6bCmOHx8rqlJxm8sbaiJchSxp+DgAyYbauT4qUQ5wm3TxjQkMr1Xo/N9p84S+RjPrm7oAhDDoBFT/HChVfaXYD33iwSRbS/kOzG8XEAabCgbZFlgIwPj5p6JeAmFGJ3Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nqokskXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nqokskXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9307C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728279353;
	bh=OnjPs8jtn5C/A90vDibzfrhAdv9ah4CjrSqcTx0geVs=;
	h=To:Subject:From:Date:From;
	b=nqokskXCvpVlrf05k6lRPAX2akGUmfx2g3Rfubl10DIRY079CbySFSoyuTidmImsw
	 wuEB0uPe7nkPLawv++JIHY2Mv+ORnRZzZ64p4wYD5ll4uC1hospZQevFs9e05v+SVl
	 MfkplUECrQzHODnTo5qNKroZNGuQQ/jOIz7nK3MP0BTPBiEsrO/6xQydeepbmYcdkf
	 KjWe39m5ruUO2NSHEbLRt0elj4Zpkkv4xRRwa8uOyw+Afi+GPaEppmjpl7ClP1XLWJ
	 MPwcOcwlkUpBouk6mhkLikC9epIvkZIYXv9QWTkDncEIPR/jUwlgbQgWo6JwkwJvKH
	 SvjEuH3jwuYeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D3BCFB442
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172827935358.12009.13619518749090669381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a67d83b01610caca251523eac3d77266f09a4424636e44a57cfba223e636bba
Date: Mon, 07 Oct 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728279353
