Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A95518AFF
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757282994; cv=none; b=i8ynHmzBq5I+hLss0sw6TVwgxBWty5KYaPl7hiQgd1MB5pNaNm10aGQun3r0vDjG7yNs/w4B8Gf820u0nIPuV/WeDqrjab2ssuX45smBKwuu4CJ3MM1v4fFNAf0CVmUZqGlkeE6YHN8Y0MxqlAWArKzVV4mHdjTWa0yWPoRZI9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757282994; c=relaxed/simple;
	bh=7z010+Hp9JlCtbkW4ks9ZqwvdvTnZy0YP121KShJkzo=;
	h=To:Subject:From:Message-Id:Date; b=Y8etIA1mchHGCz1oVlFevntW8Qp3yCMeM2OkCigAPa8JIUFRRvoY8mbVCGdinf7fFcidO+Stb717R3K+hexELrCZiIsRgZWKCFt/AnRBO2BUE2JK5+UgQS2SoU4s578rcB7XIRpYIdUv34czMBhhA//c+wfv+OG1tQTEGlmmYI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lWrk53Nv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lWrk53Nv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AFBC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757282993;
	bh=7z010+Hp9JlCtbkW4ks9ZqwvdvTnZy0YP121KShJkzo=;
	h=To:Subject:From:Date:From;
	b=lWrk53NvqkGCpYad4A3pUl55UUMSwcfphFxlp4Gyqc2OoS6iAQfiY9Tp/jwtQf6qX
	 AFauqBNQlGlUpCjpY/9if6w8W9i3Cj62E2H89vZ5lpB/ZXLqo0OLZvLRT0WlfjWQyj
	 IU5W3HxXPlkK6yyn2kIEBIW82CjcSMFalh2lWnJYMebxH42SuhVWc/Nf7yaYNGyPr/
	 zr588rjoeILucGAkNzmgIIwDlvXR380KL3hHgLnPPmmob6WWnfDeNjcyrjBvhaJ2B3
	 x1ZnckD7iVBWQMnxcsuSz6yTAeuGleDszUypNTKzIZ/wCBvvqHdcqxAKCGloEGmLIa
	 3KZj8GbkyBsSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94570CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175728299357.27918.4367356506423521526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d6269739dd4d63afa52abba1a7e7ce61a6b061bccf9b13d15801e8b56a45d0
Date: Sun, 07 Sep 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757282993
