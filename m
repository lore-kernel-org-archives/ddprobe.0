Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5731028CF6F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782126994; cv=none; b=oX4+MoaAIoioewv0EkJjSDbrGLdU2a+yTMg25R7RL98zXfDXcaBDwEcAgzhk+c+uG+l5JuYHcIA/0XyRZAZ2kMhSE3CblmIGZBsWy9pHDuXG5IYNPBogYB2uxiVApYNcYZ7FKmeAunZLoOK9V/slILbfjzhGgaA1BO26Cm9Mpus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782126994; c=relaxed/simple;
	bh=qwingt1Jeq4/f1CKw19uHQhZ720N/QdicnhnYOzBI9o=;
	h=To:Subject:From:Message-Id:Date; b=Z1BME//MXKMKwrd13D2Hp/sO7i0COcGZG1jCoBQiByQffGF0w3+K22wjh4DbmHAY0iBrOeZ/QrusIVC7JotLtcm8o8Gml2GZoIQ5rDWLvu4VJ4EvL1PYLoXbU4YqSLQmxavN4DDiyml58U0otEIWcCCisxa+pBxt3SrLfrgdbc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n2fC09q4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n2fC09q4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E684BC2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782126993;
	bh=qwingt1Jeq4/f1CKw19uHQhZ720N/QdicnhnYOzBI9o=;
	h=To:Subject:From:Date:From;
	b=n2fC09q4Om7FPwTqNN/VYAasUlOJ5H75+xLiwMqS1ktyLiagezSrRzOjdjqD1+ieK
	 55VkFi9mvumaoQMcF0Nh2sIOUKpwcbpzcR9tk2jw49UIG9rD5B+wB4PfOo5jgk5CyB
	 lOB2tAcQj5KyBdpkwKgqzhijln9fSuY+X8IEpBDV5m55jUaTU4WWJorFvie5JXZvGD
	 de18o+UvkhL687rbLjQWpRJu1VVV29yqdG3GlDnWOG/QiR40t0jye4/9d3vfI7b9MI
	 N3tkXzG/6FTRnfNYuvLM80m/vhtltNkDZ08zPb0H9+8Gb8T5uJhndOW4tMhW+qBtSL
	 5Yg4t3Tlxb/Bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D36CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 11:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178212699373.8994.618749843344406963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09d969c2c8f9209fcd40dd7b688a4ecefba9cc61ee1aecfc9a1c1c7d28c8ec5
Date: Mon, 22 Jun 2026 11:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782126993
