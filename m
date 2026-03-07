Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097751DF74F
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772927694; cv=none; b=DY9Xivt28ss5KURG8dP+ZD4e44+lEPkBTh6FWKSu1uB77fTaDXA5McQzkXUMEJqUjmxpgA4Gr6m7vGNwrYRQWGPGbIqsT6qtZwiOSolSPDZJf7aRHCH4Pc6HwP47GUDq2j/x10VcG5ZwEXCwEOcBgDPWnq3yVs/VR7c7EfVRDQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772927694; c=relaxed/simple;
	bh=COV1JxdlIVX1tTwpQQD2NiXjLDjap1AJAYjuIVgG48M=;
	h=To:Subject:From:Message-Id:Date; b=j7e3PSdqCnoSEDlG0ZhITp19Zx7d696rvL9BNs6qvsRbaFL/0w9rf/KW1KlOfn2rAx723L6QFg1pZtmYV9tyJpCzHyTGD+xGlX/eonh9cafFkJl9qU51+3A3fhm7zRJbRRRuA4hKkkB4DSOLqvX1nHUuUQKKg1rJHV24xTFYhKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkVB8OWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkVB8OWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A85E7C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772927693;
	bh=COV1JxdlIVX1tTwpQQD2NiXjLDjap1AJAYjuIVgG48M=;
	h=To:Subject:From:Date:From;
	b=gkVB8OWowKXKlioifzBvSjdB+Q3cAML1QpHlv9PUtgl1ZAV1LtBqTAPIJDmq4XsQd
	 hWVJ92CqTDbFYWjDUJ0a47gL9H9pc84wl9EjECE1Rvz1EP/iXBsRwxdi/MeRbFZb7A
	 XniZYQYOGPoozE5ifhaKN7c3olhxzM3on91z7ZbyezZRyYDvlUUr4GxW67GKfhVchH
	 PVCBZTfdi45NKf4txpgXLoP8rlxyi9nV8XEhs0ozwS2SiLmCf1A9jrorhhIYCEsq4G
	 ME6GhC/Yaq1CnYK4WhdeHi3mQf+U+0kRff8Xbg8dviQsmqq7YHwNrW4H9z92QAlU7F
	 Z6C9d43Isjlcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E47F55123
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292769358.18035.14375331203801141431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a186c6344642db5b16949035815d220a751270f7a341052ca6aaff1f2dce27dc
Date: Sat, 07 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772927693
